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
  String get earlierWeeks => 'आधीचे आठवडे';

  @override
  String get older => 'जुने';

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
  String get notificationSettings => 'सूचना सेटिंग्ज';

  @override
  String get notificationTiming => 'सूचना वेळ';

  @override
  String get notificationTimingDescription =>
      'प्रत्येक सत्र सुरू होण्यापूर्वी सूचना कधी मिळवायच्या ते निवडा';

  @override
  String get atEventStart => 'इव्हेंट सुरू होताना';

  @override
  String beforeEventStart(String timing) {
    return 'इव्हेंट सुरू होण्यापूर्वी $timing';
  }

  @override
  String get notificationTimingUpdated => 'सूचना वेळ अपडेट केली';

  @override
  String get aboutNotifications => 'सूचनांबद्दल';

  @override
  String get notificationInfo =>
      'तुम्ही प्रत्येक शेड्यूल केलेल्या सत्र सुरू होण्यापूर्वी सूचना प्राप्त कराल. तुम्ही सत्रे तयार किंवा अपडेट करता तेव्हा सूचना स्वयंचलितपणे शेड्यूल केल्या जातात, आणि अ‍ॅप लॉन्च होते तेव्हा सर्व विद्यमान सत्रे शेड्यूल केली जातात.';

  @override
  String get rescheduleNotifications => 'सूचना पुन्हा शेड्यूल करा';

  @override
  String get rescheduleNotificationsDescription =>
      'सर्व विद्यमान भविष्यातील सत्रांसाठी सूचना मॅन्युअली पुन्हा शेड्यूल करा. जर तुम्ही नुकतीच सूचना सक्षम केल्या असतील किंवा सर्व इव्हेंट्समध्ये सूचना शेड्यूल केल्या आहेत याची खात्री करू इच्छित असाल तर हे उपयुक्त आहे.';

  @override
  String get rescheduleNow => 'आता पुन्हा शेड्यूल करा';

  @override
  String get rescheduling => 'पुन्हा शेड्यूल करत आहे...';

  @override
  String notificationsRescheduled(int count) {
    return '$count भविष्यातील सत्र(े) साठी सूचना पुन्हा शेड्यूल केल्या';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'सूचना पुन्हा शेड्यूल करताना त्रुटी: $error';
  }

  @override
  String get permissionsRequired => 'सूचना परवानग्या आवश्यक';

  @override
  String get permissionsRequiredDescription =>
      'कृपया तुमच्या सत्रांसाठी रिमाइंडर मिळवण्यासाठी सूचना परवानग्या द्या. परवानग्या विनंती करण्यासाठी खालील बटण टॅप करा.';

  @override
  String get requestPermissions => 'परवानग्या विनंती करा';

  @override
  String get permissionsGranted => 'सूचना परवानग्या दिल्या!';

  @override
  String get permissionsDenied =>
      'सूचना परवानग्या नाकारल्या गेल्या. कृपया सेटिंग्जमध्ये त्या सक्षम करा.';

  @override
  String get timing0Min => '0 मिनिट';

  @override
  String get timing1Min => '1 मिनिट';

  @override
  String get timing5Mins => '5 मिनिट';

  @override
  String get timing30Mins => '30 मिनिट';

  @override
  String get timing1Hour => '1 तास';

  @override
  String get timing6Hours => '6 तास';

  @override
  String timingMinutes(int count) {
    return '$count मिनिट';
  }

  @override
  String timingHours(int count) {
    return '$count तास';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count तास';
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

  @override
  String get enableNotifications => 'सूचना सक्षम करा';

  @override
  String get enableNotificationsDescription =>
      'सूचना चालू किंवा बंद करा. अक्षम केल्यावर, तुमच्या सत्रांसाठी कोणतीही सूचना पाठवली जाणार नाही.';

  @override
  String get notificationsEnabled => 'सूचना सक्षम केल्या';

  @override
  String get notificationsDisabled => 'सूचना अक्षम केल्या';

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
