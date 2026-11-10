// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'వారాల బుకింగ్';

  @override
  String get earlierWeeks => 'మునుపటి వారాలు';

  @override
  String get older => 'పాతవి';

  @override
  String get selectWeek => 'వారం ఎంచుకోండి';

  @override
  String get mon => 'సోమ';

  @override
  String get tue => 'మంగళ';

  @override
  String get wed => 'బుధ';

  @override
  String get thu => 'గురు';

  @override
  String get fri => 'శుక్ర';

  @override
  String get sat => 'శని';

  @override
  String get sun => 'ఆది';

  @override
  String get noSessionsScheduled => 'సెషన్లు షెడ్యూల్ చేయబడలేదు';

  @override
  String get tapToAddSession => 'సెషన్ జోడించడానికి + బటన్ నొక్కండి';

  @override
  String student(int count) {
    return 'విద్యార్థి';
  }

  @override
  String students(int count) {
    return 'విద్యార్థులు';
  }

  @override
  String get deleteSession => 'సెషన్ తొలగించు';

  @override
  String deleteSessionConfirm(String title) {
    return 'మీరు \"$title\" ను తొలగించాలని ఖచ్చితంగా అనుకుంటున్నారా?';
  }

  @override
  String get cancel => 'రద్దు చేయి';

  @override
  String get delete => 'తొలగించు';

  @override
  String get createSession => 'సెషన్ సృష్టించు';

  @override
  String get editSession => 'సెషన్ సవరించు';

  @override
  String get title => 'శీర్షిక';

  @override
  String get titleRequired => 'దయచేసి శీర్షిక నమోదు చేయండి';

  @override
  String get startTime => 'ప్రారంభ సమయం';

  @override
  String get endTime => 'ముగింపు సమయం';

  @override
  String get endTimeAfterStart => 'ముగింపు సమయం ప్రారంభ సమయం తర్వాత ఉండాలి';

  @override
  String get descriptionOptional => 'వివరణ (ఐచ్ఛికం)';

  @override
  String get save => 'సేవ్ చేయి';

  @override
  String get add => 'జోడించు';

  @override
  String get edit => 'సవరించు';

  @override
  String get allEvents => 'అన్ని ఈవెంట్లు';

  @override
  String get manageTemplates => 'టెంప్లేట్లను నిర్వహించండి';

  @override
  String get exportData => 'డేటా ఎగుమతి చేయండి';

  @override
  String get importData => 'డేటా దిగుమతి చేయండి';

  @override
  String get saveExportFile => 'ఎగుమతి ఫైల్ సేవ్ చేయండి';

  @override
  String exportSuccessful(String path) {
    return 'ఎగుమతి విజయవంతమైంది!\nసేవ్ చేయబడింది: $path';
  }

  @override
  String exportFailed(String error) {
    return 'ఎగుమతి విఫలమైంది: $error';
  }

  @override
  String get importSuccessful => 'దిగుమతి విజయవంతమైంది';

  @override
  String get importFailed => 'దిగుమతి విఫలమైంది';

  @override
  String get errorReadingFile => 'ఫైల్ చదవడంలో లోపం';

  @override
  String error(String error) {
    return 'లోపం: $error';
  }

  @override
  String get ok => 'సరే';

  @override
  String get searchEvents => 'ఈవెంట్లను శోధించండి...';

  @override
  String get noEventsScheduled => 'ఈవెంట్లు షెడ్యూల్ చేయబడలేదు';

  @override
  String get noEventsFound => 'ఈవెంట్లు కనుగొనబడలేదు';

  @override
  String get createEventsFromCalendar =>
      'క్యాలెండర్ నుండి ఈవెంట్లను సృష్టించండి';

  @override
  String get studentsJoiningThisSession => 'ఈ సెషన్‌లో చేరే విద్యార్థులు';

  @override
  String get addMember => 'సభ్యుడిని జోడించండి';

  @override
  String get noStudentsAddedYet => 'ఇంకా విద్యార్థులు జోడించబడలేదు';

  @override
  String get tapToAddMember => '+ నొక్కి సభ్యుడిని జోడించండి';

  @override
  String get allMembers => 'అన్ని సభ్యులు';

  @override
  String get addToSession => 'సెషన్‌కు జోడించు';

  @override
  String get removeFromSession => 'సెషన్ నుండి తొలగించు';

  @override
  String get name => 'పేరు';

  @override
  String get nameRequired => 'దయచేసి పేరు నమోదు చేయండి';

  @override
  String get nicknameOptional => 'మారుపేరు (ఐచ్ఛికం)';

  @override
  String get ageOptional => 'వయసు (ఐచ్ఛికం)';

  @override
  String get ageInvalid => 'దయచేసి చెల్లుబాటు అయ్యే వయసు నమోదు చేయండి';

  @override
  String get phoneNumberOptional => 'ఫోన్ నంబర్ (ఐచ్ఛికం)';

  @override
  String get phoneNumberHint => 'ఉదా: +91 98765 43210';

  @override
  String get addMemberTitle => 'సభ్యుడిని జోడించండి';

  @override
  String get editMemberTitle => 'సభ్యుడిని సవరించండి';

  @override
  String get member => 'సభ్యుడు';

  @override
  String nameLabel(String name) {
    return 'పేరు: $name';
  }

  @override
  String ageLabel(int age) {
    return 'వయసు: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'ఫోన్: $phone';
  }

  @override
  String get templateOptional => 'టెంప్లేట్ (ఐచ్ఛికం)';

  @override
  String get none => 'ఏదీ లేదు';

  @override
  String get saveAsTemplate => 'టెంప్లేట్‌గా సేవ్ చేయి';

  @override
  String get saveAsTemplateSubtitle =>
      'భవిష్యత్ సెషన్‌ల కోసం ఈ సెషన్‌ను టెంప్లేట్‌గా ఉపయోగించండి';

  @override
  String get templateName => 'టెంప్లేట్ పేరు';

  @override
  String get templateNameHelper => 'ఈ టెంప్లేట్‌ను గుర్తించడానికి పేరు';

  @override
  String get templateNameRequired => 'దయచేసి టెంప్లేట్ పేరు నమోదు చేయండి';

  @override
  String get defaultSessionTitle => 'డిఫాల్ట్ సెషన్ శీర్షిక';

  @override
  String get defaultSessionTitleHelper =>
      'ఈ టెంప్లేట్ నుండి సెషన్‌లను సృష్టించేటప్పుడు ఉపయోగించే శీర్షిక';

  @override
  String get sessionTitleRequired => 'దయచేసి సెషన్ శీర్షిక నమోదు చేయండి';

  @override
  String get createTemplate => 'టెంప్లేట్ సృష్టించు';

  @override
  String get editTemplate => 'టెంప్లేట్ సవరించు';

  @override
  String get create => 'సృష్టించు';

  @override
  String get templateNameDialogTitle => 'టెంప్లేట్ పేరు';

  @override
  String get templateNameDialogHelper =>
      'సులభమైన గుర్తింపు కోసం ఈ టెంప్లేట్‌కు పేరు ఇవ్వండి';

  @override
  String get templateManagement => 'టెంప్లేట్ నిర్వహణ';

  @override
  String get noTemplatesYet => 'ఇంకా టెంప్లేట్లు లేవు';

  @override
  String get createSessionAndSaveAsTemplate =>
      'సెషన్ సృష్టించి \"టెంప్లేట్‌గా సేవ్ చేయి\" చెక్ చేయండి';

  @override
  String get deleteTemplate => 'టెంప్లేట్ తొలగించు';

  @override
  String deleteTemplateConfirm(String title) {
    return 'మీరు \"$title\" ను తొలగించాలని ఖచ్చితంగా అనుకుంటున్నారా?';
  }

  @override
  String session(String title) {
    return 'సెషన్: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'టెంప్లేట్‌గా సేవ్ చేయి';

  @override
  String templateSavedSuccessfully(String name) {
    return 'టెంప్లేట్ \"$name\" విజయవంతంగా సేవ్ చేయబడింది';
  }

  @override
  String get debug => 'డీబగ్';

  @override
  String get debugDateSimulation => 'డీబగ్ తేదీ సిమ్యులేషన్';

  @override
  String get setCustomDate => 'కస్టమ్ తేదీ సెట్ చేయండి';

  @override
  String get clear => 'క్లియర్ చేయి';

  @override
  String now(String date) {
    return 'ఇప్పుడు: $date';
  }

  @override
  String get today => 'ఈరోజు';

  @override
  String get yesterday => 'నిన్న';

  @override
  String get tomorrow => 'రేపు';

  @override
  String daysAgo(int count) {
    return '$count రోజుల క్రితం';
  }

  @override
  String daysLater(int count) {
    return '$count రోజుల తర్వాత';
  }

  @override
  String get notificationSettings => 'నోటిఫికేషన్ సెట్టింగ్‌లు';

  @override
  String get notificationTiming => 'నోటిఫికేషన్ సమయం';

  @override
  String get notificationTimingDescription =>
      'ప్రతి సెషన్ ప్రారంభమవ్వడానికి ముందు నోటిఫికేషన్‌లను ఎప్పుడు స్వీకరించాలో ఎంచుకోండి';

  @override
  String get atEventStart => 'ఈవెంట్ ప్రారంభంలో';

  @override
  String beforeEventStart(String timing) {
    return 'ఈవెంట్ ప్రారంభానికి $timing ముందు';
  }

  @override
  String get notificationTimingUpdated => 'నోటిఫికేషన్ సమయం నవీకరించబడింది';

  @override
  String get aboutNotifications => 'నోటిఫికేషన్‌ల గురించి';

  @override
  String get notificationInfo =>
      'ప్రతి షెడ్యూల్ చేసిన సెషన్ ప్రారంభమవ్వడానికి ముందు మీరు నోటిఫికేషన్‌లను స్వీకరిస్తారు. మీరు సెషన్‌లను సృష్టించినప్పుడు లేదా నవీకరించినప్పుడు నోటిఫికేషన్‌లు స్వయంచాలకంగా షెడ్యూల్ చేయబడతాయి, మరియు అనువర్తనం ప్రారంభమైనప్పుడు అన్ని ఇప్పటికే ఉన్న సెషన్‌లు షెడ్యూల్ చేయబడతాయి.';

  @override
  String get rescheduleNotifications => 'నోటిఫికేషన్‌లను మళ్లీ షెడ్యూల్ చేయండి';

  @override
  String get rescheduleNotificationsDescription =>
      'అన్ని ఇప్పటికే ఉన్న భవిష్యత్ సెషన్‌లకు నోటిఫికేషన్‌లను మాన్యువల్‌గా మళ్లీ షెడ్యూల్ చేయండి. మీరు ఇప్పుడే నోటిఫికేషన్‌లను ప్రారంభించినట్లయితే లేదా అన్ని ఈవెంట్‌లకు నోటిఫికేషన్‌లు షెడ్యూల్ చేయబడ్డాయని నిర్ధారించాలనుకుంటే ఇది ఉపయోగపడుతుంది.';

  @override
  String get rescheduleNow => 'ఇప్పుడు మళ్లీ షెడ్యూల్ చేయండి';

  @override
  String get rescheduling => 'మళ్లీ షెడ్యూల్ చేయబడుతోంది...';

  @override
  String notificationsRescheduled(int count) {
    return '$count భవిష్యత్ సెషన్(ల)కు నోటిఫికేషన్‌లు మళ్లీ షెడ్యూల్ చేయబడ్డాయి';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'నోటిఫికేషన్‌లను మళ్లీ షెడ్యూల్ చేయడంలో లోపం: $error';
  }

  @override
  String get permissionsRequired => 'నోటిఫికేషన్ అనుమతులు అవసరం';

  @override
  String get permissionsRequiredDescription =>
      'మీ సెషన్‌లకు రిమైండర్‌లను స్వీకరించడానికి దయచేసి నోటిఫికేషన్ అనుమతులను మంజూరు చేయండి. అనుమతులను అభ్యర్థించడానికి క్రింద ఉన్న బటన్‌ను టాప్ చేయండి.';

  @override
  String get requestPermissions => 'అనుమతులను అభ్యర్థించండి';

  @override
  String get permissionsGranted => 'నోటిఫికేషన్ అనుమతులు మంజూరు చేయబడ్డాయి!';

  @override
  String get permissionsDenied =>
      'నోటిఫికేషన్ అనుమతులు తిరస్కరించబడ్డాయి. దయచేసి సెట్టింగ్‌లలో వాటిని ప్రారంభించండి.';

  @override
  String get timing0Min => '0 నిమిషం';

  @override
  String get timing1Min => '1 నిమిషం';

  @override
  String get timing5Mins => '5 నిమిషాలు';

  @override
  String get timing30Mins => '30 నిమిషాలు';

  @override
  String get timing1Hour => '1 గంట';

  @override
  String get timing6Hours => '6 గంటలు';

  @override
  String timingMinutes(int count) {
    return '$count నిమిషాలు';
  }

  @override
  String timingHours(int count) {
    return '$count గంట';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count గంటలు';
  }

  @override
  String get testNotifications => 'పరీక్ష నోటిఫికేషన్';

  @override
  String get testNotificationsDescription =>
      'అధిసూచనలు పనిచేస్తున్నాయో లేదో ధృవీకరించడానికి 2 సెకన్లలో ఒక పరీక్ష అధిసూచనను పంపండి।';

  @override
  String get sendTestNotification => 'పరీక్ష అధిసూచనను పంపండి';

  @override
  String get testNotificationScheduled =>
      'పరీక్ష అధిసూచన షెడ్యూల్ చేయబడింది! 2 సెకన్లలో తనిఖీ చేయండి.';

  @override
  String get testNotificationTitle => 'పరీక్ష అధిసూచన';

  @override
  String get testNotificationBody =>
      'మీరు దీన్ని చూస్తుంటే, అధిసూచనలు పనిచేస్తున్నాయి!';

  @override
  String get scheduledTestNotificationTitle =>
      'షెడ్యూల్ చేయబడిన పరీక్ష అధిసూచన';

  @override
  String get scheduledTestNotificationBody =>
      'ఇది 2 సెకన్ల క్రితం షెడ్యూల్ చేయబడింది';

  @override
  String startsAt(String time) {
    return '$time వద్ద ప్రారంభమవుతుంది';
  }

  @override
  String get themeSettings => 'థీమ్ సెట్టింగ్‌లు';

  @override
  String get selectTheme => 'థీమ్ ఎంచుకోండి';

  @override
  String get selectThemeDescription =>
      'యాప్ కోసం రంగు థీమ్‌ను ఎంచుకోండి। థీమ్ మొత్తం అనువర్తనంలో వర్తింపజేయబడుతుంది।';

  @override
  String get themeChanged => 'థీమ్ విజయవంతంగా మార్చబడింది!';

  @override
  String get aboutTheme => 'థీమ్‌ల గురించి';

  @override
  String get themeInfo =>
      'థీమ్‌ను మార్చడం వలన ఆప్‌లోని రంగులు నవీకరించబడతాయి, దీనిలో బటన్‌లు, ఆప్ బార్‌లు మరియు ఇతర UI అంశాలు ఉన్నాయి। మీ థీమ్ ప్రాధాన్యత సేవ్ చేయబడుతుంది మరియు మీరు ఆప్‌ను పునఃప్రారంభించినప్పుడు స్వయంచాలకంగా వర్తింపజేయబడుతుంది।';

  @override
  String get enableNotifications => 'నోటిఫికేషన్‌లను ప్రారంభించండి';

  @override
  String get enableNotificationsDescription =>
      'నోటిఫికేషన్‌లను ఆన్ లేదా ఆఫ్ చేయండి. నిష్క్రియం చేయబడినప్పుడు, మీ సెషన్‌లకు నోటిఫికేషన్‌లు పంపబడవు.';

  @override
  String get notificationsEnabled => 'నోటిఫికేషన్‌లు ప్రారంభించబడ్డాయి';

  @override
  String get notificationsDisabled => 'నోటిఫికేషన్‌లు నిష్క్రియం చేయబడ్డాయి';

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
