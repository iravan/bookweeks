import 'package:flutter/material.dart';
import '../models/session.dart';
import '../models/student.dart';
import '../services/session_service.dart';
import '../services/student_service.dart';
import 'student_dialog.dart';

class StudentsPage extends StatefulWidget {
  final Session session;
  final DateTime sessionDate;

  const StudentsPage({
    super.key,
    required this.session,
    required this.sessionDate,
  });

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  final SessionService _sessionService = SessionService();
  final StudentService _studentService = StudentService();
  late Session _currentSession;

  @override
  void initState() {
    super.initState();
    _currentSession = widget.session;
  }

  Future<void> _addNewStudent() async {
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => const StudentDialog(),
    );

    if (result != null) {
      final student = Student(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: result['name'] as String,
        nickname: result['nickname'] as String?,
        age: result['age'] as int?,
      );

      await _studentService.addStudent(student);
      await _addStudentToSession(student.id);
    }
  }

  Future<void> _addStudentToSession(String studentId) async {
    if (!_currentSession.studentIds.contains(studentId)) {
      final updatedSession = _currentSession.copyWith(
        studentIds: [..._currentSession.studentIds, studentId],
      );
      await _sessionService.updateSession(updatedSession, widget.sessionDate);
      setState(() {
        _currentSession = updatedSession;
      });
    }
  }

  Future<void> _removeStudentFromSession(String studentId) async {
    final updatedStudentIds = List<String>.from(_currentSession.studentIds)
      ..remove(studentId);
    final updatedSession = _currentSession.copyWith(studentIds: updatedStudentIds);
    await _sessionService.updateSession(updatedSession, widget.sessionDate);
    setState(() {
      _currentSession = updatedSession;
    });
  }

  List<Student> _getSessionStudents() {
    return _currentSession.studentIds
        .map((id) => _studentService.getStudentById(id))
        .whereType<Student>()
        .toList();
  }

  List<Student> _getAvailableStudents() {
    final sessionStudentIds = _currentSession.studentIds.toSet();
    return _studentService.getAllStudents()
        .where((student) => !sessionStudentIds.contains(student.id))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final sessionStudents = _getSessionStudents();
    final availableStudents = _getAvailableStudents();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.session.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          // First Section: Students joining this session
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.05),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.withOpacity(0.2)),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Students Joining This Session',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle),
                        color: Colors.blue,
                        onPressed: _addNewStudent,
                        tooltip: 'Add Member',
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: sessionStudents.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.people_outline,
                                  size: 48,
                                  color: Colors.grey[400],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'No students added yet',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          )
                        : ListView.builder(
                            itemCount: sessionStudents.length,
                            itemBuilder: (context, index) {
                              final student = sessionStudents[index];
                              return Card(
                                margin: const EdgeInsets.only(bottom: 8),
                                child: ListTile(
                                  title: Text(
                                    student.displayName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    _getStudentInfo(student),
                                  ),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.remove_circle, color: Colors.red),
                                    onPressed: () => _removeStudentFromSession(student.id),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ],
              ),
            ),
          ),
          // Second Section: All available students
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'All Members',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: availableStudents.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  size: 48,
                                  color: Colors.grey[400],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'No members available',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          )
                        : ListView.builder(
                            itemCount: availableStudents.length,
                            itemBuilder: (context, index) {
                              final student = availableStudents[index];
                              return Card(
                                margin: const EdgeInsets.only(bottom: 8),
                                child: ListTile(
                                  title: Text(
                                    student.displayName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(_getStudentInfo(student)),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.add_circle, color: Colors.green),
                                    onPressed: () => _addStudentToSession(student.id),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getStudentInfo(Student student) {
    final parts = <String>[];
    if (student.nickname?.isNotEmpty == true && student.nickname != student.name) {
      parts.add('Name: ${student.name}');
    }
    if (student.age != null) {
      parts.add('Age: ${student.age}');
    }
    return parts.isEmpty ? 'Member' : parts.join(' • ');
  }
}

