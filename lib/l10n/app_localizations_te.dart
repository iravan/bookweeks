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
}
