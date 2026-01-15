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
  String get notificationSettings => 'ਸੂਚਨਾ ਸੈਟਿੰਗਾਂ';

  @override
  String get notificationTiming => 'ਸੂਚਨਾ ਸਮਾਂ';

  @override
  String get notificationTimingDescription =>
      'ਹਰੇਕ ਸੈਸ਼ਨ ਸ਼ੁਰੂ ਹੋਣ ਤੋਂ ਪਹਿਲਾਂ ਸੂਚਨਾਵਾਂ ਕਦੋਂ ਪ੍ਰਾਪਤ ਕਰਨੀਆਂ ਹਨ ਚੁਣੋ';

  @override
  String get atEventStart => 'ਇਵੈਂਟ ਸ਼ੁਰੂ ਹੋਣ \'ਤੇ';

  @override
  String beforeEventStart(String timing) {
    return 'ਇਵੈਂਟ ਸ਼ੁਰੂ ਹੋਣ ਤੋਂ $timing ਪਹਿਲਾਂ';
  }

  @override
  String get notificationTimingUpdated => 'ਸੂਚਨਾ ਸਮਾਂ ਅਪਡੇਟ ਕੀਤਾ';

  @override
  String get aboutNotifications => 'ਸੂਚਨਾਵਾਂ ਬਾਰੇ';

  @override
  String get notificationInfo =>
      'ਤੁਸੀਂ ਹਰੇਕ ਸ਼ੈਡਿਊਲ ਕੀਤੇ ਸੈਸ਼ਨ ਸ਼ੁਰੂ ਹੋਣ ਤੋਂ ਪਹਿਲਾਂ ਸੂਚਨਾਵਾਂ ਪ੍ਰਾਪਤ ਕਰੋਗੇ। ਜਦੋਂ ਤੁਸੀਂ ਸੈਸ਼ਨ ਬਣਾਉਂਦੇ ਜਾਂ ਅਪਡੇਟ ਕਰਦੇ ਹੋ ਤਾਂ ਸੂਚਨਾਵਾਂ ਆਪਣੇ ਆਪ ਸ਼ੈਡਿਊਲ ਹੋ ਜਾਂਦੀਆਂ ਹਨ, ਅਤੇ ਐਪ ਲਾਂਚ ਹੋਣ \'ਤੇ ਸਾਰੇ ਮੌਜੂਦਾ ਸੈਸ਼ਨ ਸ਼ੈਡਿਊਲ ਹੋ ਜਾਂਦੇ ਹਨ।';

  @override
  String get rescheduleNotifications => 'ਸੂਚਨਾਵਾਂ ਮੁੜ ਸ਼ੈਡਿਊਲ ਕਰੋ';

  @override
  String get rescheduleNotificationsDescription =>
      'ਸਾਰੇ ਮੌਜੂਦਾ ਭਵਿੱਖ ਦੇ ਸੈਸ਼ਨਾਂ ਲਈ ਸੂਚਨਾਵਾਂ ਮੈਨੂਅਲੀ ਤੌਰ \'ਤੇ ਮੁੜ ਸ਼ੈਡਿਊਲ ਕਰੋ। ਇਹ ਲਾਭਦਾਇਕ ਹੈ ਜੇ ਤੁਸੀਂ ਹੁਣੇ ਸੂਚਨਾਵਾਂ ਸਮਰੱਥ ਕੀਤੀਆਂ ਹਨ ਜਾਂ ਇਹ ਯਕੀਨੀ ਬਣਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ ਕਿ ਸਾਰੇ ਇਵੈਂਟਾਂ ਵਿੱਚ ਸੂਚਨਾਵਾਂ ਸ਼ੈਡਿਊਲ ਹਨ।';

  @override
  String get rescheduleNow => 'ਹੁਣ ਮੁੜ ਸ਼ੈਡਿਊਲ ਕਰੋ';

  @override
  String get rescheduling => 'ਮੁੜ ਸ਼ੈਡਿਊਲ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String notificationsRescheduled(int count) {
    return '$count ਭਵਿੱਖ ਦੇ ਸੈਸ਼ਨ(ਾਂ) ਲਈ ਸੂਚਨਾਵਾਂ ਮੁੜ ਸ਼ੈਡਿਊਲ ਕੀਤੀਆਂ ਗਈਆਂ';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'ਸੂਚਨਾਵਾਂ ਮੁੜ ਸ਼ੈਡਿਊਲ ਕਰਨ ਵਿੱਚ ਤਰੁਟੀ: $error';
  }

  @override
  String get permissionsRequired => 'ਸੂਚਨਾ ਇਜਾਜ਼ਤਾਂ ਲੋੜੀਂਦੀਆਂ ਹਨ';

  @override
  String get permissionsRequiredDescription =>
      'ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ ਸੈਸ਼ਨਾਂ ਲਈ ਯਾਦ ਦਿਵਾਉਣ ਲਈ ਸੂਚਨਾ ਇਜਾਜ਼ਤਾਂ ਦਿਓ। ਇਜਾਜ਼ਤਾਂ ਦੀ ਬੇਨਤੀ ਕਰਨ ਲਈ ਹੇਠਾਂ ਦਿੱਤੇ ਬਟਨ ਨੂੰ ਟੈਪ ਕਰੋ।';

  @override
  String get requestPermissions => 'ਇਜਾਜ਼ਤਾਂ ਦੀ ਬੇਨਤੀ ਕਰੋ';

  @override
  String get permissionsGranted => 'ਸੂਚਨਾ ਇਜਾਜ਼ਤਾਂ ਦਿੱਤੀਆਂ ਗਈਆਂ!';

  @override
  String get permissionsDenied =>
      'ਸੂਚਨਾ ਇਜਾਜ਼ਤਾਂ ਇਨਕਾਰ ਕੀਤੀਆਂ ਗਈਆਂ। ਕਿਰਪਾ ਕਰਕੇ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਉਨ੍ਹਾਂ ਨੂੰ ਸਮਰੱਥ ਕਰੋ।';

  @override
  String get timing0Min => '0 ਮਿੰਟ';

  @override
  String get timing1Min => '1 ਮਿੰਟ';

  @override
  String get timing5Mins => '5 ਮਿੰਟ';

  @override
  String get timing30Mins => '30 ਮਿੰਟ';

  @override
  String get timing1Hour => '1 ਘੰਟਾ';

  @override
  String get timing6Hours => '6 ਘੰਟੇ';

  @override
  String timingMinutes(int count) {
    return '$count ਮਿੰਟ';
  }

  @override
  String timingHours(int count) {
    return '$count ਘੰਟਾ';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count ਘੰਟੇ';
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

  @override
  String get themeSettings => 'ਥੀਮ ਸੈਟਿੰਗਾਂ';

  @override
  String get selectTheme => 'ਥੀਮ ਚੁਣੋ';

  @override
  String get selectThemeDescription =>
      'ਐਪ ਲਈ ਇੱਕ ਰੰਗ ਥੀਮ ਚੁਣੋ। ਥੀਮ ਪੂਰੀ ਐਪਲੀਕੇਸ਼ਨ ਵਿੱਚ ਲਾਗੂ ਕੀਤੀ ਜਾਵੇਗੀ।';

  @override
  String get themeChanged => 'ਥੀਮ ਸਫਲਤਾਪੂਰਵਕ ਬਦਲੀ ਗਈ!';

  @override
  String get aboutTheme => 'ਥੀਮਾਂ ਬਾਰੇ';

  @override
  String get themeInfo =>
      'ਥੀਮ ਬਦਲਣਾ ਐਪ ਦੇ ਸਾਰੇ ਰੰਗਾਂ ਨੂੰ ਅਪਡੇਟ ਕਰੇਗਾ, ਜਿਸ ਵਿੱਚ ਬਟਨ, ਐਪ ਬਾਰ ਅਤੇ ਹੋਰ UI ਤੱਤ ਸ਼ਾਮਲ ਹਨ। ਤੁਹਾਡੀ ਥੀਮ ਪਸੰਦ ਸੁਰੱਖਿਅਤ ਕੀਤੀ ਜਾਵੇਗੀ ਅਤੇ ਜਦੋਂ ਤੁਸੀਂ ਐਪ ਨੂੰ ਮੁੜ ਚਾਲੂ ਕਰੋਗੇ ਤਾਂ ਆਪਣੇ ਆਪ ਲਾਗੂ ਹੋਵੇਗੀ।';

  @override
  String get enableNotifications => 'ਸੂਚਨਾਵਾਂ ਸਮਰੱਥ ਕਰੋ';

  @override
  String get enableNotificationsDescription =>
      'ਸੂਚਨਾਵਾਂ ਚਾਲੂ ਜਾਂ ਬੰਦ ਕਰੋ। ਜਦੋਂ ਅਸਮਰੱਥ ਹੋਵੇ, ਤਾਂ ਤੁਹਾਡੇ ਸੈਸ਼ਨਾਂ ਲਈ ਕੋਈ ਸੂਚਨਾ ਨਹੀਂ ਭੇਜੀ ਜਾਵੇਗੀ।';

  @override
  String get notificationsEnabled => 'ਸੂਚਨਾਵਾਂ ਸਮਰੱਥ ਕੀਤੀਆਂ ਗਈਆਂ';

  @override
  String get notificationsDisabled => 'ਸੂਚਨਾਵਾਂ ਅਸਮਰੱਥ ਕੀਤੀਆਂ ਗਈਆਂ';

  @override
  String get help => 'Help';

  @override
  String get gettingStarted => 'Getting Started';

  @override
  String get gettingStartedDescription =>
      'Book Weeks helps you manage your weekly schedule and sessions. Use the calendar at the top to navigate between weeks, and tap on any day to view or add sessions for that day.';

  @override
  String get creatingSessions => 'Creating Sessions';

  @override
  String get creatingSessionsDescription =>
      'To create a session, tap the + button on any day. You can set the session title, time, duration, and add students. Sessions are automatically saved and will appear on your calendar.';

  @override
  String get managingStudents => 'Managing Students';

  @override
  String get managingStudentsDescription =>
      'When creating or editing a session, you can add students by tapping the + button in the students section. You can add student names, nicknames, ages, and phone numbers. Students can be reused across multiple sessions.';

  @override
  String get usingTemplates => 'Using Templates';

  @override
  String get usingTemplatesDescription =>
      'Templates allow you to quickly create sessions with pre-configured students. Create templates from the menu (three dots) → Manage Templates. When creating a session, you can select a template to automatically add its students.';

  @override
  String get notificationsHelp => 'Notifications';

  @override
  String get notificationsHelpDescription =>
      'You can receive notifications before your sessions start. Go to Notification Settings (bell icon) to enable notifications, set the timing (how many minutes before), and test your notification settings. Make sure to grant notification permissions when prompted.';

  @override
  String get exportImport => 'Export & Import';

  @override
  String get exportImportDescription =>
      'You can export your data (sessions, students, templates) to a YAML file for backup or transfer. Use the menu (three dots) → Export Data. To import, use Import Data from the same menu. This is useful for backing up your data or moving it to another device.';

  @override
  String get navigationTips => 'Navigation Tips';

  @override
  String get navigationTipsDescription =>
      '• Use the week calendar to navigate between weeks\n• Tap on day tabs to view sessions for that day\n• Use the All Events button (calendar icon) to see all sessions in a list\n• Access settings via the icons in the top bar: Theme (palette), Events (calendar), Notifications (bell), and Help (question mark)';
}
