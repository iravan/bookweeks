// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'വാരങ്ങൾ ബുക്കിംഗ്';

  @override
  String get earlierWeeks => 'മുൻ ആഴ്ചകൾ';

  @override
  String get older => 'പഴയത്';

  @override
  String get selectWeek => 'വാരം തിരഞ്ഞെടുക്കുക';

  @override
  String get mon => 'തിങ്കൾ';

  @override
  String get tue => 'ചൊവ്വ';

  @override
  String get wed => 'ബുധൻ';

  @override
  String get thu => 'വ്യാഴം';

  @override
  String get fri => 'വെള്ളി';

  @override
  String get sat => 'ശനി';

  @override
  String get sun => 'ഞായർ';

  @override
  String get noSessionsScheduled => 'സെഷനുകൾ ഷെഡ്യൂൾ ചെയ്തിട്ടില്ല';

  @override
  String get tapToAddSession => 'സെഷൻ ചേർക്കാൻ + ബട്ടൺ ടാപ്പ് ചെയ്യുക';

  @override
  String student(int count) {
    return 'വിദ്യാർത്ഥി';
  }

  @override
  String students(int count) {
    return 'വിദ്യാർത്ഥികൾ';
  }

  @override
  String get deleteSession => 'സെഷൻ ഇല്ലാതാക്കുക';

  @override
  String deleteSessionConfirm(String title) {
    return '\"$title\" ഇല്ലാതാക്കാൻ നിങ്ങൾ ഉറപ്പാണോ?';
  }

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get delete => 'ഇല്ലാതാക്കുക';

  @override
  String get createSession => 'സെഷൻ സൃഷ്ടിക്കുക';

  @override
  String get editSession => 'സെഷൻ എഡിറ്റ് ചെയ്യുക';

  @override
  String get title => 'തലക്കെട്ട്';

  @override
  String get titleRequired => 'ദയവായി ഒരു തലക്കെട്ട് നൽകുക';

  @override
  String get startTime => 'ആരംഭ സമയം';

  @override
  String get endTime => 'അവസാന സമയം';

  @override
  String get endTimeAfterStart => 'അവസാന സമയം ആരംഭ സമയത്തിന് ശേഷം ആയിരിക്കണം';

  @override
  String get descriptionOptional => 'വിവരണം (ഓപ്ഷണൽ)';

  @override
  String get save => 'സേവ് ചെയ്യുക';

  @override
  String get add => 'ചേർക്കുക';

  @override
  String get edit => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String get allEvents => 'എല്ലാ ഇവന്റുകളും';

  @override
  String get manageTemplates => 'ടെംപ്ലേറ്റുകൾ മാനേജ് ചെയ്യുക';

  @override
  String get exportData => 'ഡാറ്റ എക്സ്പോർട്ട് ചെയ്യുക';

  @override
  String get importData => 'ഡാറ്റ ഇംപോർട്ട് ചെയ്യുക';

  @override
  String get saveExportFile => 'എക്സ്പോർട്ട് ഫയൽ സേവ് ചെയ്യുക';

  @override
  String exportSuccessful(String path) {
    return 'എക്സ്പോർട്ട് വിജയകരമാണ്!\nസേവ് ചെയ്തു: $path';
  }

  @override
  String exportFailed(String error) {
    return 'എക്സ്പോർട്ട് പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get importSuccessful => 'ഇംപോർട്ട് വിജയകരമാണ്';

  @override
  String get importFailed => 'ഇംപോർട്ട് പരാജയപ്പെട്ടു';

  @override
  String get errorReadingFile => 'ഫയൽ വായിക്കുന്നതിൽ പിശക്';

  @override
  String error(String error) {
    return 'പിശക്: $error';
  }

  @override
  String get ok => 'ശരി';

  @override
  String get searchEvents => 'ഇവന്റുകൾ തിരയുക...';

  @override
  String get noEventsScheduled => 'ഇവന്റുകൾ ഷെഡ്യൂൾ ചെയ്തിട്ടില്ല';

  @override
  String get noEventsFound => 'ഇവന്റുകൾ കണ്ടെത്തിയില്ല';

  @override
  String get createEventsFromCalendar => 'കലണ്ടറിൽ നിന്ന് ഇവന്റുകൾ സൃഷ്ടിക്കുക';

  @override
  String get studentsJoiningThisSession => 'ഈ സെഷനിൽ ചേരുന്ന വിദ്യാർത്ഥികൾ';

  @override
  String get addMember => 'മെംബർ ചേർക്കുക';

  @override
  String get noStudentsAddedYet => 'ഇതുവരെ വിദ്യാർത്ഥികൾ ചേർത്തിട്ടില്ല';

  @override
  String get tapToAddMember => '+ ടാപ്പ് ചെയ്ത് മെംബർ ചേർക്കുക';

  @override
  String get allMembers => 'എല്ലാ മെംബർമാരും';

  @override
  String get addToSession => 'സെഷനിലേക്ക് ചേർക്കുക';

  @override
  String get removeFromSession => 'സെഷനിൽ നിന്ന് നീക്കം ചെയ്യുക';

  @override
  String get name => 'പേര്';

  @override
  String get nameRequired => 'ദയവായി ഒരു പേര് നൽകുക';

  @override
  String get nicknameOptional => 'വിളിപ്പേര് (ഓപ്ഷണൽ)';

  @override
  String get ageOptional => 'വയസ്സ് (ഓപ്ഷണൽ)';

  @override
  String get ageInvalid => 'ദയവായി സാധുവായ വയസ്സ് നൽകുക';

  @override
  String get phoneNumberOptional => 'ഫോൺ നമ്പർ (ഓപ്ഷണൽ)';

  @override
  String get phoneNumberHint => 'ഉദാ: +91 98765 43210';

  @override
  String get addMemberTitle => 'മെംബർ ചേർക്കുക';

  @override
  String get editMemberTitle => 'മെംബർ എഡിറ്റ് ചെയ്യുക';

  @override
  String get member => 'മെംബർ';

  @override
  String nameLabel(String name) {
    return 'പേര്: $name';
  }

  @override
  String ageLabel(int age) {
    return 'വയസ്സ്: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'ഫോൺ: $phone';
  }

  @override
  String get templateOptional => 'ടെംപ്ലേറ്റ് (ഓപ്ഷണൽ)';

  @override
  String get none => 'ഒന്നുമില്ല';

  @override
  String get saveAsTemplate => 'ടെംപ്ലേറ്റായി സേവ് ചെയ്യുക';

  @override
  String get saveAsTemplateSubtitle =>
      'ഭാവി സെഷനുകൾക്കായി ഈ സെഷൻ ടെംപ്ലേറ്റായി ഉപയോഗിക്കുക';

  @override
  String get templateName => 'ടെംപ്ലേറ്റ് പേര്';

  @override
  String get templateNameHelper => 'ഈ ടെംപ്ലേറ്റ് തിരിച്ചറിയാൻ പേര്';

  @override
  String get templateNameRequired => 'ദയവായി ടെംപ്ലേറ്റ് പേര് നൽകുക';

  @override
  String get defaultSessionTitle => 'ഡിഫോൾട്ട് സെഷൻ തലക്കെട്ട്';

  @override
  String get defaultSessionTitleHelper =>
      'ഈ ടെംപ്ലേറ്റിൽ നിന്ന് സെഷനുകൾ സൃഷ്ടിക്കുമ്പോൾ ഉപയോഗിക്കുന്ന തലക്കെട്ട്';

  @override
  String get sessionTitleRequired => 'ദയവായി സെഷൻ തലക്കെട്ട് നൽകുക';

  @override
  String get createTemplate => 'ടെംപ്ലേറ്റ് സൃഷ്ടിക്കുക';

  @override
  String get editTemplate => 'ടെംപ്ലേറ്റ് എഡിറ്റ് ചെയ്യുക';

  @override
  String get create => 'സൃഷ്ടിക്കുക';

  @override
  String get templateNameDialogTitle => 'ടെംപ്ലേറ്റ് പേര്';

  @override
  String get templateNameDialogHelper =>
      'എളുപ്പത്തിൽ തിരിച്ചറിയാൻ ഈ ടെംപ്ലേറ്റിന് ഒരു പേര് നൽകുക';

  @override
  String get templateManagement => 'ടെംപ്ലേറ്റ് മാനേജ്മെന്റ്';

  @override
  String get noTemplatesYet => 'ഇതുവരെ ടെംപ്ലേറ്റുകൾ ഇല്ല';

  @override
  String get createSessionAndSaveAsTemplate =>
      'ഒരു സെഷൻ സൃഷ്ടിക്കുകയും \"ടെംപ്ലേറ്റായി സേവ് ചെയ്യുക\" തിരഞ്ഞെടുക്കുകയും ചെയ്യുക';

  @override
  String get deleteTemplate => 'ടെംപ്ലേറ്റ് ഇല്ലാതാക്കുക';

  @override
  String deleteTemplateConfirm(String title) {
    return '\"$title\" ഇല്ലാതാക്കാൻ നിങ്ങൾ ഉറപ്പാണോ?';
  }

  @override
  String session(String title) {
    return 'സെഷൻ: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'ടെംപ്ലേറ്റായി സേവ് ചെയ്യുക';

  @override
  String templateSavedSuccessfully(String name) {
    return 'ടെംപ്ലേറ്റ് \"$name\" വിജയകരമായി സേവ് ചെയ്തു';
  }

  @override
  String get debug => 'ഡീബഗ്';

  @override
  String get debugDateSimulation => 'ഡീബഗ് തീയതി സിമുലേഷൻ';

  @override
  String get setCustomDate => 'കസ്റ്റം തീയതി സെറ്റ് ചെയ്യുക';

  @override
  String get clear => 'മായ്ക്കുക';

  @override
  String now(String date) {
    return 'ഇപ്പോൾ: $date';
  }

  @override
  String get today => 'ഇന്ന്';

  @override
  String get yesterday => 'ഇന്നലെ';

  @override
  String get tomorrow => 'നാളെ';

  @override
  String daysAgo(int count) {
    return '$count ദിവസങ്ങൾക്ക് മുമ്പ്';
  }

  @override
  String daysLater(int count) {
    return '$count ദിവസങ്ങൾക്ക് ശേഷം';
  }

  @override
  String get notificationSettings => 'അറിയിപ്പ് സെറ്റിംഗുകൾ';

  @override
  String get notificationTiming => 'അറിയിപ്പ് സമയം';

  @override
  String get notificationTimingDescription =>
      'ഓരോ സെഷൻ ആരംഭിക്കുന്നതിന് മുമ്പ് അറിയിപ്പുകൾ എപ്പോൾ സ്വീകരിക്കണമെന്ന് തിരഞ്ഞെടുക്കുക';

  @override
  String get atEventStart => 'ഇവന്റ് ആരംഭത്തിൽ';

  @override
  String beforeEventStart(String timing) {
    return 'ഇവന്റ് ആരംഭിക്കുന്നതിന് $timing മുമ്പ്';
  }

  @override
  String get notificationTimingUpdated => 'അറിയിപ്പ് സമയം അപ്‌ഡേറ്റ് ചെയ്തു';

  @override
  String get aboutNotifications => 'അറിയിപ്പുകളെക്കുറിച്ച്';

  @override
  String get notificationInfo =>
      'ഓരോ ഷെഡ്യൂൾ ചെയ്ത സെഷൻ ആരംഭിക്കുന്നതിന് മുമ്പ് നിങ്ങൾക്ക് അറിയിപ്പുകൾ ലഭിക്കും. നിങ്ങൾ സെഷനുകൾ സൃഷ്ടിക്കുമ്പോഴോ അപ്‌ഡേറ്റ് ചെയ്യുമ്പോഴോ അറിയിപ്പുകൾ സ്വയമേവ ഷെഡ്യൂൾ ചെയ്യപ്പെടുന്നു, കൂടാതെ ആപ്പ് ലോഞ്ച് ചെയ്യുമ്പോൾ എല്ലാ നിലവിലുള്ള സെഷനുകളും ഷെഡ്യൂൾ ചെയ്യപ്പെടുന്നു.';

  @override
  String get rescheduleNotifications => 'അറിയിപ്പുകൾ വീണ്ടും ഷെഡ്യൂൾ ചെയ്യുക';

  @override
  String get rescheduleNotificationsDescription =>
      'എല്ലാ നിലവിലുള്ള ഭാവി സെഷനുകൾക്കും അറിയിപ്പുകൾ മാനുവലായി വീണ്ടും ഷെഡ്യൂൾ ചെയ്യുക. നിങ്ങൾ ഇപ്പോൾ അറിയിപ്പുകൾ പ്രവർത്തനക്ഷമമാക്കിയിട്ടുണ്ടെങ്കിൽ അല്ലെങ്കിൽ എല്ലാ ഇവന്റുകൾക്കും അറിയിപ്പുകൾ ഷെഡ്യൂൾ ചെയ്തിട്ടുണ്ടെന്ന് ഉറപ്പാക്കാൻ ആഗ്രഹിക്കുന്നുവെങ്കിൽ ഇത് ഉപയോഗപ്രദമാണ്.';

  @override
  String get rescheduleNow => 'ഇപ്പോൾ വീണ്ടും ഷെഡ്യൂൾ ചെയ്യുക';

  @override
  String get rescheduling => 'വീണ്ടും ഷെഡ്യൂൾ ചെയ്യുന്നു...';

  @override
  String notificationsRescheduled(int count) {
    return '$count ഭാവി സെഷൻ(കൾ)‌ക്കായി അറിയിപ്പുകൾ വീണ്ടും ഷെഡ്യൂൾ ചെയ്തു';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'അറിയിപ്പുകൾ വീണ്ടും ഷെഡ്യൂൾ ചെയ്യുന്നതിൽ പിശക്: $error';
  }

  @override
  String get permissionsRequired => 'അറിയിപ്പ് അനുമതികൾ ആവശ്യമാണ്';

  @override
  String get permissionsRequiredDescription =>
      'നിങ്ങളുടെ സെഷനുകൾക്കായി ഓർമ്മപ്പെടുത്തലുകൾ സ്വീകരിക്കാൻ ദയവായി അറിയിപ്പ് അനുമതികൾ നൽകുക. അനുമതികൾ അഭ്യർത്ഥിക്കാൻ താഴെയുള്ള ബട്ടൺ ടാപ്പ് ചെയ്യുക.';

  @override
  String get requestPermissions => 'അനുമതികൾ അഭ്യർത്ഥിക്കുക';

  @override
  String get permissionsGranted => 'അറിയിപ്പ് അനുമതികൾ നൽകി!';

  @override
  String get permissionsDenied =>
      'അറിയിപ്പ് അനുമതികൾ നിരസിക്കപ്പെട്ടു. ദയവായി സെറ്റിംഗുകളിൽ അവ പ്രവർത്തനക്ഷമമാക്കുക.';

  @override
  String get timing0Min => '0 മിനിറ്റ്';

  @override
  String get timing1Min => '1 മിനിറ്റ്';

  @override
  String get timing5Mins => '5 മിനിറ്റ്';

  @override
  String get timing30Mins => '30 മിനിറ്റ്';

  @override
  String get timing1Hour => '1 മണിക്കൂർ';

  @override
  String get timing6Hours => '6 മണിക്കൂർ';

  @override
  String timingMinutes(int count) {
    return '$count മിനിറ്റ്';
  }

  @override
  String timingHours(int count) {
    return '$count മണിക്കൂർ';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count മണിക്കൂർ';
  }

  @override
  String get testNotifications => 'ടെസ്റ്റ് അറിയിപ്പുകൾ';

  @override
  String get testNotificationsDescription =>
      'അറിയിപ്പുകൾ പ്രവർത്തിക്കുന്നുവെന്ന് പരിശോധിക്കാൻ 2 സെക്കൻഡിൽ ഒരു ടെസ്റ്റ് അറിയിപ്പ് അയയ്ക്കുക।';

  @override
  String get sendTestNotification => 'ടെസ്റ്റ് അറിയിപ്പ് അയയ്ക്കുക';

  @override
  String get testNotificationScheduled =>
      'ടെസ്റ്റ് അറിയിപ്പ് ഷെഡ്യൂൾ ചെയ്തു! 2 സെക്കൻഡിൽ പരിശോധിക്കുക.';

  @override
  String get testNotificationTitle => 'ടെസ്റ്റ് അറിയിപ്പ്';

  @override
  String get testNotificationBody =>
      'നിങ്ങൾ ഇത് കാണുന്നുവെങ്കിൽ, അറിയിപ്പുകൾ പ്രവർത്തിക്കുന്നു!';

  @override
  String get scheduledTestNotificationTitle =>
      'ഷെഡ്യൂൾ ചെയ്ത ടെസ്റ്റ് അറിയിപ്പ്';

  @override
  String get scheduledTestNotificationBody =>
      'ഇത് 2 സെക്കൻഡ് മുമ്പ് ഷെഡ്യൂൾ ചെയ്തു';

  @override
  String startsAt(String time) {
    return '$time ൽ ആരംഭിക്കുന്നു';
  }

  @override
  String get themeSettings => 'തീം സെറ്റിംഗുകൾ';

  @override
  String get selectTheme => 'തീം തിരഞ്ഞെടുക്കുക';

  @override
  String get selectThemeDescription =>
      'ആപ്പിനായി ഒരു നിറ തീം തിരഞ്ഞെടുക്കുക। തീം മുഴുവൻ ആപ്ലിക്കേഷനിലും പ്രയോഗിക്കും।';

  @override
  String get themeChanged => 'തീം വിജയകരമായി മാറ്റി!';

  @override
  String get aboutTheme => 'തീമുകളെക്കുറിച്ച്';

  @override
  String get themeInfo =>
      'തീം മാറ്റുന്നത് ആപ്പിലുടനീളം നിറങ്ങൾ അപ്‌ഡേറ്റ് ചെയ്യും, ഇതിൽ ബട്ടണുകൾ, ആപ്പ് ബാറുകൾ, മറ്റ് UI ഘടകങ്ങൾ എന്നിവ ഉൾപ്പെടുന്നു। നിങ്ങളുടെ തീം പ്രാധാന്യം സംരക്ഷിക്കപ്പെടുകയും നിങ്ങൾ ആപ്പ് പുനരാരംഭിക്കുമ്പോൾ സ്വയമേവ പ്രയോഗിക്കുകയും ചെയ്യും।';

  @override
  String get enableNotifications => 'അറിയിപ്പുകൾ പ്രവർത്തനക്ഷമമാക്കുക';

  @override
  String get enableNotificationsDescription =>
      'അറിയിപ്പുകൾ ഓണോ ഓഫോ ചെയ്യുക. പ്രവർത്തനരഹിതമാക്കുമ്പോൾ, നിങ്ങളുടെ സെഷനുകൾക്കായി അറിയിപ്പുകൾ അയയ്ക്കില്ല.';

  @override
  String get notificationsEnabled => 'അറിയിപ്പുകൾ പ്രവർത്തനക്ഷമമാക്കി';

  @override
  String get notificationsDisabled => 'അറിയിപ്പുകൾ പ്രവർത്തനരഹിതമാക്കി';

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
