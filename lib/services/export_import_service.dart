import 'dart:io';
import 'package:yaml/yaml.dart';
import 'package:path_provider/path_provider.dart';
import '../models/session.dart';
import '../models/student.dart';
import '../models/session_template.dart';
import 'session_service.dart';
import 'student_service.dart';
import 'session_template_service.dart';

class ExportImportService {
  final SessionService _sessionService = SessionService();
  final StudentService _studentService = StudentService();
  final SessionTemplateService _templateService = SessionTemplateService();

  // Export all data to YAML format
  Future<String> exportToYaml() async {
    try {
      // Ensure all services are initialized
      await _sessionService.initialize();
      await _studentService.initialize();
      await _templateService.initialize();

      // Get all sessions
      final allSessions = _sessionService.getAllSessions();

      // Get all students
      final allStudents = _studentService.getAllStudents();

      // Get all templates
      final allTemplates = _templateService.getAllTemplates();

      // Build YAML structure
      final yamlData = <String, dynamic>{
        'version': '1.1', // Updated version to include templates
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
        'templates': allTemplates.map((t) => {
          'id': t.id,
          'name': t.name,
          'title': t.title,
          'start_hour': t.startHour,
          'start_minute': t.startMinute,
          'end_hour': t.endHour,
          'end_minute': t.endMinute,
          'description': t.description,
          'student_ids': t.studentIds,
          'created_at': t.createdAt.toIso8601String(),
        }).toList(),
      };

      // Convert to YAML string
      final yamlString = _mapToYaml(yamlData);
      
      if (yamlString.isEmpty) {
        throw Exception('Failed to generate YAML content');
      }
      
      return yamlString;
    } catch (e) {
      print('Error exporting to YAML: $e');
      rethrow;
    }
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
      final templatesData = yamlDoc['templates'] as List? ?? [];

      int sessionsImported = 0;
      int studentsImported = 0;
      int templatesImported = 0;

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
            
            // Parse dates with better error handling for missing timezone
            DateTime startTime;
            DateTime endTime;
            
            final startTimeStr = sessionData['start_time'] as String;
            final endTimeStr = sessionData['end_time'] as String;
            
            // Helper function to parse date string, adding timezone if missing
            DateTime parseDateTime(String dateStr) {
              // Clean the string - remove whitespace and newlines
              final cleanStr = dateStr.trim().replaceAll('\n', '').replaceAll('\r', '').replaceAll(' ', '');
              
              try {
                // Try parsing as-is first
                return DateTime.parse(cleanStr);
              } catch (e) {
                // If parsing fails, check if timezone is missing
                // Check for timezone indicators: Z, +HH:MM, -HH:MM, +HHMM, -HHMM
                final hasTimezone = cleanStr.endsWith('Z') || 
                                    RegExp(r'[+-]\d{2}:\d{2}$').hasMatch(cleanStr) ||
                                    RegExp(r'[+-]\d{4}$').hasMatch(cleanStr);
                
                if (!hasTimezone) {
                  // Add Z (UTC) if missing timezone
                  return DateTime.parse('${cleanStr}Z');
                }
                // If it has timezone but still fails, rethrow with more info
                throw FormatException('Invalid date format: $cleanStr', e);
              }
            }
            
            startTime = parseDateTime(startTimeStr);
            endTime = parseDateTime(endTimeStr);
            
            // Check if session already exists by checking the date
            final existingSessions = _sessionService.getSessionsForDate(startTime);
            final exists = existingSessions.any((s) => s.id == sessionId);
            
            if (!exists) {
              final session = Session(
                id: sessionId,
                title: sessionData['title'] as String? ?? 'Untitled Session',
                startTime: startTime,
                endTime: endTime,
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

      // Import templates (check for duplicates by ID)
      await _templateService.initialize();
      for (var templateData in templatesData) {
        if (templateData is Map) {
          try {
            final templateId = templateData['id'] as String? ?? DateTime.now().millisecondsSinceEpoch.toString();
            
            // Check if template already exists
            final existingTemplate = _templateService.getTemplateById(templateId);
            
            if (existingTemplate == null) {
              // Handle backward compatibility: if 'name' doesn't exist, use 'title' as name
              final name = templateData['name'] as String? ?? templateData['title'] as String? ?? 'Untitled Template';
              
              final template = SessionTemplate(
                id: templateId,
                name: name,
                title: templateData['title'] as String? ?? 'Untitled Session',
                startHour: templateData['start_hour'] as int? ?? 9,
                startMinute: templateData['start_minute'] as int? ?? 0,
                endHour: templateData['end_hour'] as int? ?? 10,
                endMinute: templateData['end_minute'] as int? ?? 0,
                description: templateData['description'] as String?,
                studentIds: (templateData['student_ids'] as List?)?.cast<String>() ?? [],
                createdAt: templateData['created_at'] != null
                    ? DateTime.parse(templateData['created_at'] as String)
                    : DateTime.now(),
              );
              await _templateService.addTemplate(template);
              templatesImported++;
            }
          } catch (e) {
            print('Error importing template: $e');
          }
        }
      }

      // Build success message
      final messageParts = <String>[];
      if (sessionsImported > 0) {
        messageParts.add('$sessionsImported ${sessionsImported == 1 ? 'session' : 'sessions'}');
      }
      if (studentsImported > 0) {
        messageParts.add('$studentsImported ${studentsImported == 1 ? 'student' : 'students'}');
      }
      if (templatesImported > 0) {
        messageParts.add('$templatesImported ${templatesImported == 1 ? 'template' : 'templates'}');
      }
      
      final message = messageParts.isEmpty
          ? 'No new data to import'
          : 'Imported ${messageParts.join(', ')}';

      return ImportResult(
        success: true,
        message: message,
        sessionsImported: sessionsImported,
        studentsImported: studentsImported,
        templatesImported: templatesImported,
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
  final int templatesImported;

  ImportResult({
    required this.success,
    required this.message,
    this.sessionsImported = 0,
    this.studentsImported = 0,
    this.templatesImported = 0,
  });
}

