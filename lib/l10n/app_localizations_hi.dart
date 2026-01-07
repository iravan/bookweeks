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
}
