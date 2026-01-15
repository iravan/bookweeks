// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'सप्ताह बुकिंग';

  @override
  String get selectWeek => 'सप्ताह चुनें';

  @override
  String get mon => 'सोम';

  @override
  String get tue => 'मंगल';

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
  String get noSessionsScheduled => 'कोई सत्र निर्धारित नहीं है';

  @override
  String get tapToAddSession => 'सत्र जोड़ने के लिए + बटन दबाएं';

  @override
  String student(int count) {
    return 'छात्र';
  }

  @override
  String students(int count) {
    return 'छात्र';
  }

  @override
  String get deleteSession => 'सत्र हटाएं';

  @override
  String deleteSessionConfirm(String title) {
    return 'क्या आप वाकई \"$title\" को हटाना चाहते हैं?';
  }

  @override
  String get cancel => 'रद्द करें';

  @override
  String get delete => 'हटाएं';

  @override
  String get createSession => 'सत्र बनाएं';

  @override
  String get editSession => 'सत्र संपादित करें';

  @override
  String get title => 'शीर्षक';

  @override
  String get titleRequired => 'कृपया एक शीर्षक दर्ज करें';

  @override
  String get startTime => 'शुरुआती समय';

  @override
  String get endTime => 'समाप्ति समय';

  @override
  String get endTimeAfterStart => 'समाप्ति समय शुरुआती समय के बाद होना चाहिए';

  @override
  String get descriptionOptional => 'विवरण (वैकल्पिक)';

  @override
  String get save => 'सहेजें';

  @override
  String get add => 'जोड़ें';

  @override
  String get edit => 'संपादित करें';

  @override
  String get allEvents => 'सभी कार्यक्रम';

  @override
  String get manageTemplates => 'टेम्प्लेट प्रबंधित करें';

  @override
  String get exportData => 'डेटा निर्यात करें';

  @override
  String get importData => 'डेटा आयात करें';

  @override
  String get saveExportFile => 'निर्यात फ़ाइल सहेजें';

  @override
  String exportSuccessful(String path) {
    return 'निर्यात सफल!\nसहेजा गया: $path';
  }

  @override
  String exportFailed(String error) {
    return 'निर्यात विफल: $error';
  }

  @override
  String get importSuccessful => 'आयात सफल';

  @override
  String get importFailed => 'आयात विफल';

  @override
  String get errorReadingFile => 'फ़ाइल पढ़ने में त्रुटि';

  @override
  String error(String error) {
    return 'त्रुटि: $error';
  }

  @override
  String get ok => 'ठीक है';

  @override
  String get searchEvents => 'कार्यक्रम खोजें...';

  @override
  String get noEventsScheduled => 'कोई कार्यक्रम निर्धारित नहीं है';

  @override
  String get noEventsFound => 'कोई कार्यक्रम नहीं मिला';

  @override
  String get createEventsFromCalendar => 'कैलेंडर से कार्यक्रम बनाएं';

  @override
  String get studentsJoiningThisSession => 'इस सत्र में शामिल होने वाले छात्र';

  @override
  String get addMember => 'सदस्य जोड़ें';

  @override
  String get noStudentsAddedYet => 'अभी तक कोई छात्र नहीं जोड़े गए';

  @override
  String get tapToAddMember => '+ दबाकर सदस्य जोड़ें';

  @override
  String get allMembers => 'सभी सदस्य';

  @override
  String get addToSession => 'सत्र में जोड़ें';

  @override
  String get removeFromSession => 'सत्र से हटाएं';

  @override
  String get name => 'नाम';

  @override
  String get nameRequired => 'कृपया एक नाम दर्ज करें';

  @override
  String get nicknameOptional => 'उपनाम (वैकल्पिक)';

  @override
  String get ageOptional => 'उम्र (वैकल्पिक)';

  @override
  String get ageInvalid => 'कृपया एक वैध उम्र दर्ज करें';

  @override
  String get phoneNumberOptional => 'फ़ोन नंबर (वैकल्पिक)';

  @override
  String get phoneNumberHint => 'उदा: +91 98765 43210';

  @override
  String get addMemberTitle => 'सदस्य जोड़ें';

  @override
  String get editMemberTitle => 'सदस्य संपादित करें';

  @override
  String get member => 'सदस्य';

  @override
  String nameLabel(String name) {
    return 'नाम: $name';
  }

  @override
  String ageLabel(int age) {
    return 'उम्र: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'फ़ोन: $phone';
  }

  @override
  String get templateOptional => 'टेम्प्लेट (वैकल्पिक)';

  @override
  String get none => 'कोई नहीं';

  @override
  String get saveAsTemplate => 'टेम्प्लेट के रूप में सहेजें';

  @override
  String get saveAsTemplateSubtitle =>
      'भविष्य के सत्रों के लिए इस सत्र को टेम्प्लेट के रूप में उपयोग करें';

  @override
  String get templateName => 'टेम्प्लेट नाम';

  @override
  String get templateNameHelper => 'इस टेम्प्लेट की पहचान के लिए नाम';

  @override
  String get templateNameRequired => 'कृपया एक टेम्प्लेट नाम दर्ज करें';

  @override
  String get defaultSessionTitle => 'डिफ़ॉल्ट सत्र शीर्षक';

  @override
  String get defaultSessionTitleHelper =>
      'इस टेम्प्लेट से सत्र बनाते समय उपयोग किया जाने वाला शीर्षक';

  @override
  String get sessionTitleRequired => 'कृपया एक सत्र शीर्षक दर्ज करें';

  @override
  String get createTemplate => 'टेम्प्लेट बनाएं';

  @override
  String get editTemplate => 'टेम्प्लेट संपादित करें';

  @override
  String get create => 'बनाएं';

  @override
  String get templateNameDialogTitle => 'टेम्प्लेट नाम';

  @override
  String get templateNameDialogHelper =>
      'इस टेम्प्लेट को आसान पहचान के लिए एक नाम दें';

  @override
  String get templateManagement => 'टेम्प्लेट प्रबंधन';

  @override
  String get noTemplatesYet => 'अभी तक कोई टेम्प्लेट नहीं है';

  @override
  String get createSessionAndSaveAsTemplate =>
      'एक सत्र बनाएं और \"टेम्प्लेट के रूप में सहेजें\" चुनें';

  @override
  String get deleteTemplate => 'टेम्प्लेट हटाएं';

  @override
  String deleteTemplateConfirm(String title) {
    return 'क्या आप वाकई \"$title\" को हटाना चाहते हैं?';
  }

  @override
  String session(String title) {
    return 'सत्र: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'टेम्प्लेट के रूप में सहेजें';

  @override
  String templateSavedSuccessfully(String name) {
    return 'टेम्प्लेट \"$name\" सफलतापूर्वक सहेजा गया';
  }

  @override
  String get debug => 'डिबग';

  @override
  String get debugDateSimulation => 'डिबग तिथि सिमुलेशन';

  @override
  String get setCustomDate => 'कस्टम तिथि सेट करें';

  @override
  String get clear => 'साफ़ करें';

  @override
  String now(String date) {
    return 'अब: $date';
  }

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get tomorrow => 'कल';

  @override
  String daysAgo(int count) {
    return '$count दिन पहले';
  }

  @override
  String daysLater(int count) {
    return '$count दिन बाद';
  }

  @override
  String get notificationSettings => 'सूचना सेटिंग्स';

  @override
  String get notificationTiming => 'सूचना समय';

  @override
  String get notificationTimingDescription =>
      'प्रत्येक सत्र शुरू होने से पहले सूचनाएं कब प्राप्त करनी हैं, चुनें';

  @override
  String get atEventStart => 'इवेंट शुरू होने पर';

  @override
  String beforeEventStart(String timing) {
    return 'इवेंट शुरू होने से $timing पहले';
  }

  @override
  String get notificationTimingUpdated => 'सूचना समय अपडेट किया गया';

  @override
  String get aboutNotifications => 'सूचनाओं के बारे में';

  @override
  String get notificationInfo =>
      'आपको प्रत्येक निर्धारित सत्र शुरू होने से पहले सूचनाएं प्राप्त होंगी। जब आप सत्र बनाते या अपडेट करते हैं तो सूचनाएं स्वचालित रूप से निर्धारित होती हैं, और ऐप लॉन्च होने पर सभी मौजूदा सत्र निर्धारित होते हैं।';

  @override
  String get rescheduleNotifications => 'सूचनाएं पुनर्निर्धारित करें';

  @override
  String get rescheduleNotificationsDescription =>
      'सभी मौजूदा भविष्य के सत्रों के लिए सूचनाएं मैन्युअल रूप से पुनर्निर्धारित करें। यह उपयोगी है यदि आपने अभी सूचनाएं सक्षम की हैं या यह सुनिश्चित करना चाहते हैं कि सभी इवेंट्स में सूचनाएं निर्धारित हैं।';

  @override
  String get rescheduleNow => 'अभी पुनर्निर्धारित करें';

  @override
  String get rescheduling => 'पुनर्निर्धारित किया जा रहा है...';

  @override
  String notificationsRescheduled(int count) {
    return '$count भविष्य के सत्र(ों) के लिए सूचनाएं पुनर्निर्धारित की गईं';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'सूचनाएं पुनर्निर्धारित करने में त्रुटि: $error';
  }

  @override
  String get permissionsRequired => 'सूचना अनुमतियां आवश्यक';

  @override
  String get permissionsRequiredDescription =>
      'कृपया अपने सत्रों के लिए अनुस्मारक प्राप्त करने के लिए सूचना अनुमतियां दें। अनुमतियां अनुरोध करने के लिए नीचे दिए गए बटन पर टैप करें।';

  @override
  String get requestPermissions => 'अनुमतियां अनुरोध करें';

  @override
  String get permissionsGranted => 'सूचना अनुमतियां दी गईं!';

  @override
  String get permissionsDenied =>
      'सूचना अनुमतियां अस्वीकार कर दी गईं। कृपया सेटिंग्स में उन्हें सक्षम करें।';

  @override
  String get timing0Min => '0 मिनट';

  @override
  String get timing1Min => '1 मिनट';

  @override
  String get timing5Mins => '5 मिनट';

  @override
  String get timing30Mins => '30 मिनट';

  @override
  String get timing1Hour => '1 घंटा';

  @override
  String get timing6Hours => '6 घंटे';

  @override
  String timingMinutes(int count) {
    return '$count मिनट';
  }

  @override
  String timingHours(int count) {
    return '$count घंटा';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count घंटे';
  }

  @override
  String get testNotifications => 'परीक्षण सूचनाएं';

  @override
  String get testNotificationsDescription =>
      'सूचनाएं काम कर रही हैं या नहीं, यह सत्यापित करने के लिए 2 सेकंड में एक परीक्षण सूचना भेजें।';

  @override
  String get sendTestNotification => 'परीक्षण सूचना भेजें';

  @override
  String get testNotificationScheduled =>
      'परीक्षण सूचना निर्धारित की गई! 2 सेकंड में जांचें।';

  @override
  String get testNotificationTitle => 'परीक्षण सूचना';

  @override
  String get testNotificationBody =>
      'यदि आप यह देख रहे हैं, तो सूचनाएं काम कर रही हैं!';

  @override
  String get scheduledTestNotificationTitle => 'निर्धारित परीक्षण सूचना';

  @override
  String get scheduledTestNotificationBody =>
      'यह 2 सेकंड पहले निर्धारित किया गया था';

  @override
  String startsAt(String time) {
    return '$time पर शुरू होता है';
  }

  @override
  String get themeSettings => 'थीम सेटिंग्स';

  @override
  String get selectTheme => 'थीम चुनें';

  @override
  String get selectThemeDescription =>
      'ऐप के लिए एक रंग थीम चुनें। थीम पूरे एप्लिकेशन में लागू होगी।';

  @override
  String get themeChanged => 'थीम सफलतापूर्वक बदली गई!';

  @override
  String get aboutTheme => 'थीम के बारे में';

  @override
  String get themeInfo =>
      'थीम बदलने से ऐप भर में रंग अपडेट होंगे, जिसमें बटन, ऐप बार और अन्य UI तत्व शामिल हैं। आपकी थीम प्राथमिकता सहेजी जाएगी और जब आप ऐप को पुनरारंभ करेंगे तो स्वचालित रूप से लागू हो जाएगी।';

  @override
  String get enableNotifications => 'सूचनाएं सक्षम करें';

  @override
  String get enableNotificationsDescription =>
      'सूचनाएं चालू या बंद करें। जब अक्षम हो, तो आपके सत्रों के लिए कोई सूचना नहीं भेजी जाएगी।';

  @override
  String get notificationsEnabled => 'सूचनाएं सक्षम हो गईं';

  @override
  String get notificationsDisabled => 'सूचनाएं अक्षम हो गईं';

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
