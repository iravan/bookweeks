import 'package:flutter/material.dart';
import '../models/session.dart';
import '../services/session_service.dart';
import 'session_dialog.dart';
import 'students_page.dart';

class DayTabView extends StatefulWidget {
  final DateTime date;
  final VoidCallback? onSessionChanged;

  const DayTabView({
    super.key,
    required this.date,
    this.onSessionChanged,
  });

  @override
  State<DayTabView> createState() => _DayTabViewState();
}

class _DayTabViewState extends State<DayTabView> {
  final SessionService _sessionService = SessionService();

  @override
  Widget build(BuildContext context) {
    final sessions = _sessionService.getSessionsForDate(widget.date);

    return Scaffold(
      body: sessions.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.event_note,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No sessions scheduled',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: sessions.length,
              itemBuilder: (context, index) {
                final session = sessions[index];
                return _buildSessionCard(session);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddSessionDialog(),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSessionCard(Session session) {
    final startTime = '${session.startTime.hour.toString().padLeft(2, '0')}:${session.startTime.minute.toString().padLeft(2, '0')}';
    final endTime = '${session.endTime.hour.toString().padLeft(2, '0')}:${session.endTime.minute.toString().padLeft(2, '0')}';
    final studentCount = session.studentIds.length;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: InkWell(
        onTap: () => _openStudentsPage(session),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          leading: Container(
            width: 60,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  startTime,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  endTime,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          title: Text(
            session.title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (session.description != null)
                Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  child: Text(session.description!),
                ),
              Row(
                children: [
                  Icon(
                    Icons.people,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '$studentCount ${studentCount == 1 ? 'student' : 'students'}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.blue),
                onPressed: () => _editSession(session),
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => _deleteSession(session),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _openStudentsPage(Session session) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => StudentsPage(
          session: session,
          sessionDate: widget.date,
        ),
      ),
    );
    // Refresh when returning from students page
    if (mounted) {
      setState(() {});
      widget.onSessionChanged?.call();
    }
  }

  Future<void> _showAddSessionDialog() async {
    final session = await showDialog<Session>(
      context: context,
      builder: (context) => SessionDialog(selectedDate: widget.date),
    );

    if (session != null) {
      await _sessionService.addSession(session);
      if (mounted) {
        setState(() {});
        widget.onSessionChanged?.call();
      }
    }
  }

  Future<void> _editSession(Session session) async {
    final updatedSession = await showDialog<Session>(
      context: context,
      builder: (context) => SessionDialog(
        selectedDate: widget.date,
        existingSession: session,
      ),
    );

    if (updatedSession != null) {
      await _sessionService.updateSession(updatedSession, widget.date);
      if (mounted) {
        setState(() {});
        widget.onSessionChanged?.call();
      }
    }
  }

  void _deleteSession(Session session) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Session'),
        content: Text('Are you sure you want to delete "${session.title}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              await _sessionService.removeSession(session.id, widget.date);
              if (mounted) {
                setState(() {});
                Navigator.of(context).pop();
                widget.onSessionChanged?.call();
              }
            },
            child: const Text(
              'Delete',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

