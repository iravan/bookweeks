import 'package:flutter/material.dart';
import 'package:bookweeks/l10n/app_localizations.dart';
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
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.event_note_outlined,
                        size: 48,
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      AppLocalizations.of(context)!.noSessionsScheduled,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      AppLocalizations.of(context)!.tapToAddSession,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: 80, // Extra space for floating action button
              ),
              itemCount: sessions.length,
              itemBuilder: (context, index) {
                final session = sessions[index];
                return _buildSessionCard(session);
              },
            ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'fab_${widget.date.year}_${widget.date.month}_${widget.date.day}',
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
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () => _openStudentsPage(session),
        borderRadius: BorderRadius.circular(12),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          leading: Container(
            width: 60,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  startTime,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
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
                    Icons.people_outline,
                    size: 16,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '$studentCount ${studentCount == 1 ? AppLocalizations.of(context)!.student(studentCount) : AppLocalizations.of(context)!.students(studentCount)}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.secondary,
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
                icon: Icon(Icons.edit, color: Theme.of(context).colorScheme.primary),
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          AppLocalizations.of(context)!.deleteSession,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Text(AppLocalizations.of(context)!.deleteSessionConfirm(session.title)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(AppLocalizations.of(context)!.cancel),
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
            child: Text(
              AppLocalizations.of(context)!.delete,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

