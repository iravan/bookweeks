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

  @override
  String get notificationSettings => 'அறிவிப்பு அமைப்புகள்';

  @override
  String get notificationTiming => 'அறிவிப்பு நேரம்';

  @override
  String get notificationTimingDescription =>
      'ஒவ்வொரு அமர்வும் தொடங்குவதற்கு முன் அறிவிப்புகளை எப்போது பெற வேண்டும் என்பதைத் தேர்ந்தெடுக்கவும்';

  @override
  String get atEventStart => 'நிகழ்வு தொடங்கும்போது';

  @override
  String beforeEventStart(String timing) {
    return 'நிகழ்வு தொடங்குவதற்கு $timing முன்';
  }

  @override
  String get notificationTimingUpdated => 'அறிவிப்பு நேரம் புதுப்பிக்கப்பட்டது';

  @override
  String get aboutNotifications => 'அறிவிப்புகள் பற்றி';

  @override
  String get notificationInfo =>
      'ஒவ்வொரு திட்டமிடப்பட்ட அமர்வும் தொடங்குவதற்கு முன் நீங்கள் அறிவிப்புகளைப் பெறுவீர்கள். நீங்கள் அமர்வுகளை உருவாக்கும்போது அல்லது புதுப்பிக்கும்போது அறிவிப்புகள் தானாகவே திட்டமிடப்படுகின்றன, மற்றும் பயன்பாட்டைத் தொடங்கும்போது அனைத்து இருக்கும் அமர்வுகளும் திட்டமிடப்படுகின்றன.';

  @override
  String get rescheduleNotifications => 'அறிவிப்புகளை மீண்டும் திட்டமிடுங்கள்';

  @override
  String get rescheduleNotificationsDescription =>
      'அனைத்து இருக்கும் எதிர்கால அமர்வுகளுக்கும் அறிவிப்புகளை கைமுறையாக மீண்டும் திட்டமிடுங்கள். நீங்கள் இப்போது அறிவிப்புகளை இயக்கியிருந்தால் அல்லது அனைத்து நிகழ்வுகளுக்கும் அறிவிப்புகள் திட்டமிடப்பட்டுள்ளன என்பதை உறுதிப்படுத்த விரும்பினால் இது பயனுள்ளதாக இருக்கும்.';

  @override
  String get rescheduleNow => 'இப்போது மீண்டும் திட்டமிடுங்கள்';

  @override
  String get rescheduling => 'மீண்டும் திட்டமிடப்படுகிறது...';

  @override
  String notificationsRescheduled(int count) {
    return '$count எதிர்கால அமர்வு(கள்)க்கு அறிவிப்புகள் மீண்டும் திட்டமிடப்பட்டன';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'அறிவிப்புகளை மீண்டும் திட்டமிடுவதில் பிழை: $error';
  }

  @override
  String get permissionsRequired => 'அறிவிப்பு அனுமதிகள் தேவை';

  @override
  String get permissionsRequiredDescription =>
      'உங்கள் அமர்வுகளுக்கான நினைவூட்டல்களைப் பெற அறிவிப்பு அனுமதிகளை வழங்கவும். அனுமதிகளைக் கோர கீழே உள்ள பொத்தானைத் தட்டவும்.';

  @override
  String get requestPermissions => 'அனுமதிகளைக் கோரவும்';

  @override
  String get permissionsGranted => 'அறிவிப்பு அனுமதிகள் வழங்கப்பட்டன!';

  @override
  String get permissionsDenied =>
      'அறிவிப்பு அனுமதிகள் மறுக்கப்பட்டன. தயவுசெய்து அமைப்புகளில் அவற்றை இயக்கவும்.';

  @override
  String get timing0Min => '0 நிமிடம்';

  @override
  String get timing1Min => '1 நிமிடம்';

  @override
  String get timing5Mins => '5 நிமிடங்கள்';

  @override
  String get timing30Mins => '30 நிமிடங்கள்';

  @override
  String get timing1Hour => '1 மணி';

  @override
  String get timing6Hours => '6 மணி';

  @override
  String timingMinutes(int count) {
    return '$count நிமிடங்கள்';
  }

  @override
  String timingHours(int count) {
    return '$count மணி';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count மணி';
  }

  @override
  String get testNotifications => 'சோதனை அறிவிப்புகள்';

  @override
  String get testNotificationsDescription =>
      'அறிவிப்புகள் செயல்படுகின்றனவா என்பதைச் சரிபார்க்க 2 வினாடிகளில் ஒரு சோதனை அறிவிப்பை அனுப்பவும்।';

  @override
  String get sendTestNotification => 'சோதனை அறிவிப்பை அனுப்பவும்';

  @override
  String get testNotificationScheduled =>
      'சோதனை அறிவிப்பு திட்டமிடப்பட்டது! 2 வினாடிகளில் சரிபார்க்கவும்।';

  @override
  String get testNotificationTitle => 'சோதனை அறிவிப்பு';

  @override
  String get testNotificationBody =>
      'இதை நீங்கள் பார்த்தால், அறிவிப்புகள் செயல்படுகின்றன!';

  @override
  String get scheduledTestNotificationTitle => 'திட்டமிடப்பட்ட சோதனை அறிவிப்பு';

  @override
  String get scheduledTestNotificationBody =>
      'இது 2 வினாடிகளுக்கு முன்பு திட்டமிடப்பட்டது';

  @override
  String startsAt(String time) {
    return '$time இல் தொடங்குகிறது';
  }

  @override
  String get themeSettings => 'தீம் அமைப்புகள்';

  @override
  String get selectTheme => 'தீம் தேர்ந்தெடுக்கவும்';

  @override
  String get selectThemeDescription =>
      'ஆப்பிற்கான வண்ண தீமைத் தேர்ந்தெடுக்கவும்। தீம் முழு பயன்பாட்டிலும் பயன்படுத்தப்படும்।';

  @override
  String get themeChanged => 'தீம் வெற்றிகரமாக மாற்றப்பட்டது!';

  @override
  String get aboutTheme => 'தீம்கள் பற்றி';

  @override
  String get themeInfo =>
      'தீமை மாற்றுவது ஆப்பில் உள்ள வண்ணங்களைப் புதுப்பிக்கும், இதில் பொத்தான்கள், ஆப் பட்டைகள் மற்றும் பிற UI கூறுகள் அடங்கும்। உங்கள் தீம் விருப்பம் சேமிக்கப்படும் மற்றும் நீங்கள் ஆப்பை மீண்டும் தொடங்கும்போது தானாகப் பயன்படுத்தப்படும்।';

  @override
  String get enableNotifications => 'அறிவிப்புகளை இயக்கவும்';

  @override
  String get enableNotificationsDescription =>
      'அறிவிப்புகளை இயக்கவும் அல்லது முடக்கவும். முடக்கப்பட்டால், உங்கள் அமர்வுகளுக்கு எந்த அறிவிப்புகளும் அனுப்பப்படாது.';

  @override
  String get notificationsEnabled => 'அறிவிப்புகள் இயக்கப்பட்டன';

  @override
  String get notificationsDisabled => 'அறிவிப்புகள் முடக்கப்பட்டன';

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
