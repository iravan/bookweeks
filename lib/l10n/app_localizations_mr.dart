// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'आठवडे बुकिंग';

  @override
  String get selectWeek => 'आठवडा निवडा';

  @override
  String get mon => 'सोम';

  @override
  String get tue => 'मंगळ';

  @override
  String get wed => 'बुध';

  @override
  String get thu => 'गुरु';

  @override
  String get fri => 'शुक्र';

  @override
  String get sat => 'शनि';

  @override
  String get sun => 'रवि';

  @override
  String get noSessionsScheduled => 'कोणतेही सत्र नियोजित नाही';

  @override
  String get tapToAddSession => 'सत्र जोडण्यासाठी + बटण टॅप करा';

  @override
  String student(int count) {
    return 'विद्यार्थी';
  }

  @override
  String students(int count) {
    return 'विद्यार्थी';
  }

  @override
  String get deleteSession => 'सत्र हटवा';

  @override
  String deleteSessionConfirm(String title) {
    return 'तुम्हाला \"$title\" हटवायचे आहे याची खात्री आहे?';
  }

  @override
  String get cancel => 'रद्द करा';

  @override
  String get delete => 'हटवा';

  @override
  String get createSession => 'सत्र तयार करा';

  @override
  String get editSession => 'सत्र संपादित करा';

  @override
  String get title => 'शीर्षक';

  @override
  String get titleRequired => 'कृपया शीर्षक प्रविष्ट करा';

  @override
  String get startTime => 'सुरुवातीची वेळ';

  @override
  String get endTime => 'समाप्तीची वेळ';

  @override
  String get endTimeAfterStart =>
      'समाप्तीची वेळ सुरुवातीच्या वेळेनंतर असली पाहिजे';

  @override
  String get descriptionOptional => 'वर्णन (पर्यायी)';

  @override
  String get save => 'जतन करा';

  @override
  String get add => 'जोडा';

  @override
  String get edit => 'संपादित करा';

  @override
  String get allEvents => 'सर्व कार्यक्रम';

  @override
  String get manageTemplates => 'टेम्प्लेट व्यवस्थापित करा';

  @override
  String get exportData => 'डेटा निर्यात करा';

  @override
  String get importData => 'डेटा आयात करा';

  @override
  String get saveExportFile => 'निर्यात फाइल जतन करा';

  @override
  String exportSuccessful(String path) {
    return 'निर्यात यशस्वी!\nजतन केले: $path';
  }

  @override
  String exportFailed(String error) {
    return 'निर्यात अयशस्वी: $error';
  }

  @override
  String get importSuccessful => 'आयात यशस्वी';

  @override
  String get importFailed => 'आयात अयशस्वी';

  @override
  String get errorReadingFile => 'फाइल वाचताना त्रुटी';

  @override
  String error(String error) {
    return 'त्रुटी: $error';
  }

  @override
  String get ok => 'ठीक आहे';

  @override
  String get searchEvents => 'कार्यक्रम शोधा...';

  @override
  String get noEventsScheduled => 'कोणतेही कार्यक्रम नियोजित नाहीत';

  @override
  String get noEventsFound => 'कार्यक्रम सापडले नाहीत';

  @override
  String get createEventsFromCalendar => 'कॅलेंडरमधून कार्यक्रम तयार करा';

  @override
  String get studentsJoiningThisSession => 'या सत्रात सामील होणारे विद्यार्थी';

  @override
  String get addMember => 'सदस्य जोडा';

  @override
  String get noStudentsAddedYet => 'अद्याप कोणतेही विद्यार्थी जोडलेले नाहीत';

  @override
  String get tapToAddMember => '+ टॅप करून सदस्य जोडा';

  @override
  String get allMembers => 'सर्व सदस्य';

  @override
  String get addToSession => 'सत्रात जोडा';

  @override
  String get removeFromSession => 'सत्रातून काढा';

  @override
  String get name => 'नाव';

  @override
  String get nameRequired => 'कृपया नाव प्रविष्ट करा';

  @override
  String get nicknameOptional => 'टोपणनाव (पर्यायी)';

  @override
  String get ageOptional => 'वय (पर्यायी)';

  @override
  String get ageInvalid => 'कृपया वैध वय प्रविष्ट करा';

  @override
  String get phoneNumberOptional => 'फोन नंबर (पर्यायी)';

  @override
  String get phoneNumberHint => 'उदा: +91 98765 43210';

  @override
  String get addMemberTitle => 'सदस्य जोडा';

  @override
  String get editMemberTitle => 'सदस्य संपादित करा';

  @override
  String get member => 'सदस्य';

  @override
  String nameLabel(String name) {
    return 'नाव: $name';
  }

  @override
  String ageLabel(int age) {
    return 'वय: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'फोन: $phone';
  }

  @override
  String get templateOptional => 'टेम्प्लेट (पर्यायी)';

  @override
  String get none => 'काहीही नाही';

  @override
  String get saveAsTemplate => 'टेम्प्लेट म्हणून जतन करा';

  @override
  String get saveAsTemplateSubtitle =>
      'भविष्यातील सत्रांसाठी हे सत्र टेम्प्लेट म्हणून वापरा';

  @override
  String get templateName => 'टेम्प्लेट नाव';

  @override
  String get templateNameHelper => 'या टेम्प्लेटला ओळखण्यासाठी नाव';

  @override
  String get templateNameRequired => 'कृपया टेम्प्लेट नाव प्रविष्ट करा';

  @override
  String get defaultSessionTitle => 'डीफॉल्ट सत्र शीर्षक';

  @override
  String get defaultSessionTitleHelper =>
      'या टेम्प्लेटमधून सत्र तयार करताना वापरलेले शीर्षक';

  @override
  String get sessionTitleRequired => 'कृपया सत्र शीर्षक प्रविष्ट करा';

  @override
  String get createTemplate => 'टेम्प्लेट तयार करा';

  @override
  String get editTemplate => 'टेम्प्लेट संपादित करा';

  @override
  String get create => 'तयार करा';

  @override
  String get templateNameDialogTitle => 'टेम्प्लेट नाव';

  @override
  String get templateNameDialogHelper =>
      'सोप्या ओळखीसाठी या टेम्प्लेटला नाव द्या';

  @override
  String get templateManagement => 'टेम्प्लेट व्यवस्थापन';

  @override
  String get noTemplatesYet => 'अद्याप कोणतेही टेम्प्लेट नाहीत';

  @override
  String get createSessionAndSaveAsTemplate =>
      'सत्र तयार करा आणि \"टेम्प्लेट म्हणून जतन करा\" निवडा';

  @override
  String get deleteTemplate => 'टेम्प्लेट हटवा';

  @override
  String deleteTemplateConfirm(String title) {
    return 'तुम्हाला \"$title\" हटवायचे आहे याची खात्री आहे?';
  }

  @override
  String session(String title) {
    return 'सत्र: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'टेम्प्लेट म्हणून जतन करा';

  @override
  String templateSavedSuccessfully(String name) {
    return 'टेम्प्लेट \"$name\" यशस्वीरित्या जतन केले';
  }

  @override
  String get debug => 'डीबग';

  @override
  String get debugDateSimulation => 'डीबग तारीख सिम्युलेशन';

  @override
  String get setCustomDate => 'सानुकूल तारीख सेट करा';

  @override
  String get clear => 'साफ करा';

  @override
  String now(String date) {
    return 'आता: $date';
  }

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'काल';

  @override
  String get tomorrow => 'उद्या';

  @override
  String daysAgo(int count) {
    return '$count दिवसांपूर्वी';
  }

  @override
  String daysLater(int count) {
    return '$count दिवसांनंतर';
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
  String get testNotifications => 'चाचणी सूचना';

  @override
  String get testNotificationsDescription =>
      'सूचना कार्य करत आहेत की नाही हे सत्यापित करण्यासाठी 2 सेकंदात एक चाचणी सूचना पाठवा.';

  @override
  String get sendTestNotification => 'चाचणी सूचना पाठवा';

  @override
  String get testNotificationScheduled =>
      'चाचणी सूचना वेळापत्रक केली आहे! 2 सेकंदात तपासा.';

  @override
  String get testNotificationTitle => 'चाचणी सूचना';

  @override
  String get testNotificationBody =>
      'जर तुम्ही हे पाहत असाल, तर सूचना कार्य करत आहेत!';

  @override
  String get scheduledTestNotificationTitle => 'वेळापत्रक केलेली चाचणी सूचना';

  @override
  String get scheduledTestNotificationBody =>
      'हे 2 सेकंदांपूर्वी वेळापत्रक केले होते';

  @override
  String startsAt(String time) {
    return '$time वाजता सुरू होते';
  }

  @override
  String get themeSettings => 'थीम सेटिंग्ज';

  @override
  String get selectTheme => 'थीम निवडा';

  @override
  String get selectThemeDescription =>
      'अ‍ॅपसाठी रंग थीम निवडा। थीम संपूर्ण अ‍ॅप्लिकेशनमध्ये लागू केली जाईल।';

  @override
  String get themeChanged => 'थीम यशस्वीरित्या बदलली!';

  @override
  String get aboutTheme => 'थीम बद्दल';

  @override
  String get themeInfo =>
      'थीम बदलल्याने अ‍ॅपमधील रंग अपडेट होतील, यात बटणे, अ‍ॅप बार आणि इतर UI घटक समाविष्ट आहेत। तुमची थीम प्राधान्य जतन केली जाईल आणि जेव्हा तुम्ही अ‍ॅप पुन्हा सुरू कराल तेव्हा स्वयंचलितपणे लागू केली जाईल।';
}
