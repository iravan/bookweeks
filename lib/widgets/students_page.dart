import 'package:flutter/material.dart';
import 'package:bookweeks/l10n/app_localizations.dart';
import '../models/session.dart';
import '../models/student.dart';
import '../models/session_template.dart';
import '../services/session_service.dart';
import '../services/student_service.dart';
import '../services/session_template_service.dart';
import 'student_dialog.dart';
import 'template_name_dialog.dart';

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
  final SessionTemplateService _templateService = SessionTemplateService();
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
        phoneNumber: result['phoneNumber'] as String?,
      );

      await _studentService.addStudent(student);
      await _addStudentToSession(student.id);
      setState(() {}); // Refresh UI
    }
  }

  Future<void> _editStudent(Student student) async {
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => StudentDialog(existingStudent: student),
    );

    if (result != null) {
      final updatedStudent = student.copyWith(
        name: result['name'] as String,
        nickname: result['nickname'] as String?,
        age: result['age'] as int?,
        phoneNumber: result['phoneNumber'] as String?,
      );

      await _studentService.updateStudent(updatedStudent);
      setState(() {}); // Refresh UI
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

  Future<void> _saveAsTemplate() async {
    // Prompt for template name
    final templateName = await showDialog<String>(
      context: context,
      builder: (context) => TemplateNameDialog(
        defaultName: _currentSession.title,
      ),
    );

    if (templateName != null && templateName.trim().isNotEmpty) {
      // Create template from current session with all students
      final template = SessionTemplate.fromSession(
        _currentSession,
        templateName.trim(),
      );
      
      await _templateService.initialize();
      await _templateService.addTemplate(template);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.templateSavedSuccessfully(templateName.trim())),
            backgroundColor: Colors.green,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final sessionStudents = _getSessionStudents();
    final availableStudents = _getAvailableStudents();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.session.title,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              '${sessionStudents.length} ${sessionStudents.length == 1 ? AppLocalizations.of(context)!.student(sessionStudents.length) : AppLocalizations.of(context)!.students(sessionStudents.length)}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            tooltip: AppLocalizations.of(context)!.saveAsTemplateTooltip,
            onPressed: _saveAsTemplate,
          ),
        ],
      ),
      body: Column(
        children: [
          // First Section: Students joining this session
          Expanded(
            flex: availableStudents.isEmpty ? 1 : 1,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
                border: availableStudents.isNotEmpty
                    ? Border(
                        bottom: BorderSide(color: Colors.grey.withOpacity(0.2)),
                      )
                    : null,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.studentsJoiningThisSession,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.add, color: Colors.white),
                          onPressed: _addNewStudent,
                          tooltip: AppLocalizations.of(context)!.addMember,
                        ),
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
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.people_outline,
                                    size: 40,
                                    color: Theme.of(context).colorScheme.secondary.withOpacity(0.7),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  AppLocalizations.of(context)!.noStudentsAddedYet,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  AppLocalizations.of(context)!.tapToAddMember,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade500,
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
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(color: Colors.grey.shade200),
                                ),
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  title: Text(
                                    student.displayName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Text(
                                      _getStudentInfo(student),
                                      style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                                    ),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                                          shape: BoxShape.circle,
                                        ),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.edit,
                                            color: Theme.of(context).colorScheme.primary,
                                            size: 20,
                                          ),
                                          onPressed: () => _editStudent(student),
                                          tooltip: AppLocalizations.of(context)!.edit,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red.withOpacity(0.1),
                                          shape: BoxShape.circle,
                                        ),
                                        child: IconButton(
                                          icon: const Icon(
                                            Icons.remove,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                          onPressed: () => _removeStudentFromSession(student.id),
                                          tooltip: AppLocalizations.of(context)!.removeFromSession,
                                        ),
                                      ),
                                    ],
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
          // Second Section: All available students (only show if there are available students)
          if (availableStudents.isNotEmpty)
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.allMembers,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: ListView.builder(
                        itemCount: availableStudents.length,
                        itemBuilder: (context, index) {
                          final student = availableStudents[index];
                          return Card(
                            margin: const EdgeInsets.only(bottom: 8),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.grey.shade200),
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              title: Text(
                                student.displayName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  _getStudentInfo(student),
                                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                                ),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.edit,
                                        color: Theme.of(context).colorScheme.primary,
                                        size: 20,
                                      ),
                                      onPressed: () => _editStudent(student),
                                      tooltip: AppLocalizations.of(context)!.edit,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        color: Theme.of(context).colorScheme.secondary,
                                        size: 20,
                                      ),
                                      onPressed: () => _addStudentToSession(student.id),
                                      tooltip: AppLocalizations.of(context)!.addToSession,
                                    ),
                                  ),
                                ],
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
    final l10n = AppLocalizations.of(context)!;
    final parts = <String>[];
    if (student.nickname?.isNotEmpty == true && student.nickname != student.name) {
      parts.add(l10n.nameLabel(student.name));
    }
    if (student.age != null) {
      parts.add(l10n.ageLabel(student.age!));
    }
    if (student.phoneNumber != null && student.phoneNumber!.isNotEmpty) {
      parts.add(l10n.phoneLabel(student.phoneNumber!));
    }
    return parts.isEmpty ? l10n.member : parts.join(' • ');
  }
}

