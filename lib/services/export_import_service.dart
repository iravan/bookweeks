import 'dart:io';
import 'package:yaml/yaml.dart';
import 'package:path_provider/path_provider.dart';
import '../models/session.dart';
import '../models/student.dart';
import 'session_service.dart';
import 'student_service.dart';

class ExportImportService {
  final SessionService _sessionService = SessionService();
  final StudentService _studentService = StudentService();

  // Export all data to YAML format
  Future<String> exportToYaml() async {
    // Get all sessions
    final allSessions = _sessionService.getAllSessions();

    // Get all students
    final allStudents = _studentService.getAllStudents();

    // Build YAML structure
    final yamlData = <String, dynamic>{
      'version': '1.0',
      'export_date': DateTime.now().toIso8601String(),
      'sessions': allSessions.map((s) => {
        'id': s.id,
        'title': s.title,
        'start_time': s.startTime.toIso8601String(),
        'end_time': s.endTime.toIso8601String(),
        'description': s.description,
        'student_ids': s.studentIds,
      }).toList(),
      'students': allStudents.map((s) => {
        'id': s.id,
        'name': s.name,
        'nickname': s.nickname,
        'age': s.age,
        'phoneNumber': s.phoneNumber,
      }).toList(),
    };

    // Convert to YAML string
    return _mapToYaml(yamlData);
  }

  // Import data from YAML
  Future<ImportResult> importFromYaml(String yamlContent) async {
    try {
      final yamlDoc = loadYaml(yamlContent);
      if (yamlDoc is! Map) {
        return ImportResult(success: false, message: 'Invalid YAML format');
      }

      final sessionsData = yamlDoc['sessions'] as List? ?? [];
      final studentsData = yamlDoc['students'] as List? ?? [];

      int sessionsImported = 0;
      int studentsImported = 0;

      // Import students first (check for duplicates)
      for (var studentData in studentsData) {
        if (studentData is Map) {
          try {
            final studentId = studentData['id'] as String? ?? DateTime.now().millisecondsSinceEpoch.toString();
            // Check if student already exists
            if (_studentService.getStudentById(studentId) == null) {
              final student = Student(
                id: studentId,
                name: studentData['name'] as String? ?? 'Unknown',
                nickname: studentData['nickname'] as String?,
                age: studentData['age'] as int?,
                phoneNumber: studentData['phoneNumber'] as String?,
              );
              await _studentService.addStudent(student);
              studentsImported++;
            }
          } catch (e) {
            print('Error importing student: $e');
          }
        }
      }

      // Import sessions (check for duplicates by ID)
      for (var sessionData in sessionsData) {
        if (sessionData is Map) {
          try {
            final sessionId = sessionData['id'] as String? ?? DateTime.now().millisecondsSinceEpoch.toString();
            final startTime = DateTime.parse(sessionData['start_time'] as String);
            
            // Check if session already exists by checking the date
            final existingSessions = _sessionService.getSessionsForDate(startTime);
            final exists = existingSessions.any((s) => s.id == sessionId);
            
            if (!exists) {
              final session = Session(
                id: sessionId,
                title: sessionData['title'] as String? ?? 'Untitled Session',
                startTime: startTime,
                endTime: DateTime.parse(sessionData['end_time'] as String),
                description: sessionData['description'] as String?,
                studentIds: (sessionData['student_ids'] as List?)?.cast<String>() ?? [],
              );
              await _sessionService.addSession(session);
              sessionsImported++;
            }
          } catch (e) {
            print('Error importing session: $e');
          }
        }
      }

      return ImportResult(
        success: true,
        message: 'Imported $sessionsImported sessions and $studentsImported students',
        sessionsImported: sessionsImported,
        studentsImported: studentsImported,
      );
    } catch (e) {
      return ImportResult(success: false, message: 'Error parsing YAML: $e');
    }
  }


  // Convert map to YAML string
  String _mapToYaml(Map<String, dynamic> data) {
    final buffer = StringBuffer();
    _writeYamlValue(buffer, data, 0);
    return buffer.toString();
  }

  void _writeYamlValue(StringBuffer buffer, dynamic value, int indent) {
    final indentStr = '  ' * indent;
    
    if (value is Map) {
      value.forEach((key, val) {
        if (val is Map || val is List) {
          buffer.writeln('$indentStr$key:');
          _writeYamlValue(buffer, val, indent + 1);
        } else if (val is String && (val.contains('\n') || val.contains(':'))) {
          buffer.writeln('$indentStr$key: |');
          val.split('\n').forEach((line) {
            buffer.writeln('${'  ' * (indent + 1)}$line');
          });
        } else {
          buffer.writeln('$indentStr$key: ${_formatValue(val)}');
        }
      });
    } else if (value is List) {
      value.forEach((item) {
        if (item is Map) {
          buffer.writeln('$indentStr-');
          _writeYamlValue(buffer, item, indent + 1);
        } else {
          buffer.writeln('$indentStr- ${_formatValue(item)}');
        }
      });
    }
  }

  String _formatValue(dynamic value) {
    if (value == null) return 'null';
    if (value is String) return '"$value"';
    if (value is bool) return value.toString();
    if (value is num) return value.toString();
    if (value is List) {
      return '[${value.map((e) => _formatValue(e)).join(', ')}]';
    }
    return value.toString();
  }

  // Save YAML to file
  Future<File?> saveYamlToFile(String yamlContent, String fileName) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$fileName');
      await file.writeAsString(yamlContent);
      return file;
    } catch (e) {
      print('Error saving file: $e');
      return null;
    }
  }

  // Read YAML from file
  Future<String?> readYamlFromFile(File file) async {
    try {
      return await file.readAsString();
    } catch (e) {
      print('Error reading file: $e');
      return null;
    }
  }
}

class ImportResult {
  final bool success;
  final String message;
  final int sessionsImported;
  final int studentsImported;

  ImportResult({
    required this.success,
    required this.message,
    this.sessionsImported = 0,
    this.studentsImported = 0,
  });
}

