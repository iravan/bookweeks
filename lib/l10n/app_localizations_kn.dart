// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'ವಾರಗಳ ಬುಕಿಂಗ್';

  @override
  String get selectWeek => 'ವಾರವನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get mon => 'ಸೋಮ';

  @override
  String get tue => 'ಮಂಗಳ';

  @override
  String get wed => 'ಬುಧ';

  @override
  String get thu => 'ಗುರು';

  @override
  String get fri => 'ಶುಕ್ರ';

  @override
  String get sat => 'ಶನಿ';

  @override
  String get sun => 'ಭಾನು';

  @override
  String get noSessionsScheduled => 'ಯಾವುದೇ ಸೆಷನ್ಗಳು ಶೆಡ್ಯೂಲ್ ಮಾಡಲಾಗಿಲ್ಲ';

  @override
  String get tapToAddSession => 'ಸೆಷನ್ ಸೇರಿಸಲು + ಬಟನ್ ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String student(int count) {
    return 'ವಿದ್ಯಾರ್ಥಿ';
  }

  @override
  String students(int count) {
    return 'ವಿದ್ಯಾರ್ಥಿಗಳು';
  }

  @override
  String get deleteSession => 'ಸೆಷನ್ ಅಳಿಸಿ';

  @override
  String deleteSessionConfirm(String title) {
    return 'ನೀವು \"$title\" ಅನ್ನು ಅಳಿಸಲು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ?';
  }

  @override
  String get cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get delete => 'ಅಳಿಸಿ';

  @override
  String get createSession => 'ಸೆಷನ್ ರಚಿಸಿ';

  @override
  String get editSession => 'ಸೆಷನ್ ಸಂಪಾದಿಸಿ';

  @override
  String get title => 'ಶೀರ್ಷಿಕೆ';

  @override
  String get titleRequired => 'ದಯವಿಟ್ಟು ಶೀರ್ಷಿಕೆ ನಮೂದಿಸಿ';

  @override
  String get startTime => 'ಪ್ರಾರಂಭ ಸಮಯ';

  @override
  String get endTime => 'ಕೊನೆ ಸಮಯ';

  @override
  String get endTimeAfterStart => 'ಕೊನೆ ಸಮಯ ಪ್ರಾರಂಭ ಸಮಯದ ನಂತರ ಇರಬೇಕು';

  @override
  String get descriptionOptional => 'ವಿವರಣೆ (ಐಚ್ಛಿಕ)';

  @override
  String get save => 'ಉಳಿಸಿ';

  @override
  String get add => 'ಸೇರಿಸಿ';

  @override
  String get edit => 'ಸಂಪಾದಿಸಿ';

  @override
  String get allEvents => 'ಎಲ್ಲಾ ಈವೆಂಟ್ಗಳು';

  @override
  String get manageTemplates => 'ಟೆಂಪ್ಲೇಟ್ಗಳನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get exportData => 'ಡೇಟಾವನ್ನು ರಫ್ತು ಮಾಡಿ';

  @override
  String get importData => 'ಡೇಟಾವನ್ನು ಆಮದು ಮಾಡಿ';

  @override
  String get saveExportFile => 'ರಫ್ತು ಫೈಲ್ ಉಳಿಸಿ';

  @override
  String exportSuccessful(String path) {
    return 'ರಫ್ತು ಯಶಸ್ವಿ!\nಉಳಿಸಲಾಗಿದೆ: $path';
  }

  @override
  String exportFailed(String error) {
    return 'ರಫ್ತು ವಿಫಲ: $error';
  }

  @override
  String get importSuccessful => 'ಆಮದು ಯಶಸ್ವಿ';

  @override
  String get importFailed => 'ಆಮದು ವಿಫಲ';

  @override
  String get errorReadingFile => 'ಫೈಲ್ ಓದುವಲ್ಲಿ ದೋಷ';

  @override
  String error(String error) {
    return 'ದೋಷ: $error';
  }

  @override
  String get ok => 'ಸರಿ';

  @override
  String get searchEvents => 'ಈವೆಂಟ್ಗಳನ್ನು ಹುಡುಕಿ...';

  @override
  String get noEventsScheduled => 'ಯಾವುದೇ ಈವೆಂಟ್ಗಳು ಶೆಡ್ಯೂಲ್ ಮಾಡಲಾಗಿಲ್ಲ';

  @override
  String get noEventsFound => 'ಈವೆಂಟ್ಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get createEventsFromCalendar => 'ಕ್ಯಾಲೆಂಡರ್ನಿಂದ ಈವೆಂಟ್ಗಳನ್ನು ರಚಿಸಿ';

  @override
  String get studentsJoiningThisSession => 'ಈ ಸೆಷನ್‌ಗೆ ಸೇರುವ ವಿದ್ಯಾರ್ಥಿಗಳು';

  @override
  String get addMember => 'ಸದಸ್ಯರನ್ನು ಸೇರಿಸಿ';

  @override
  String get noStudentsAddedYet => 'ಇನ್ನೂ ವಿದ್ಯಾರ್ಥಿಗಳನ್ನು ಸೇರಿಸಲಾಗಿಲ್ಲ';

  @override
  String get tapToAddMember => '+ ಟ್ಯಾಪ್ ಮಾಡಿ ಸದಸ್ಯರನ್ನು ಸೇರಿಸಿ';

  @override
  String get allMembers => 'ಎಲ್ಲಾ ಸದಸ್ಯರು';

  @override
  String get addToSession => 'ಸೆಷನ್‌ಗೆ ಸೇರಿಸಿ';

  @override
  String get removeFromSession => 'ಸೆಷನ್‌ನಿಂದ ತೆಗೆದುಹಾಕಿ';

  @override
  String get name => 'ಹೆಸರು';

  @override
  String get nameRequired => 'ದಯವಿಟ್ಟು ಹೆಸರು ನಮೂದಿಸಿ';

  @override
  String get nicknameOptional => 'ಅಡ್ಡಹೆಸರು (ಐಚ್ಛಿಕ)';

  @override
  String get ageOptional => 'ವಯಸ್ಸು (ಐಚ್ಛಿಕ)';

  @override
  String get ageInvalid => 'ದಯವಿಟ್ಟು ಮಾನ್ಯ ವಯಸ್ಸು ನಮೂದಿಸಿ';

  @override
  String get phoneNumberOptional => 'ಫೋನ್ ಸಂಖ್ಯೆ (ಐಚ್ಛಿಕ)';

  @override
  String get phoneNumberHint => 'ಉದಾ: +91 98765 43210';

  @override
  String get addMemberTitle => 'ಸದಸ್ಯರನ್ನು ಸೇರಿಸಿ';

  @override
  String get editMemberTitle => 'ಸದಸ್ಯರನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get member => 'ಸದಸ್ಯ';

  @override
  String nameLabel(String name) {
    return 'ಹೆಸರು: $name';
  }

  @override
  String ageLabel(int age) {
    return 'ವಯಸ್ಸು: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'ಫೋನ್: $phone';
  }

  @override
  String get templateOptional => 'ಟೆಂಪ್ಲೇಟ್ (ಐಚ್ಛಿಕ)';

  @override
  String get none => 'ಯಾವುದೂ ಇಲ್ಲ';

  @override
  String get saveAsTemplate => 'ಟೆಂಪ್ಲೇಟ್ ಆಗಿ ಉಳಿಸಿ';

  @override
  String get saveAsTemplateSubtitle =>
      'ಭವಿಷ್ಯದ ಸೆಷನ್‌ಗಳಿಗೆ ಈ ಸೆಷನ್ ಅನ್ನು ಟೆಂಪ್ಲೇಟ್ ಆಗಿ ಬಳಸಿ';

  @override
  String get templateName => 'ಟೆಂಪ್ಲೇಟ್ ಹೆಸರು';

  @override
  String get templateNameHelper => 'ಈ ಟೆಂಪ್ಲೇಟ್ ಅನ್ನು ಗುರುತಿಸಲು ಹೆಸರು';

  @override
  String get templateNameRequired => 'ದಯವಿಟ್ಟು ಟೆಂಪ್ಲೇಟ್ ಹೆಸರು ನಮೂದಿಸಿ';

  @override
  String get defaultSessionTitle => 'ಡೀಫಾಲ್ಟ್ ಸೆಷನ್ ಶೀರ್ಷಿಕೆ';

  @override
  String get defaultSessionTitleHelper =>
      'ಈ ಟೆಂಪ್ಲೇಟ್‌ನಿಂದ ಸೆಷನ್‌ಗಳನ್ನು ರಚಿಸುವಾಗ ಬಳಸುವ ಶೀರ್ಷಿಕೆ';

  @override
  String get sessionTitleRequired => 'ದಯವಿಟ್ಟು ಸೆಷನ್ ಶೀರ್ಷಿಕೆ ನಮೂದಿಸಿ';

  @override
  String get createTemplate => 'ಟೆಂಪ್ಲೇಟ್ ರಚಿಸಿ';

  @override
  String get editTemplate => 'ಟೆಂಪ್ಲೇಟ್ ಸಂಪಾದಿಸಿ';

  @override
  String get create => 'ರಚಿಸಿ';

  @override
  String get templateNameDialogTitle => 'ಟೆಂಪ್ಲೇಟ್ ಹೆಸರು';

  @override
  String get templateNameDialogHelper =>
      'ಸುಲಭ ಗುರುತಿಸುವಿಕೆಗಾಗಿ ಈ ಟೆಂಪ್ಲೇಟ್‌ಗೆ ಹೆಸರು ನೀಡಿ';

  @override
  String get templateManagement => 'ಟೆಂಪ್ಲೇಟ್ ನಿರ್ವಹಣೆ';

  @override
  String get noTemplatesYet => 'ಇನ್ನೂ ಟೆಂಪ್ಲೇಟ್ಗಳು ಇಲ್ಲ';

  @override
  String get createSessionAndSaveAsTemplate =>
      'ಸೆಷನ್ ರಚಿಸಿ ಮತ್ತು \"ಟೆಂಪ್ಲೇಟ್ ಆಗಿ ಉಳಿಸಿ\" ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get deleteTemplate => 'ಟೆಂಪ್ಲೇಟ್ ಅಳಿಸಿ';

  @override
  String deleteTemplateConfirm(String title) {
    return 'ನೀವು \"$title\" ಅನ್ನು ಅಳಿಸಲು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ?';
  }

  @override
  String session(String title) {
    return 'ಸೆಷನ್: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'ಟೆಂಪ್ಲೇಟ್ ಆಗಿ ಉಳಿಸಿ';

  @override
  String templateSavedSuccessfully(String name) {
    return 'ಟೆಂಪ್ಲೇಟ್ \"$name\" ಯಶಸ್ವಿಯಾಗಿ ಉಳಿಸಲಾಗಿದೆ';
  }

  @override
  String get debug => 'ಡೀಬಗ್';

  @override
  String get debugDateSimulation => 'ಡೀಬಗ್ ದಿನಾಂಕ ಸಿಮ್ಯುಲೇಷನ್';

  @override
  String get setCustomDate => 'ಕಸ್ಟಮ್ ದಿನಾಂಕವನ್ನು ಹೊಂದಿಸಿ';

  @override
  String get clear => 'ಸ್ಪಷ್ಟಗೊಳಿಸಿ';

  @override
  String now(String date) {
    return 'ಈಗ: $date';
  }

  @override
  String get today => 'ಇಂದು';

  @override
  String get yesterday => 'ನಿನ್ನೆ';

  @override
  String get tomorrow => 'ನಾಳೆ';

  @override
  String daysAgo(int count) {
    return '$count ದಿನಗಳ ಹಿಂದೆ';
  }

  @override
  String daysLater(int count) {
    return '$count ದಿನಗಳ ನಂತರ';
  }

  @override
  String get notificationSettings => 'Notification Settings';

  @override
  String get notificationTiming => 'Notification Timing';

  @override
  String get notificationTimingDescription =>
      'Choose when to receive notifications before each session starts';

  @override
  String get atEventStart => 'At event start';

  @override
  String beforeEventStart(String timing) {
    return '$timing before event start';
  }

  @override
  String get notificationTimingUpdated => 'Notification timing updated';

  @override
  String get aboutNotifications => 'About Notifications';

  @override
  String get notificationInfo =>
      'You will receive notifications before each scheduled session starts. Notifications are automatically scheduled when you create or update sessions, and all existing sessions are scheduled when the app launches.';

  @override
  String get rescheduleNotifications => 'Reschedule Notifications';

  @override
  String get rescheduleNotificationsDescription =>
      'Manually reschedule notifications for all existing future sessions. This is useful if you have just enabled notifications or want to ensure all events have notifications scheduled.';

  @override
  String get rescheduleNow => 'Reschedule Now';

  @override
  String get rescheduling => 'Rescheduling...';

  @override
  String notificationsRescheduled(int count) {
    return 'Notifications rescheduled for $count future session(s)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Error rescheduling notifications: $error';
  }

  @override
  String get permissionsRequired => 'Notification Permissions Required';

  @override
  String get permissionsRequiredDescription =>
      'Please grant notification permissions to receive reminders for your sessions. Tap the button below to request permissions.';

  @override
  String get requestPermissions => 'Request Permissions';

  @override
  String get permissionsGranted => 'Notification permissions granted!';

  @override
  String get permissionsDenied =>
      'Notification permissions were denied. Please enable them in Settings.';

  @override
  String get timing0Min => '0 min';

  @override
  String get timing1Min => '1 min';

  @override
  String get timing5Mins => '5 mins';

  @override
  String get timing30Mins => '30 mins';

  @override
  String get timing1Hour => '1 hour';

  @override
  String get timing6Hours => '6 hours';

  @override
  String timingMinutes(int count) {
    return '$count mins';
  }

  @override
  String timingHours(int count) {
    return '$count hour';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count hours';
  }

  @override
  String get testNotifications => 'ಪರೀಕ್ಷೆ ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get testNotificationsDescription =>
      'ಅಧಿಸೂಚನೆಗಳು ಕೆಲಸ ಮಾಡುತ್ತಿವೆಯೇ ಎಂದು ಪರಿಶೀಲಿಸಲು 2 ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಒಂದು ಪರೀಕ್ಷಾ ಅಧಿಸೂಚನೆಯನ್ನು ಕಳುಹಿಸಿ।';

  @override
  String get sendTestNotification => 'ಪರೀಕ್ಷಾ ಅಧಿಸೂಚನೆಯನ್ನು ಕಳುಹಿಸಿ';

  @override
  String get testNotificationScheduled =>
      'ಪರೀಕ್ಷಾ ಅಧಿಸೂಚನೆ ಶೆಡ್ಯೂಲ್ ಮಾಡಲಾಗಿದೆ! 2 ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಪರಿಶೀಲಿಸಿ.';

  @override
  String get testNotificationTitle => 'ಪರೀಕ್ಷಾ ಅಧಿಸೂಚನೆ';

  @override
  String get testNotificationBody =>
      'ನೀವು ಇದನ್ನು ನೋಡುತ್ತಿದ್ದರೆ, ಅಧಿಸೂಚನೆಗಳು ಕೆಲಸ ಮಾಡುತ್ತಿವೆ!';

  @override
  String get scheduledTestNotificationTitle =>
      'ಶೆಡ್ಯೂಲ್ ಮಾಡಲಾದ ಪರೀಕ್ಷಾ ಅಧಿಸೂಚನೆ';

  @override
  String get scheduledTestNotificationBody =>
      'ಇದನ್ನು 2 ಸೆಕೆಂಡುಗಳ ಹಿಂದೆ ಶೆಡ್ಯೂಲ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String startsAt(String time) {
    return '$time ರಂದು ಪ್ರಾರಂಭವಾಗುತ್ತದೆ';
  }

  @override
  String get themeSettings => 'ಥೀಮ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get selectTheme => 'ಥೀಮ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get selectThemeDescription =>
      'ಅಪ್ಲಿಕೇಶನ್‌ಗಾಗಿ ಬಣ್ಣದ ಥೀಮ್ ಆಯ್ಕೆಮಾಡಿ। ಥೀಮ್ ಸಂಪೂರ್ಣ ಅಪ್ಲಿಕೇಶನ್‌ಗೆ ಅನ್ವಯಿಸಲಾಗುತ್ತದೆ।';

  @override
  String get themeChanged => 'ಥೀಮ್ ಯಶಸ್ವಿಯಾಗಿ ಬದಲಾಯಿತು!';

  @override
  String get aboutTheme => 'ಥೀಮ್‌ಗಳ ಬಗ್ಗೆ';

  @override
  String get themeInfo =>
      'ಥೀಮ್ ಅನ್ನು ಬದಲಾಯಿಸುವುದು ಆಪ್‌ನಾದ್ಯಂತ ಬಣ್ಣಗಳನ್ನು ನವೀಕರಿಸುತ್ತದೆ, ಇದರಲ್ಲಿ ಬಟನ್‌ಗಳು, ಆಪ್ ಬಾರ್‌ಗಳು ಮತ್ತು ಇತರ UI ಅಂಶಗಳು ಸೇರಿವೆ। ನಿಮ್ಮ ಥೀಮ್ ಆದ್ಯತೆಯನ್ನು ಉಳಿಸಲಾಗುತ್ತದೆ ಮತ್ತು ನೀವು ಆಪ್‌ನ್ನು ಮರುಪ್ರಾರಂಭಿಸಿದಾಗ ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಅನ್ವಯಿಸಲಾಗುತ್ತದೆ।';
}
