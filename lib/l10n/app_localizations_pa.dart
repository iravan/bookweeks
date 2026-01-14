// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'ਹਫ਼ਤੇ ਬੁਕਿੰਗ';

  @override
  String get selectWeek => 'ਹਫ਼ਤਾ ਚੁਣੋ';

  @override
  String get mon => 'ਸੋਮ';

  @override
  String get tue => 'ਮੰਗਲ';

  @override
  String get wed => 'ਬੁੱਧ';

  @override
  String get thu => 'ਵੀਰ';

  @override
  String get fri => 'ਸ਼ੁੱਕਰ';

  @override
  String get sat => 'ਸ਼ਨਿੱਚਰ';

  @override
  String get sun => 'ਐਤਵਾਰ';

  @override
  String get noSessionsScheduled => 'ਕੋਈ ਸੈਸ਼ਨ ਸ਼ੈਡਿਊਲ ਨਹੀਂ ਹਨ';

  @override
  String get tapToAddSession => 'ਸੈਸ਼ਨ ਜੋੜਨ ਲਈ + ਬਟਨ ਟੈਪ ਕਰੋ';

  @override
  String student(int count) {
    return 'ਵਿਦਿਆਰਥੀ';
  }

  @override
  String students(int count) {
    return 'ਵਿਦਿਆਰਥੀ';
  }

  @override
  String get deleteSession => 'ਸੈਸ਼ਨ ਮਿਟਾਓ';

  @override
  String deleteSessionConfirm(String title) {
    return 'ਕੀ ਤੁਸੀਂ ਯਕੀਨਨ \"$title\" ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?';
  }

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get delete => 'ਮਿਟਾਓ';

  @override
  String get createSession => 'ਸੈਸ਼ਨ ਬਣਾਓ';

  @override
  String get editSession => 'ਸੈਸ਼ਨ ਸੰਪਾਦਨ ਕਰੋ';

  @override
  String get title => 'ਸਿਰਲੇਖ';

  @override
  String get titleRequired => 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਸਿਰਲੇਖ ਦਰਜ ਕਰੋ';

  @override
  String get startTime => 'ਸ਼ੁਰੂਆਤੀ ਸਮਾਂ';

  @override
  String get endTime => 'ਸਮਾਪਤੀ ਸਮਾਂ';

  @override
  String get endTimeAfterStart =>
      'ਸਮਾਪਤੀ ਸਮਾਂ ਸ਼ੁਰੂਆਤੀ ਸਮੇਂ ਤੋਂ ਬਾਅਦ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get descriptionOptional => 'ਵਰਣਨ (ਵਿਕਲਪਿਕ)';

  @override
  String get save => 'ਸੇਵ ਕਰੋ';

  @override
  String get add => 'ਜੋੜੋ';

  @override
  String get edit => 'ਸੰਪਾਦਨ ਕਰੋ';

  @override
  String get allEvents => 'ਸਾਰੇ ਇਵੈਂਟ';

  @override
  String get manageTemplates => 'ਟੈਂਪਲੇਟ ਪ੍ਰਬੰਧਨ ਕਰੋ';

  @override
  String get exportData => 'ਡੇਟਾ ਐਕਸਪੋਰਟ ਕਰੋ';

  @override
  String get importData => 'ਡੇਟਾ ਇੰਪੋਰਟ ਕਰੋ';

  @override
  String get saveExportFile => 'ਐਕਸਪੋਰਟ ਫਾਈਲ ਸੇਵ ਕਰੋ';

  @override
  String exportSuccessful(String path) {
    return 'ਐਕਸਪੋਰਟ ਸਫਲ!\nਸੇਵ ਕੀਤਾ: $path';
  }

  @override
  String exportFailed(String error) {
    return 'ਐਕਸਪੋਰਟ ਅਸਫਲ: $error';
  }

  @override
  String get importSuccessful => 'ਇੰਪੋਰਟ ਸਫਲ';

  @override
  String get importFailed => 'ਇੰਪੋਰਟ ਅਸਫਲ';

  @override
  String get errorReadingFile => 'ਫਾਈਲ ਪੜ੍ਹਨ ਵਿੱਚ ਗਲਤੀ';

  @override
  String error(String error) {
    return 'ਗਲਤੀ: $error';
  }

  @override
  String get ok => 'ਠੀਕ ਹੈ';

  @override
  String get searchEvents => 'ਇਵੈਂਟ ਖੋਜੋ...';

  @override
  String get noEventsScheduled => 'ਕੋਈ ਇਵੈਂਟ ਸ਼ੈਡਿਊਲ ਨਹੀਂ ਹਨ';

  @override
  String get noEventsFound => 'ਇਵੈਂਟ ਨਹੀਂ ਮਿਲੇ';

  @override
  String get createEventsFromCalendar => 'ਕੈਲੰਡਰ ਤੋਂ ਇਵੈਂਟ ਬਣਾਓ';

  @override
  String get studentsJoiningThisSession =>
      'ਇਸ ਸੈਸ਼ਨ ਵਿੱਚ ਸ਼ਾਮਲ ਹੋਣ ਵਾਲੇ ਵਿਦਿਆਰਥੀ';

  @override
  String get addMember => 'ਮੈਂਬਰ ਜੋੜੋ';

  @override
  String get noStudentsAddedYet => 'ਅਜੇ ਤੱਕ ਕੋਈ ਵਿਦਿਆਰਥੀ ਜੋੜੇ ਨਹੀਂ ਗਏ';

  @override
  String get tapToAddMember => '+ ਟੈਪ ਕਰਕੇ ਮੈਂਬਰ ਜੋੜੋ';

  @override
  String get allMembers => 'ਸਾਰੇ ਮੈਂਬਰ';

  @override
  String get addToSession => 'ਸੈਸ਼ਨ ਵਿੱਚ ਜੋੜੋ';

  @override
  String get removeFromSession => 'ਸੈਸ਼ਨ ਤੋਂ ਹਟਾਓ';

  @override
  String get name => 'ਨਾਮ';

  @override
  String get nameRequired => 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਨਾਮ ਦਰਜ ਕਰੋ';

  @override
  String get nicknameOptional => 'ਉਪਨਾਮ (ਵਿਕਲਪਿਕ)';

  @override
  String get ageOptional => 'ਉਮਰ (ਵਿਕਲਪਿਕ)';

  @override
  String get ageInvalid => 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਉਮਰ ਦਰਜ ਕਰੋ';

  @override
  String get phoneNumberOptional => 'ਫੋਨ ਨੰਬਰ (ਵਿਕਲਪਿਕ)';

  @override
  String get phoneNumberHint => 'ਉਦਾ: +91 98765 43210';

  @override
  String get addMemberTitle => 'ਮੈਂਬਰ ਜੋੜੋ';

  @override
  String get editMemberTitle => 'ਮੈਂਬਰ ਸੰਪਾਦਨ ਕਰੋ';

  @override
  String get member => 'ਮੈਂਬਰ';

  @override
  String nameLabel(String name) {
    return 'ਨਾਮ: $name';
  }

  @override
  String ageLabel(int age) {
    return 'ਉਮਰ: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'ਫੋਨ: $phone';
  }

  @override
  String get templateOptional => 'ਟੈਂਪਲੇਟ (ਵਿਕਲਪਿਕ)';

  @override
  String get none => 'ਕੁਝ ਨਹੀਂ';

  @override
  String get saveAsTemplate => 'ਟੈਂਪਲੇਟ ਵਜੋਂ ਸੇਵ ਕਰੋ';

  @override
  String get saveAsTemplateSubtitle =>
      'ਭਵਿੱਖ ਦੇ ਸੈਸ਼ਨਾਂ ਲਈ ਇਸ ਸੈਸ਼ਨ ਨੂੰ ਟੈਂਪਲੇਟ ਵਜੋਂ ਵਰਤੋਂ';

  @override
  String get templateName => 'ਟੈਂਪਲੇਟ ਨਾਮ';

  @override
  String get templateNameHelper => 'ਇਸ ਟੈਂਪਲੇਟ ਨੂੰ ਪਛਾਣਣ ਲਈ ਨਾਮ';

  @override
  String get templateNameRequired => 'ਕਿਰਪਾ ਕਰਕੇ ਟੈਂਪਲੇਟ ਨਾਮ ਦਰਜ ਕਰੋ';

  @override
  String get defaultSessionTitle => 'ਡਿਫੌਲਟ ਸੈਸ਼ਨ ਸਿਰਲੇਖ';

  @override
  String get defaultSessionTitleHelper =>
      'ਇਸ ਟੈਂਪਲੇਟ ਤੋਂ ਸੈਸ਼ਨ ਬਣਾਉਣ ਸਮੇਂ ਵਰਤਿਆ ਜਾਣ ਵਾਲਾ ਸਿਰਲੇਖ';

  @override
  String get sessionTitleRequired => 'ਕਿਰਪਾ ਕਰਕੇ ਸੈਸ਼ਨ ਸਿਰਲੇਖ ਦਰਜ ਕਰੋ';

  @override
  String get createTemplate => 'ਟੈਂਪਲੇਟ ਬਣਾਓ';

  @override
  String get editTemplate => 'ਟੈਂਪਲੇਟ ਸੰਪਾਦਨ ਕਰੋ';

  @override
  String get create => 'ਬਣਾਓ';

  @override
  String get templateNameDialogTitle => 'ਟੈਂਪਲੇਟ ਨਾਮ';

  @override
  String get templateNameDialogHelper =>
      'ਆਸਾਨ ਪਛਾਣ ਲਈ ਇਸ ਟੈਂਪਲੇਟ ਨੂੰ ਇੱਕ ਨਾਮ ਦਿਓ';

  @override
  String get templateManagement => 'ਟੈਂਪਲੇਟ ਪ੍ਰਬੰਧਨ';

  @override
  String get noTemplatesYet => 'ਅਜੇ ਤੱਕ ਕੋਈ ਟੈਂਪਲੇਟ ਨਹੀਂ ਹਨ';

  @override
  String get createSessionAndSaveAsTemplate =>
      'ਇੱਕ ਸੈਸ਼ਨ ਬਣਾਓ ਅਤੇ \"ਟੈਂਪਲੇਟ ਵਜੋਂ ਸੇਵ ਕਰੋ\" ਚੁਣੋ';

  @override
  String get deleteTemplate => 'ਟੈਂਪਲੇਟ ਮਿਟਾਓ';

  @override
  String deleteTemplateConfirm(String title) {
    return 'ਕੀ ਤੁਸੀਂ ਯਕੀਨਨ \"$title\" ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?';
  }

  @override
  String session(String title) {
    return 'ਸੈਸ਼ਨ: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'ਟੈਂਪਲੇਟ ਵਜੋਂ ਸੇਵ ਕਰੋ';

  @override
  String templateSavedSuccessfully(String name) {
    return 'ਟੈਂਪਲੇਟ \"$name\" ਸਫਲਤਾਪੂਰਵਕ ਸੇਵ ਕੀਤਾ ਗਿਆ';
  }

  @override
  String get debug => 'ਡੀਬੱਗ';

  @override
  String get debugDateSimulation => 'ਡੀਬੱਗ ਤਾਰੀਖ ਸਿਮੂਲੇਸ਼ਨ';

  @override
  String get setCustomDate => 'ਕਸਟਮ ਤਾਰੀਖ ਸੈੱਟ ਕਰੋ';

  @override
  String get clear => 'ਸਾਫ਼ ਕਰੋ';

  @override
  String now(String date) {
    return 'ਹੁਣ: $date';
  }

  @override
  String get today => 'ਅੱਜ';

  @override
  String get yesterday => 'ਕਲ';

  @override
  String get tomorrow => 'ਕਲ';

  @override
  String daysAgo(int count) {
    return '$count ਦਿਨ ਪਹਿਲਾਂ';
  }

  @override
  String daysLater(int count) {
    return '$count ਦਿਨ ਬਾਅਦ';
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
  String get testNotifications => 'ਟੈਸਟ ਸੂਚਨਾਵਾਂ';

  @override
  String get testNotificationsDescription =>
      'ਸੂਚਨਾਵਾਂ ਕੰਮ ਕਰ ਰਹੀਆਂ ਹਨ ਜਾਂ ਨਹੀਂ ਇਸਦੀ ਪੁਸ਼ਟੀ ਕਰਨ ਲਈ 2 ਸਕਿੰਟਾਂ ਵਿੱਚ ਇੱਕ ਟੈਸਟ ਸੂਚਨਾ ਭੇਜੋ।';

  @override
  String get sendTestNotification => 'ਟੈਸਟ ਸੂਚਨਾ ਭੇਜੋ';

  @override
  String get testNotificationScheduled =>
      'ਟੈਸਟ ਸੂਚਨਾ ਸ਼ੈਡਿਊਲ ਕੀਤੀ ਗਈ ਹੈ! 2 ਸਕਿੰਟਾਂ ਵਿੱਚ ਜਾਂਚ ਕਰੋ।';

  @override
  String get testNotificationTitle => 'ਟੈਸਟ ਸੂਚਨਾ';

  @override
  String get testNotificationBody =>
      'ਜੇ ਤੁਸੀਂ ਇਹ ਦੇਖਦੇ ਹੋ, ਤਾਂ ਸੂਚਨਾਵਾਂ ਕੰਮ ਕਰ ਰਹੀਆਂ ਹਨ!';

  @override
  String get scheduledTestNotificationTitle => 'ਸ਼ੈਡਿਊਲ ਕੀਤੀ ਟੈਸਟ ਸੂਚਨਾ';

  @override
  String get scheduledTestNotificationBody =>
      'ਇਹ 2 ਸਕਿੰਟ ਪਹਿਲਾਂ ਸ਼ੈਡਿਊਲ ਕੀਤਾ ਗਿਆ ਸੀ';

  @override
  String startsAt(String time) {
    return '$time \'ਤੇ ਸ਼ੁਰੂ ਹੁੰਦਾ ਹੈ';
  }
}
