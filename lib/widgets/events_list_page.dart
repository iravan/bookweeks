import 'package:flutter/material.dart';
import 'package:bookweeks/l10n/app_localizations.dart';
import '../models/session.dart';
import '../services/session_service.dart';
import 'session_dialog.dart';
import 'students_page.dart';

class EventsListPage extends StatefulWidget {
  const EventsListPage({super.key});

  @override
  State<EventsListPage> createState() => _EventsListPageState();
}

class _EventsListPageState extends State<EventsListPage> {
  final SessionService _sessionService = SessionService();
  List<Session> _allSessions = [];
  List<Session> _filteredSessions = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadAllSessions();
    _searchController.addListener(_filterSessions);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _loadAllSessions() {
    final allSessions = _sessionService.getAllSessions();
    // Sort by start time
    allSessions.sort((a, b) => a.startTime.compareTo(b.startTime));
    _allSessions = allSessions;
    // Re-apply search so edit/delete/return don't clear an active query.
    _filterSessions();
  }

  void _filterSessions() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredSessions = _allSessions;
      } else {
        _filteredSessions = _allSessions.where((session) {
          return session.title.toLowerCase().contains(query) ||
              (session.description?.toLowerCase().contains(query) ?? false);
        }).toList();
      }
    });
  }

  String _formatDate(DateTime date) {
    final l10n = AppLocalizations.of(context)!;
    final days = [
      l10n.mon,
      l10n.tue,
      l10n.wed,
      l10n.thu,
      l10n.fri,
      l10n.sat,
      l10n.sun,
    ];
    final short = MaterialLocalizations.of(context).formatShortDate(date);
    return '${days[date.weekday - 1]}, $short';
  }

  String _formatTime(DateTime date) {
    return MaterialLocalizations.of(context).formatTimeOfDay(
      TimeOfDay.fromDateTime(date),
    );
  }

  Widget _timeChip(String start, String end) {
    final primary = Theme.of(context).colorScheme.primary;
    return Container(
      width: 64,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              start,
              maxLines: 1,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                height: 1.1,
                color: primary,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              end,
              maxLines: 1,
              style: TextStyle(
                fontSize: 10,
                height: 1.1,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openStudentsPage(Session session) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => StudentsPage(
          session: session,
          sessionDate: session.startTime,
        ),
      ),
    );
    _loadAllSessions();
  }

  Future<void> _editSession(Session session) async {
    final updatedSession = await showDialog<Session>(
      context: context,
      builder: (context) => SessionDialog(
        selectedDate: session.startTime,
        existingSession: session,
      ),
    );

    if (updatedSession != null) {
      await _sessionService.updateSession(updatedSession, session.startTime);
      _loadAllSessions();
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
              await _sessionService.removeSession(session.id, session.startTime);
              if (mounted) {
                Navigator.of(context).pop();
                _loadAllSessions();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.allEvents,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Search bar
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.searchEvents,
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            // Events list
            Expanded(
            child: _filteredSessions.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.event_busy_outlined,
                            size: 48,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          _searchController.text.isEmpty
                              ? AppLocalizations.of(context)!.noEventsScheduled
                              : AppLocalizations.of(context)!.noEventsFound,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        if (_searchController.text.isEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              AppLocalizations.of(context)!.createEventsFromCalendar,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    itemCount: _filteredSessions.length,
                    itemBuilder: (context, index) {
                      final session = _filteredSessions[index];
                      final studentCount = session.studentIds.length;
                      final previousSession = index > 0 ? _filteredSessions[index - 1] : null;
                      final isFirstOfDate = index == 0 ||
                          previousSession == null ||
                          previousSession.startTime.day != session.startTime.day ||
                          previousSession.startTime.month != session.startTime.month ||
                          previousSession.startTime.year != session.startTime.year;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (isFirstOfDate)
                            Padding(
                              padding: EdgeInsets.only(
                                top: index == 0 ? 0 : 16,
                                bottom: 8,
                              ),
                              child: Text(
                                _formatDate(session.startTime),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          Card(
                            margin: const EdgeInsets.only(bottom: 12),
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: InkWell(
                              onTap: () => _openStudentsPage(session),
                              borderRadius: BorderRadius.circular(12),
                              child: ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                                minLeadingWidth: 64,
                                leading: _timeChip(
                                  _formatTime(session.startTime),
                                  _formatTime(session.endTime),
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
                                        padding: const EdgeInsets.only(
                                          top: 4,
                                          bottom: 4,
                                        ),
                                        child: Text(session.description!),
                                      ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.people_outline,
                                          size: 16,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          '$studentCount ${studentCount == 1 ? AppLocalizations.of(context)!.student(studentCount) : AppLocalizations.of(context)!.students(studentCount)}',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
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
                                      icon: Icon(
                                        Icons.edit,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      onPressed: () => _editSession(session),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      onPressed: () => _deleteSession(session),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
          ),
          ],
        ),
      ),
    );
  }
}

