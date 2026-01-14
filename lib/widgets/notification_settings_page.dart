import 'package:flutter/material.dart';
import 'package:bookweeks/l10n/app_localizations.dart';
import '../services/notification_preferences_service.dart';
import '../services/notification_service.dart';
import '../services/session_service.dart';

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({super.key});

  @override
  State<NotificationSettingsPage> createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  final NotificationPreferencesService _prefsService =
      NotificationPreferencesService();
  final NotificationService _notificationService = NotificationService();
  final SessionService _sessionService = SessionService();
  int _selectedTimingMinutes = 5;
  bool _isLoading = true;
  bool _permissionsGranted = false;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    await _prefsService.initialize();
    await _notificationService.initialize();
    final timing = await _prefsService.getNotificationTimingMinutes();
    final permissionsGranted = await _notificationService.checkPermissions();
    setState(() {
      _selectedTimingMinutes = timing;
      _permissionsGranted = permissionsGranted;
      _isLoading = false;
    });
  }

  Future<void> _requestPermissions() async {
    final granted = await _notificationService.checkPermissions();
    setState(() {
      _permissionsGranted = granted;
    });
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            granted
                ? AppLocalizations.of(context)!.permissionsGranted
                : AppLocalizations.of(context)!.permissionsDenied,
          ),
          backgroundColor: granted ? Colors.green : Colors.orange,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  Future<void> _updateTiming(int minutes) async {
    setState(() {
      _selectedTimingMinutes = minutes;
    });
    await _prefsService.setNotificationTimingMinutes(minutes);

    // Automatically reschedule all notifications with new timing
    try {
      await _notificationService.initialize();
      final allSessions = _sessionService.getAllSessions();
      
      await _notificationService.rescheduleAllNotifications(allSessions);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!.notificationTimingUpdated,
            ),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!.errorReschedulingNotifications(e.toString()),
            ),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.notificationSettings),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 40),
        children: [
          if (!_permissionsGranted)
            Card(
              margin: const EdgeInsets.only(bottom: 16),
              color: Colors.orange.shade50,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.orange.shade700,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.permissionsRequired,
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange.shade900,
                                ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      AppLocalizations.of(context)!.permissionsRequiredDescription,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: _requestPermissions,
                        icon: const Icon(Icons.notifications_active),
                        label: Text(AppLocalizations.of(context)!.requestPermissions),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange.shade700,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.notifications_active,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        AppLocalizations.of(context)!.notificationTiming,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.of(context)!.notificationTimingDescription,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                  const SizedBox(height: 20),
                  ...NotificationPreferencesService.availableTimings.map(
                    (minutes) {
                      final l10n = AppLocalizations.of(context)!;
                      final timingText = _getTimingDisplayText(minutes, l10n);
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: RadioListTile<int>(
                          title: Text(
                            minutes == 0
                                ? l10n.atEventStart
                                : l10n.beforeEventStart(timingText),
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          value: minutes,
                          groupValue: _selectedTimingMinutes,
                          onChanged: (value) {
                            if (value != null) {
                              _updateTiming(value);
                            }
                          },
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 8,
                          ),
                          dense: false,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        AppLocalizations.of(context)!.aboutNotifications,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.of(context)!.notificationInfo,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.bug_report,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        AppLocalizations.of(context)!.testNotifications,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.of(context)!.testNotificationsDescription,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: _testNotification,
                      icon: const Icon(Icons.notifications_active),
                      label: Text(AppLocalizations.of(context)!.sendTestNotification),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Future<void> _testNotification() async {
    final l10n = AppLocalizations.of(context)!;
    await _notificationService.showTestNotification(
      testTitle: l10n.testNotificationTitle,
      testBody: l10n.testNotificationBody,
      scheduledTitle: l10n.scheduledTestNotificationTitle,
      scheduledBody: l10n.scheduledTestNotificationBody,
    );
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.testNotificationScheduled),
          backgroundColor: Colors.blue,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  String _getTimingDisplayText(int minutes, AppLocalizations l10n) {
    switch (minutes) {
      case 0:
        return l10n.timing0Min;
      case 1:
        return l10n.timing1Min;
      case 5:
        return l10n.timing5Mins;
      case 30:
        return l10n.timing30Mins;
      case 60:
        return l10n.timing1Hour;
      case 360:
        return l10n.timing6Hours;
      default:
        if (minutes < 60) {
          return l10n.timingMinutes(minutes);
        } else {
          final hours = minutes ~/ 60;
          return hours == 1 ? l10n.timingHours(hours) : l10n.timingHoursPlural(hours);
        }
    }
  }
}
