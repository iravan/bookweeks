import 'package:shared_preferences/shared_preferences.dart';

class NotificationPreferencesService {
  static final NotificationPreferencesService _instance =
      NotificationPreferencesService._internal();
  factory NotificationPreferencesService() => _instance;
  NotificationPreferencesService._internal();

  static const String _notificationTimingKey = 'notification_timing_minutes';
  static const String _notificationsEnabledKey = 'notifications_enabled';
  static const int _defaultTimingMinutes = 5; // Default: 5 minutes before
  static const bool _defaultNotificationsEnabled = true; // Default: notifications enabled

  // Available notification timing options in minutes
  static const List<int> availableTimings = [0, 1, 5, 30, 60, 360]; // 0 min, 1 min, 5 mins, 30 mins, 1 hour, 6 hours

  Future<void> initialize() async {
    // Ensure default values are set
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(_notificationTimingKey)) {
      await prefs.setInt(_notificationTimingKey, _defaultTimingMinutes);
    }
    if (!prefs.containsKey(_notificationsEnabledKey)) {
      await prefs.setBool(_notificationsEnabledKey, _defaultNotificationsEnabled);
    }
  }

  Future<int> getNotificationTimingMinutes() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_notificationTimingKey) ?? _defaultTimingMinutes;
  }

  Future<void> setNotificationTimingMinutes(int minutes) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_notificationTimingKey, minutes);
  }

  Future<bool> areNotificationsEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_notificationsEnabledKey) ?? _defaultNotificationsEnabled;
  }

  Future<void> setNotificationsEnabled(bool enabled) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_notificationsEnabledKey, enabled);
  }

  String getTimingDisplayText(int minutes) {
    if (minutes == 0) return '0 min';
    if (minutes < 60) return '$minutes mins';
    final hours = minutes ~/ 60;
    return '$hours hour${hours > 1 ? 's' : ''}';
  }
}
