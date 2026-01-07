// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'வாரங்கள் முன்பதிவு';

  @override
  String get selectWeek => 'வாரத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get mon => 'திங்கள்';

  @override
  String get tue => 'செவ்வாய்';

  @override
  String get wed => 'புதன்';

  @override
  String get thu => 'வியாழன்';

  @override
  String get fri => 'வெள்ளி';

  @override
  String get sat => 'சனி';

  @override
  String get sun => 'ஞாயிறு';

  @override
  String get noSessionsScheduled => 'அமர்வுகள் திட்டமிடப்படவில்லை';

  @override
  String get tapToAddSession => 'அமர்வைச் சேர்க்க + பொத்தானைத் தட்டவும்';

  @override
  String student(int count) {
    return 'மாணவர்';
  }

  @override
  String students(int count) {
    return 'மாணவர்கள்';
  }

  @override
  String get deleteSession => 'அமர்வை நீக்கு';

  @override
  String deleteSessionConfirm(String title) {
    return '\"$title\" ஐ நீக்க விரும்புகிறீர்களா?';
  }

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get delete => 'நீக்கு';

  @override
  String get createSession => 'அமர்வை உருவாக்கு';

  @override
  String get editSession => 'அமர்வைத் திருத்து';

  @override
  String get title => 'தலைப்பு';

  @override
  String get titleRequired => 'தயவுசெய்து தலைப்பை உள்ளிடவும்';

  @override
  String get startTime => 'தொடக்க நேரம்';

  @override
  String get endTime => 'முடிவு நேரம்';

  @override
  String get endTimeAfterStart =>
      'முடிவு நேரம் தொடக்க நேரத்திற்குப் பிறகு இருக்க வேண்டும்';

  @override
  String get descriptionOptional => 'விளக்கம் (விருப்பமானது)';

  @override
  String get save => 'சேமி';

  @override
  String get add => 'சேர்';

  @override
  String get edit => 'திருத்து';

  @override
  String get allEvents => 'அனைத்து நிகழ்வுகள்';

  @override
  String get manageTemplates => 'டெம்ப்ளேட்டுகளை நிர்வகிக்கவும்';

  @override
  String get exportData => 'தரவை ஏற்றுமதி செய்யவும்';

  @override
  String get importData => 'தரவை இறக்குமதி செய்யவும்';

  @override
  String get saveExportFile => 'ஏற்றுமதி கோப்பைச் சேமிக்கவும்';

  @override
  String exportSuccessful(String path) {
    return 'ஏற்றுமதி வெற்றிகரமாக!\nசேமிக்கப்பட்டது: $path';
  }

  @override
  String exportFailed(String error) {
    return 'ஏற்றுமதி தோல்வி: $error';
  }

  @override
  String get importSuccessful => 'இறக்குமதி வெற்றிகரமாக';

  @override
  String get importFailed => 'இறக்குமதி தோல்வி';

  @override
  String get errorReadingFile => 'கோப்பைப் படிக்கும்போது பிழை';

  @override
  String error(String error) {
    return 'பிழை: $error';
  }

  @override
  String get ok => 'சரி';

  @override
  String get searchEvents => 'நிகழ்வுகளைத் தேடவும்...';

  @override
  String get noEventsScheduled => 'நிகழ்வுகள் திட்டமிடப்படவில்லை';

  @override
  String get noEventsFound => 'நிகழ்வுகள் கிடைக்கவில்லை';

  @override
  String get createEventsFromCalendar =>
      'நாட்காட்டியிலிருந்து நிகழ்வுகளை உருவாக்கவும்';

  @override
  String get studentsJoiningThisSession => 'இந்த அமர்வில் சேரும் மாணவர்கள்';

  @override
  String get addMember => 'உறுப்பினரைச் சேர்க்கவும்';

  @override
  String get noStudentsAddedYet => 'இன்னும் மாணவர்கள் சேர்க்கப்படவில்லை';

  @override
  String get tapToAddMember => '+ ஐத் தட்டி உறுப்பினரைச் சேர்க்கவும்';

  @override
  String get allMembers => 'அனைத்து உறுப்பினர்கள்';

  @override
  String get addToSession => 'அமர்வில் சேர்';

  @override
  String get removeFromSession => 'அமர்விலிருந்து நீக்கு';

  @override
  String get name => 'பெயர்';

  @override
  String get nameRequired => 'தயவுசெய்து பெயரை உள்ளிடவும்';

  @override
  String get nicknameOptional => 'புனைப்பெயர் (விருப்பமானது)';

  @override
  String get ageOptional => 'வயது (விருப்பமானது)';

  @override
  String get ageInvalid => 'தயவுசெய்து சரியான வயதை உள்ளிடவும்';

  @override
  String get phoneNumberOptional => 'தொலைபேசி எண் (விருப்பமானது)';

  @override
  String get phoneNumberHint => 'எ.கா: +91 98765 43210';

  @override
  String get addMemberTitle => 'உறுப்பினரைச் சேர்க்கவும்';

  @override
  String get editMemberTitle => 'உறுப்பினரைத் திருத்தவும்';

  @override
  String get member => 'உறுப்பினர்';

  @override
  String nameLabel(String name) {
    return 'பெயர்: $name';
  }

  @override
  String ageLabel(int age) {
    return 'வயது: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'தொலைபேசி: $phone';
  }

  @override
  String get templateOptional => 'டெம்ப்ளேட் (விருப்பமானது)';

  @override
  String get none => 'எதுவும் இல்லை';

  @override
  String get saveAsTemplate => 'டெம்ப்ளேட்டாகச் சேமி';

  @override
  String get saveAsTemplateSubtitle =>
      'எதிர்கால அமர்வுகளுக்கு இந்த அமர்வை டெம்ப்ளேட்டாகப் பயன்படுத்தவும்';

  @override
  String get templateName => 'டெம்ப்ளேட் பெயர்';

  @override
  String get templateNameHelper => 'இந்த டெம்ப்ளேட்டை அடையாளம் காண பெயர்';

  @override
  String get templateNameRequired => 'தயவுசெய்து டெம்ப்ளேட் பெயரை உள்ளிடவும்';

  @override
  String get defaultSessionTitle => 'இயல்புநிலை அமர்வு தலைப்பு';

  @override
  String get defaultSessionTitleHelper =>
      'இந்த டெம்ப்ளேட்டிலிருந்து அமர்வுகளை உருவாக்கும்போது பயன்படுத்தப்படும் தலைப்பு';

  @override
  String get sessionTitleRequired => 'தயவுசெய்து அமர்வு தலைப்பை உள்ளிடவும்';

  @override
  String get createTemplate => 'டெம்ப்ளேட்டை உருவாக்கு';

  @override
  String get editTemplate => 'டெம்ப்ளேட்டைத் திருத்து';

  @override
  String get create => 'உருவாக்கு';

  @override
  String get templateNameDialogTitle => 'டெம்ப்ளேட் பெயர்';

  @override
  String get templateNameDialogHelper =>
      'எளிதான அடையாளத்திற்காக இந்த டெம்ப்ளேட்டிற்கு பெயரைக் கொடுங்கள்';

  @override
  String get templateManagement => 'டெம்ப்ளேட் நிர்வாகம்';

  @override
  String get noTemplatesYet => 'இன்னும் டெம்ப்ளேட்டுகள் இல்லை';

  @override
  String get createSessionAndSaveAsTemplate =>
      'அமர்வை உருவாக்கி \"டெம்ப்ளேட்டாகச் சேமி\" என்பதைத் தேர்ந்தெடுக்கவும்';

  @override
  String get deleteTemplate => 'டெம்ப்ளேட்டை நீக்கு';

  @override
  String deleteTemplateConfirm(String title) {
    return '\"$title\" ஐ நீக்க விரும்புகிறீர்களா?';
  }

  @override
  String session(String title) {
    return 'அமர்வு: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'டெம்ப்ளேட்டாகச் சேமி';

  @override
  String templateSavedSuccessfully(String name) {
    return 'டெம்ப்ளேட் \"$name\" வெற்றிகரமாகச் சேமிக்கப்பட்டது';
  }

  @override
  String get debug => 'டீபக்';

  @override
  String get debugDateSimulation => 'டீபக் தேதி சிமுலேஷன்';

  @override
  String get setCustomDate => 'தனிப்பயன் தேதியை அமைக்கவும்';

  @override
  String get clear => 'அழிக்கவும்';

  @override
  String now(String date) {
    return 'இப்போது: $date';
  }

  @override
  String get today => 'இன்று';

  @override
  String get yesterday => 'நேற்று';

  @override
  String get tomorrow => 'நாளை';

  @override
  String daysAgo(int count) {
    return '$count நாட்களுக்கு முன்பு';
  }

  @override
  String daysLater(int count) {
    return '$count நாட்களுக்குப் பிறகு';
  }
}
