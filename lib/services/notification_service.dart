import 'dart:io' show Platform;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:audioplayers/audioplayers.dart';
import '../models/session.dart';
import 'notification_preferences_service.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();
  final NotificationPreferencesService _prefsService =
      NotificationPreferencesService();
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isInitialized = false;
  Function(String title, String body)? _foregroundNotificationHandler;

  // Custom notification sound file name
  // For iOS: Place sound file in ios/Runner/ directory (e.g., "notification_sound.caf" or "notification_sound.aiff")
  // For Android: Place sound file in android/app/src/main/res/raw/ directory (e.g., "notification_sound.mp3")
  // Set to null to use system default sound
  String? _customSoundFileName;

  // Track scheduled notifications to prevent duplicates
  final Set<int> _scheduledNotificationIds = {};
  final Map<int, DateTime> _scheduledNotificationTimes = {};

  // Localization function for notification body text
  // This should be set from the app initialization
  String Function(String time)? _startsAtLocalizer;

  Future<void> initialize() async {
    if (_isInitialized) return;

    // Initialize timezone database
    tz.initializeTimeZones();

    // Set local timezone based on device's timezone offset
    // Get the system timezone offset and map it to a timezone name
    try {
      final now = DateTime.now();
      final offset = now.timeZoneOffset;
      final offsetHours = offset.inHours;

      // Map common offsets to timezone names
      // This is a simplified mapping - for production, consider using a package
      // that can detect the actual timezone name (like flutter_native_timezone)
      String timezoneName;
      switch (offsetHours) {
        case 8:
          timezoneName =
              'Asia/Shanghai'; // UTC+8 (China, Hong Kong, Taiwan, etc.)
          break;
        case 9:
          timezoneName = 'Asia/Tokyo'; // UTC+9
          break;
        case -5:
          timezoneName = 'America/New_York'; // UTC-5
          break;
        case -8:
          timezoneName = 'America/Los_Angeles'; // UTC-8
          break;
        case 0:
          timezoneName = 'UTC';
          break;
        default:
          // For other offsets, try to find a matching timezone
          // This is a fallback - ideally use a timezone detection package
          timezoneName = 'UTC';
          print('NotificationService: Unknown offset $offsetHours, using UTC');
      }

      final location = tz.getLocation(timezoneName);
      tz.setLocalLocation(location);
      print(
        'NotificationService: Set timezone to $timezoneName (offset: UTC$offsetHours)',
      );
    } catch (e) {
      // If we can't set the timezone, tz.local should default to system timezone
      // But as fallback, use UTC
      print('NotificationService: Error setting timezone: $e');
      try {
        tz.setLocalLocation(tz.getLocation('UTC'));
      } catch (_) {
        // If even UTC fails, just continue - tz.local should have a default
      }
    }

    // Initialize notification preferences
    await _prefsService.initialize();

    // Android initialization settings
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );

    // iOS initialization settings
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    // Initialization settings
    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    // Initialize the plugin with foreground notification handler
    final initialized = await _notifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    if (initialized == false) {
      _isInitialized = true;
      return;
    }

    // Request permissions for Android 13+
    await _notifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.requestNotificationsPermission();

    // Request permissions for iOS
    final iosImplementation = _notifications
        .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin
        >();
    if (iosImplementation != null) {
      await iosImplementation.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
    }

    _isInitialized = true;
  }

  void _onNotificationTapped(NotificationResponse response) {
    // Handle notification tap if needed
    print(
      'NotificationService: Notification tapped: ${response.id} - ${response.payload}',
    );
  }

  // Set handler for foreground notifications
  void setForegroundNotificationHandler(
    Function(String title, String body) handler,
  ) {
    _foregroundNotificationHandler = handler;
  }

  // Set custom notification sound file name
  //
  // IMPORTANT: Provide filename WITH extension (e.g., "notification_sound.caf")
  // The code will automatically handle platform differences:
  // - iOS: Uses the full filename with extension as-is
  // - Android: Automatically strips the extension (e.g., "notification_sound.caf" -> "notification_sound")
  //
  // File setup requirements:
  // - iOS: Add file to ios/Runner/ and include in "Copy Bundle Resources" in Xcode
  //   Supported formats: .caf, .aiff, .wav, .mp3
  // - Android: Place file in android/app/src/main/res/raw/
  //   Supported formats: .mp3, .ogg, .wav
  //
  // Example:
  // - iOS file: ios/Runner/notification_sound.caf
  // - Android file: android/app/src/main/res/raw/notification_sound.mp3
  // - Code: setCustomSoundFileName('notification_sound.caf')
  //
  // IMPORTANT: After setting custom sound, existing scheduled notifications will
  // still use the old sound. Call rescheduleAllNotifications() to update them.
  //
  // Set to null to use system default sound
  void setCustomSoundFileName(String? fileName) {
    _customSoundFileName = fileName;
    print('NotificationService: ==========================================');
    print('NotificationService: Custom sound file set to: $fileName');
    if (fileName != null) {
      final androidName = fileName.split('.').first;
      print('NotificationService: iOS will use: $fileName');
      print('NotificationService: Android will use: $androidName');
      print('NotificationService: Make sure:');
      print(
        'NotificationService:   - iOS file exists at: ios/Runner/$fileName',
      );
      print(
        'NotificationService:   - Android file exists at: android/app/src/main/res/raw/$androidName.mp3 (or .ogg, .wav)',
      );
      print(
        'NotificationService:   - iOS file is added to "Copy Bundle Resources" in Xcode',
      );
      print(
        'NotificationService: See CUSTOM_NOTIFICATION_SOUND.md for setup instructions',
      );
      print(
        'NotificationService: NOTE: Existing scheduled notifications need to be rescheduled',
      );
      print(
        'NotificationService: Call rescheduleAllNotifications() after setting custom sound',
      );
    } else {
      print('NotificationService: Using system default notification sound');
    }
    print('NotificationService: ==========================================');
  }

  // Get current custom sound file name
  String? getCustomSoundFileName() => _customSoundFileName;

  // Show foreground notification banner with sound
  Future<void> showForegroundNotification(String title, String body) async {
    // On iOS, play sound file directly for foreground notifications
    // iOS doesn't reliably play notification sounds when app is in foreground
    if (Platform.isIOS && _customSoundFileName != null) {
      await _playSoundFileDirectlyForForeground(_customSoundFileName!);
    } else {
      // For Android or when using default sound, use notification sound
      await _playNotificationSound(title, body);
    }

    // Show foreground notification banner
    if (_foregroundNotificationHandler != null) {
      _foregroundNotificationHandler!(title, body);
    }
  }

  // Play notification sound using the notification plugin
  Future<void> _playNotificationSound(String title, String body) async {
    try {
      // Create a silent/minimal notification that plays sound
      // This approach shows the notification briefly to trigger sound, then hides it
      // Configure Android notification channel for sound
      // For Android, remove file extension from sound filename
      String? androidSoundName;
      if (_customSoundFileName != null) {
        // Remove extension for Android (e.g., "notification_sound.caf" -> "notification_sound")
        androidSoundName = _customSoundFileName!.split('.').first;
      }

      final androidDetails = AndroidNotificationDetails(
        'session_notifications',
        'Session Notifications',
        channelDescription: 'Notifications for upcoming sessions',
        importance: Importance.high,
        priority: Priority.high,
        playSound: true,
        enableVibration: true,
        onlyAlertOnce: false,
        channelShowBadge: false,
        showWhen: false,
        sound: androidSoundName != null
            ? RawResourceAndroidNotificationSound(androidSoundName)
            : null, // Use custom sound or system default
      );

      // Configure iOS notification for sound
      // On iOS, foreground notifications need presentAlert: true for sound
      // iOS requires filename WITH extension (e.g., "notification_sound.caf")
      final iosDetails = DarwinNotificationDetails(
        presentAlert:
            true, // Required for sound to play on iOS, even in foreground
        presentBadge: false,
        presentSound: true, // Enable sound
        sound:
            _customSoundFileName, // Custom sound file name (with extension) or null for system default
      );

      final notificationDetails = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      // Use a unique ID to avoid conflicts
      final notificationId = DateTime.now().millisecondsSinceEpoch % 1000000;

      // Log sound configuration BEFORE showing notification
      print(
        'NotificationService: Playing notification sound for foreground notification',
      );
      print(
        'NotificationService: Sound config - Android: ${androidSoundName ?? "default"}, iOS: ${_customSoundFileName ?? "default"}',
      );
      print('NotificationService: Notification ID: $notificationId');

      // Show notification with sound
      // The notification will play sound and show briefly
      await _notifications.show(
        notificationId,
        title,
        body,
        notificationDetails,
      );

      print('NotificationService: Sound notification displayed');
      print(
        'NotificationService: Sound config - Android: ${androidSoundName ?? "default"}, iOS: ${_customSoundFileName ?? "default"}',
      );

      // On iOS, foreground notifications may not play sound reliably
      // iOS limitation: Custom notification sounds may not play when app is in foreground
      // The notification must stay visible longer for sound to play
      // Don't cancel immediately - let iOS play the sound
      // Cancel after 4 seconds to avoid cluttering notification center
      Future.delayed(const Duration(milliseconds: 4000), () async {
        try {
          await _notifications.cancel(notificationId);
          print(
            'NotificationService: Canceled sound notification after playback (4 seconds)',
          );
        } catch (e) {
          print('NotificationService: Error canceling sound notification: $e');
        }
      });

      // IMPORTANT: On iOS, if the sound file is not found or not properly added to the bundle,
      // the notification will show but no sound will play. Check:
      // 1. File exists at ios/Runner/notification_sound.caf
      // 2. File is added to "Copy Bundle Resources" in Xcode Build Phases
      // 3. File name matches exactly (case-sensitive)
      print('NotificationService: NOTE: If no sound plays on iOS foreground:');
      print(
        'NotificationService:   - Verify sound file is in ios/Runner/ and Xcode Build Phases',
      );
      print(
        'NotificationService:   - iOS may not play custom sounds in foreground reliably',
      );
      print(
        'NotificationService:   - Try backgrounding the app to test if sound works',
      );
    } catch (e) {
      print('NotificationService: Could not play notification sound: $e');
      // Continue even if sound fails - visual notification will still show
    }
  }

  // Play sound file directly for iOS foreground notifications
  // This bypasses iOS limitation of not playing notification sounds in foreground
  Future<void> _playSoundFileDirectlyForForeground(String fileName) async {
    print('NotificationService: ==========================================');
    print('NotificationService: Playing sound directly for iOS foreground');
    print('NotificationService: Sound file name: $fileName');

    try {
      // On iOS, we need to access the sound file from the app bundle
      // The file should be in assets/sounds/ directory (added to pubspec.yaml)
      // AssetSource expects path relative to assets/ folder
      final soundName = fileName.split('.').first; // Remove extension
      final assetPath = 'sounds/$soundName';

      print(
        'NotificationService: Attempting to play sound from assets: $assetPath',
      );
      print('NotificationService: Full asset path: assets/$assetPath');

      // Try without extension first
      try {
        await _audioPlayer.play(AssetSource(assetPath));
        print(
          'NotificationService: ✓ Successfully played sound from assets (no extension)',
        );
        print(
          'NotificationService: ==========================================',
        );
        return;
      } catch (e1) {
        print('NotificationService: Failed with no extension: $e1');
      }

      // Try with extension
      try {
        final assetPathWithExt = 'sounds/$soundName.caf';
        await _audioPlayer.play(AssetSource(assetPathWithExt));
        print(
          'NotificationService: ✓ Successfully played sound from assets (with extension)',
        );
        print(
          'NotificationService: ==========================================',
        );
        return;
      } catch (e2) {
        print('NotificationService: Failed with extension: $e2');
      }

      // Try with full filename
      try {
        final assetPathFull = 'sounds/$fileName';
        await _audioPlayer.play(AssetSource(assetPathFull));
        print(
          'NotificationService: ✓ Successfully played sound from assets (full filename)',
        );
        print(
          'NotificationService: ==========================================',
        );
        return;
      } catch (e3) {
        print('NotificationService: Failed with full filename: $e3');
      }

      throw Exception('All asset paths failed');
    } catch (e) {
      print('NotificationService: ✗ Could not play sound from assets: $e');
      print('NotificationService: Error details: ${e.toString()}');
      print('NotificationService: Make sure:');
      print(
        'NotificationService:   1. notification_sound.caf is in assets/sounds/ directory',
      );
      print(
        'NotificationService:   2. assets/sounds/ is listed in pubspec.yaml',
      );
      print(
        'NotificationService:   3. App has been rebuilt after adding asset',
      );
      print('NotificationService: Falling back to notification sound method');
      print('NotificationService: ==========================================');

      // Fallback: Use notification sound method (may not work in foreground)
      try {
        await _playNotificationSound('', '');
      } catch (e2) {
        print('NotificationService: Fallback also failed: $e2');
      }
    }
  }

  Future<bool> checkPermissions() async {
    if (!_isInitialized) {
      await initialize();
    }

    // Request iOS permissions
    final iosImplementation = _notifications
        .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin
        >();
    if (iosImplementation != null) {
      final result = await iosImplementation.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
      return result ?? false;
    }

    // Request Android permissions
    final androidImplementation = _notifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    if (androidImplementation != null) {
      final granted = await androidImplementation
          .requestNotificationsPermission();
      return granted ?? false;
    }

    return true; // Default to true for other platforms
  }

  Future<void> scheduleSessionNotification(
    Session session, {
    String Function(String time)? startsAtLocalizer,
  }) async {
    if (!_isInitialized) {
      await initialize();
    }

    // Check if notifications are enabled
    final notificationsEnabled = await _prefsService.areNotificationsEnabled();
    if (!notificationsEnabled) {
      print(
        'NotificationService: Notifications are disabled, skipping scheduling',
      );
      return;
    }

    // Ensure permissions are granted
    final hasPermissions = await checkPermissions();
    if (!hasPermissions) {
      print(
        'NotificationService: Permissions not granted, cannot schedule notification',
      );
      return;
    }

    final timingMinutes = await _prefsService.getNotificationTimingMinutes();
    final notificationTime = session.startTime.subtract(
      Duration(minutes: timingMinutes),
    );

    // Don't schedule if notification time is in the past
    if (notificationTime.isBefore(DateTime.now())) {
      print(
        'NotificationService: Notification time is in the past, skipping: $notificationTime',
      );
      return;
    }

    // Cancel any existing notification for this session first
    // This ensures no duplicate notifications
    final notificationId = session.id.hashCode;

    // Check if this notification is already scheduled
    if (_scheduledNotificationIds.contains(notificationId)) {
      final existingTime = _scheduledNotificationTimes[notificationId];
      if (existingTime != null) {
        final scheduledDateTime = DateTime(
          notificationTime.year,
          notificationTime.month,
          notificationTime.day,
          notificationTime.hour,
          notificationTime.minute,
          notificationTime.second,
        );
        final timeDiff = (scheduledDateTime.difference(existingTime).inSeconds)
            .abs();
        // If the time is very close (within 1 second), skip rescheduling to avoid duplicates
        if (timeDiff < 1) {
          print(
            'NotificationService: Notification already scheduled for this time, skipping duplicate',
          );
          return;
        }
      }
    }

    await cancelSessionNotification(session.id);

    // Store the scheduled time for tracking
    final scheduledDateTime = DateTime(
      notificationTime.year,
      notificationTime.month,
      notificationTime.day,
      notificationTime.hour,
      notificationTime.minute,
      notificationTime.second,
    );

    // Android notification details
    // For Android, remove file extension from sound filename
    String? androidSoundName;
    if (_customSoundFileName != null) {
      // Remove extension for Android (e.g., "notification_sound.caf" -> "notification_sound")
      androidSoundName = _customSoundFileName!.split('.').first;
    }

    final androidDetails = AndroidNotificationDetails(
      'session_notifications',
      'Session Notifications',
      channelDescription: 'Notifications for upcoming sessions',
      importance: Importance.high,
      priority: Priority.high,
      showWhen: true,
      sound: androidSoundName != null
          ? RawResourceAndroidNotificationSound(androidSoundName)
          : null, // Use custom sound or system default
    );

    // iOS notification details
    // iOS requires filename WITH extension (e.g., "notification_sound.caf")
    final iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      sound:
          _customSoundFileName, // Custom sound file name (with extension) or null for system default
    );

    // Notification details
    final notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    // Log sound configuration for debugging
    print('NotificationService: Scheduling notification with sound:');
    print('NotificationService:   Android: ${androidSoundName ?? "default"}');
    print('NotificationService:   iOS: ${_customSoundFileName ?? "default"}');

    // Convert DateTime to TZDateTime in local timezone
    // notificationTime is a local DateTime, so we create TZDateTime from its components
    // This ensures the time is interpreted correctly in the local timezone
    final scheduledDate = tz.TZDateTime(
      tz.local,
      notificationTime.year,
      notificationTime.month,
      notificationTime.day,
      notificationTime.hour,
      notificationTime.minute,
      notificationTime.second,
    );

    print(
      'NotificationService: Scheduling notification for session "${session.title}"',
    );
    print('NotificationService: Session starts at: ${session.startTime}');
    print('NotificationService: Notification will fire at: $notificationTime');
    print('NotificationService: Scheduled date (TZDateTime): $scheduledDate');
    print(
      'NotificationService: Scheduled date (ISO): ${scheduledDate.toIso8601String()}',
    );
    print('NotificationService: Current time: ${DateTime.now()}');
    print('NotificationService: Sound configuration:');
    print('NotificationService:   - Custom sound file: $_customSoundFileName');
    print(
      'NotificationService:   - Android sound: ${androidSoundName ?? "default"}',
    );
    print(
      'NotificationService:   - iOS sound: ${_customSoundFileName ?? "default"}',
    );
    print(
      'NotificationService: Current TZDateTime: ${tz.TZDateTime.now(tz.local)}',
    );
    print(
      'NotificationService: Time until notification: ${scheduledDate.difference(tz.TZDateTime.now(tz.local))}',
    );

    try {
      // Use provided localizer or fall back to stored one
      final localizer = startsAtLocalizer ?? _startsAtLocalizer;
      
      // Schedule the notification
      await _notifications.zonedSchedule(
        notificationId, // Use hash code as notification ID
        session.title,
        _getNotificationBody(session, localizer),
        scheduledDate,
        notificationDetails,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        payload: session.id, // Store session ID in payload
      );

      // Track this scheduled notification
      _scheduledNotificationIds.add(notificationId);
      _scheduledNotificationTimes[notificationId] = scheduledDateTime;

      print(
        'NotificationService: Successfully scheduled notification (ID: $notificationId) at $scheduledDateTime',
      );

      // For foreground notifications, we need to manually check and show
      // Set up a check to show foreground notification when time comes
      _setupForegroundNotificationCheck(session, scheduledDate, notificationId);
    } catch (e) {
      print('NotificationService: Error scheduling notification: $e');
      rethrow;
    }
  }

  /// Sets the localization function for notification body text
  /// This should be called during app initialization with the localized startsAt function
  void setLocalizationFunction(String Function(String time) startsAtLocalizer) {
    _startsAtLocalizer = startsAtLocalizer;
  }

  String _getNotificationBody(
    Session session, [
    String Function(String time)? localizer,
  ]) {
    final startTime =
        '${session.startTime.hour.toString().padLeft(2, '0')}:${session.startTime.minute.toString().padLeft(2, '0')}';
    if (session.description != null && session.description!.isNotEmpty) {
      return '$startTime - ${session.description}';
    }
    // Use provided localizer, stored localizer, or fall back to English
    final effectiveLocalizer = localizer ?? _startsAtLocalizer;
    if (effectiveLocalizer != null) {
      return effectiveLocalizer(startTime);
    }
    return 'Starts at $startTime';
  }

  Future<void> cancelSessionNotification(String sessionId) async {
    if (!_isInitialized) {
      await initialize();
    }
    final notificationId = sessionId.hashCode;
    await _notifications.cancel(notificationId);
    // Remove from tracking
    _scheduledNotificationIds.remove(notificationId);
    _scheduledNotificationTimes.remove(notificationId);
  }

  Future<void> cancelAllNotifications() async {
    if (!_isInitialized) {
      await initialize();
    }
    await _notifications.cancelAll();
    // Clear tracking
    _scheduledNotificationIds.clear();
    _scheduledNotificationTimes.clear();
  }

  Future<void> rescheduleAllNotifications(
    List<Session> sessions, {
    String Function(String time)? startsAtLocalizer,
  }) async {
    if (!_isInitialized) {
      await initialize();
    }

    // Check if notifications are enabled
    final notificationsEnabled = await _prefsService.areNotificationsEnabled();
    if (!notificationsEnabled) {
      print(
        'NotificationService: Notifications are disabled, canceling all notifications',
      );
      await cancelAllNotifications();
      return;
    }

    // Cancel all existing notifications
    await cancelAllNotifications();

    // Schedule notifications for all future sessions
    final now = DateTime.now();
    int scheduledCount = 0;
    for (final session in sessions) {
      if (session.startTime.isAfter(now)) {
        try {
          await scheduleSessionNotification(
            session,
            startsAtLocalizer: startsAtLocalizer,
          );
          scheduledCount++;
        } catch (e) {
          print(
            'NotificationService: Failed to schedule notification for session "${session.title}": $e',
          );
        }
      }
    }
    print('NotificationService: Rescheduled $scheduledCount notifications');
  }

  // Test method to show an immediate notification (for debugging)
  // Accepts optional localized strings for title and body
  Future<void> showTestNotification({
    String? testTitle,
    String? testBody,
    String? scheduledTitle,
    String? scheduledBody,
  }) async {
    if (!_isInitialized) {
      await initialize();
    }

    final hasPermissions = await checkPermissions();
    if (!hasPermissions) {
      print(
        'NotificationService: Permissions not granted for test notification',
      );
      return;
    }

    // For Android, remove file extension from sound filename
    String? androidSoundName;
    if (_customSoundFileName != null) {
      // Remove extension for Android (e.g., "notification_sound.caf" -> "notification_sound")
      androidSoundName = _customSoundFileName!.split('.').first;
    }

    final androidDetails = AndroidNotificationDetails(
      'session_notifications',
      'Session Notifications',
      channelDescription: 'Notifications for upcoming sessions',
      importance: Importance.high,
      priority: Priority.high,
      showWhen: true,
      sound: androidSoundName != null
          ? RawResourceAndroidNotificationSound(androidSoundName)
          : null, // Use custom sound or system default
    );

    // iOS requires filename WITH extension (e.g., "notification_sound.caf")
    final iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      sound:
          _customSoundFileName, // Custom sound file name (with extension) or null for system default
    );

    final notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    print('NotificationService: ==========================================');
    print('NotificationService: Showing test notification');
    print('NotificationService: Current time: ${DateTime.now()}');
    print('NotificationService: Permissions granted: $hasPermissions');
    print('NotificationService: Custom sound file: $_customSoundFileName');
    if (_customSoundFileName != null) {
      print('NotificationService: Android sound: $androidSoundName');
      print('NotificationService: iOS sound: $_customSoundFileName');
    } else {
      print('NotificationService: Using system default sound');
    }
    print('NotificationService: ==========================================');

    // Use provided localized strings or fallback to English
    final title = testTitle ?? 'Test Notification';
    final body = testBody ?? 'If you see this, notifications are working!';
    final schedTitle = scheduledTitle ?? 'Scheduled Test Notification';
    final schedBody = scheduledBody ?? 'This was scheduled 2 seconds ago';

    try {
      // Show foreground notification banner immediately (this will play sound)
      await showForegroundNotification(title, body);

      // Also show system notification (works even in foreground)
      await _notifications.show(
        999999, // Test notification ID
        title,
        body,
        notificationDetails,
      );

      print('NotificationService: Immediate test notification shown');
      print(
        'NotificationService: Sound should have played - check device volume',
      );
      print('NotificationService: If no sound, verify:');
      print('NotificationService:   1. Device volume is up');
      print('NotificationService:   2. Do Not Disturb is off');
      print('NotificationService:   3. Sound files are in correct locations');
      print(
        'NotificationService:   4. iOS: Settings > [App] > Notifications > Sounds is ON',
      );
      print(
        'NotificationService: Sound should have played - check device volume',
      );

      // Also schedule one for 2 seconds later (to test scheduled notifications)
      final now = tz.TZDateTime.now(tz.local);
      final scheduledDate = now.add(const Duration(seconds: 2));

      print('NotificationService: Scheduling test notification for 2 seconds');
      print('NotificationService: Current TZDateTime: $now');
      print('NotificationService: Scheduled TZDateTime: $scheduledDate');
      print(
        'NotificationService: Scheduled ISO: ${scheduledDate.toIso8601String()}',
      );
      print(
        'NotificationService: Time until notification: ${scheduledDate.difference(now)}',
      );

      await _notifications.zonedSchedule(
        999998, // Different ID for scheduled test
        schedTitle,
        schedBody,
        scheduledDate,
        notificationDetails,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        payload: 'test',
      );

      // Set up foreground notification check for scheduled test
      _setupForegroundNotificationCheckForTest(
        scheduledDate,
        schedTitle,
        schedBody,
      );

      print(
        'NotificationService: Test notifications shown (immediate) and scheduled (2 seconds)',
      );
      print(
        'NotificationService: Note: On iOS, scheduled notifications may not show if app is in foreground',
      );
      print(
        'NotificationService: Try backgrounding the app or locking the device to see scheduled notifications',
      );
    } catch (e) {
      print('NotificationService: Error showing test notification: $e');
      rethrow;
    }
  }

  // Get pending notifications (for debugging)
  Future<List<PendingNotificationRequest>> getPendingNotifications() async {
    if (!_isInitialized) {
      await initialize();
    }
    return await _notifications.pendingNotificationRequests();
  }

  // Set up foreground notification check for scheduled notifications
  void _setupForegroundNotificationCheck(
    Session session,
    tz.TZDateTime scheduledDate,
    int notificationId,
  ) {
    final now = DateTime.now();
    final scheduledDateTime = DateTime(
      scheduledDate.year,
      scheduledDate.month,
      scheduledDate.day,
      scheduledDate.hour,
      scheduledDate.minute,
      scheduledDate.second,
    );

    if (scheduledDateTime.isAfter(now)) {
      final duration = scheduledDateTime.difference(now);
      Future.delayed(duration, () async {
        // Check if this notification is still scheduled (not canceled)
        if (!_scheduledNotificationIds.contains(notificationId)) {
          print(
            'NotificationService: Notification $notificationId was canceled, skipping foreground check',
          );
          return;
        }

        // Check if notification time has arrived
        final currentTime = DateTime.now();
        final expectedTime = _scheduledNotificationTimes[notificationId];

        if (expectedTime != null &&
            currentTime.isAfter(
              expectedTime.subtract(const Duration(seconds: 1)),
            ) &&
            currentTime.isBefore(
              expectedTime.add(const Duration(seconds: 5)),
            )) {
          // Remove from tracking to prevent duplicate foreground notifications
          _scheduledNotificationIds.remove(notificationId);
          _scheduledNotificationTimes.remove(notificationId);

          // Show foreground notification
          await showForegroundNotification(
            session.title,
            _getNotificationBody(session, _startsAtLocalizer),
          );

          print(
            'NotificationService: Foreground notification shown for session "${session.title}"',
          );
        } else {
          print(
            'NotificationService: Notification time mismatch, skipping foreground check',
          );
        }
      });
    }
  }

  // Set up foreground notification check for test notification
  void _setupForegroundNotificationCheckForTest(
    tz.TZDateTime scheduledDate,
    String title,
    String body,
  ) {
    final now = DateTime.now();
    final scheduledDateTime = DateTime(
      scheduledDate.year,
      scheduledDate.month,
      scheduledDate.day,
      scheduledDate.hour,
      scheduledDate.minute,
      scheduledDate.second,
    );

    if (scheduledDateTime.isAfter(now)) {
      final duration = scheduledDateTime.difference(now);
      final testNotificationId = 999998; // Test notification ID

      // Track test notification
      _scheduledNotificationIds.add(testNotificationId);
      _scheduledNotificationTimes[testNotificationId] = scheduledDateTime;

      Future.delayed(duration, () async {
        // Check if still scheduled (not canceled)
        if (_scheduledNotificationIds.contains(testNotificationId)) {
          _scheduledNotificationIds.remove(testNotificationId);
          _scheduledNotificationTimes.remove(testNotificationId);

          // Show foreground notification for test with sound
          await showForegroundNotification(title, body);
        }
      });
    }
  }

  // Check if a notification is already scheduled for a session
  bool isNotificationScheduled(String sessionId) {
    final notificationId = sessionId.hashCode;
    return _scheduledNotificationIds.contains(notificationId);
  }

  // Get count of scheduled notifications
  int getScheduledNotificationCount() {
    return _scheduledNotificationIds.length;
  }
}
