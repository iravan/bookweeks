// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appTitle => 'Bóka Vikur';

  @override
  String get selectWeek => 'Veldu Viku';

  @override
  String get mon => 'Mán';

  @override
  String get tue => 'Þri';

  @override
  String get wed => 'Mið';

  @override
  String get thu => 'Fim';

  @override
  String get fri => 'Fös';

  @override
  String get sat => 'Lau';

  @override
  String get sun => 'Sun';

  @override
  String get noSessionsScheduled => 'Engar fundir áætlaðir';

  @override
  String get tapToAddSession => 'Smelltu á + hnappinn til að bæta við fundi';

  @override
  String student(int count) {
    return 'nemandi';
  }

  @override
  String students(int count) {
    return 'nemendur';
  }

  @override
  String get deleteSession => 'Eyða Fundi';

  @override
  String deleteSessionConfirm(String title) {
    return 'Ertu viss um að þú viljir eyða \"$title\"?';
  }

  @override
  String get cancel => 'Hætta við';

  @override
  String get delete => 'Eyða';

  @override
  String get createSession => 'Búa til Fund';

  @override
  String get editSession => 'Breyta Fundi';

  @override
  String get title => 'Titill';

  @override
  String get titleRequired => 'Vinsamlegast sláðu inn titil';

  @override
  String get startTime => 'Upphafstími';

  @override
  String get endTime => 'Lokatími';

  @override
  String get endTimeAfterStart =>
      'Lokatíminn verður að vera eftir upphafstímann';

  @override
  String get descriptionOptional => 'Lýsing (valfrjálst)';

  @override
  String get save => 'Vista';

  @override
  String get add => 'Bæta við';

  @override
  String get edit => 'Breyta';

  @override
  String get allEvents => 'Allir Viðburðir';

  @override
  String get manageTemplates => 'Stjórna Sniðmátum';

  @override
  String get exportData => 'Flytja út Gögn';

  @override
  String get importData => 'Flytja inn Gögn';

  @override
  String get saveExportFile => 'Vista Útflutningsskrá';

  @override
  String exportSuccessful(String path) {
    return 'Útflutningur tókst!\nVistað í: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Útflutningur mistókst: $error';
  }

  @override
  String get importSuccessful => 'Innflutningur Tókst';

  @override
  String get importFailed => 'Innflutningur Mistókst';

  @override
  String get errorReadingFile => 'Villa við að lesa skrá';

  @override
  String error(String error) {
    return 'Villa: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Leita að viðburðum...';

  @override
  String get noEventsScheduled => 'Engir viðburðir áætlaðir';

  @override
  String get noEventsFound => 'Engir viðburðir fundust';

  @override
  String get createEventsFromCalendar => 'Búa til viðburði úr dagatali';

  @override
  String get studentsJoiningThisSession =>
      'Nemendur sem Taka Þátt í Þessum Fundi';

  @override
  String get addMember => 'Bæta við Meðlimi';

  @override
  String get noStudentsAddedYet => 'Engir nemendur hafa verið bættir við enn';

  @override
  String get tapToAddMember => 'Smelltu á + til að bæta við meðlimi';

  @override
  String get allMembers => 'Allir Meðlimir';

  @override
  String get addToSession => 'Bæta við fundi';

  @override
  String get removeFromSession => 'Fjarlægja úr fundi';

  @override
  String get name => 'Nafn';

  @override
  String get nameRequired => 'Vinsamlegast sláðu inn nafn';

  @override
  String get nicknameOptional => 'Gælunafn (valfrjálst)';

  @override
  String get ageOptional => 'Aldur (valfrjálst)';

  @override
  String get ageInvalid => 'Vinsamlegast sláðu inn gildan aldur';

  @override
  String get phoneNumberOptional => 'Símanúmer (valfrjálst)';

  @override
  String get phoneNumberHint => 't.d. +354 123 4567';

  @override
  String get addMemberTitle => 'Bæta við Meðlimi';

  @override
  String get editMemberTitle => 'Breyta Meðlimi';

  @override
  String get member => 'Meðlimur';

  @override
  String nameLabel(String name) {
    return 'Nafn: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Aldur: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Sími: $phone';
  }

  @override
  String get templateOptional => 'Sniðmát (valfrjálst)';

  @override
  String get none => 'Ekkert';

  @override
  String get saveAsTemplate => 'Vista sem sniðmát';

  @override
  String get saveAsTemplateSubtitle =>
      'Nota þennan fund sem sniðmát fyrir framtíðarfundi';

  @override
  String get templateName => 'Heiti Sniðmáts';

  @override
  String get templateNameHelper => 'Heiti til að auðkenna þetta sniðmát';

  @override
  String get templateNameRequired => 'Vinsamlegast sláðu inn heiti sniðmáts';

  @override
  String get defaultSessionTitle => 'Sjálfgefinn Titill Fundar';

  @override
  String get defaultSessionTitleHelper =>
      'Titill sem notaður er þegar fundir eru búnir til úr þessu sniðmáti';

  @override
  String get sessionTitleRequired => 'Vinsamlegast sláðu inn titil fundar';

  @override
  String get createTemplate => 'Búa til Sniðmát';

  @override
  String get editTemplate => 'Breyta Sniðmáti';

  @override
  String get create => 'Búa til';

  @override
  String get templateNameDialogTitle => 'Heiti Sniðmáts';

  @override
  String get templateNameDialogHelper =>
      'Gefðu þessu sniðmáti nafn til auðkenningar';

  @override
  String get templateManagement => 'Stjórnun Sniðmáta';

  @override
  String get noTemplatesYet => 'Engin sniðmát enn';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Búðu til fund og merktu \"Vista sem sniðmát\"';

  @override
  String get deleteTemplate => 'Eyða Sniðmáti';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Ertu viss um að þú viljir eyða \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Fundur: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Vista sem Sniðmát';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Sniðmátið \"$name\" var vistað með góðum árangri';
  }

  @override
  String get debug => 'VILLULEIT';

  @override
  String get debugDateSimulation => 'Dagsetningarsimulering fyrir Villuleit';

  @override
  String get setCustomDate => 'Setja Sérsniðna Dagsetningu';

  @override
  String get clear => 'Hreinsa';

  @override
  String now(String date) {
    return 'Núna: $date';
  }

  @override
  String get today => 'Í dag';

  @override
  String get yesterday => 'Í gær';

  @override
  String get tomorrow => 'Á morgun';

  @override
  String daysAgo(int count) {
    return 'fyrir $count dögum';
  }

  @override
  String daysLater(int count) {
    return 'eftir $count daga';
  }

  @override
  String get notificationSettings => 'Tilkynningastillingar';

  @override
  String get notificationTiming => 'Tímasetning tilkynninga';

  @override
  String get notificationTimingDescription =>
      'Veldu hvenær á að fá tilkynningar áður en hver fundur hefst';

  @override
  String get atEventStart => 'Við upphaf atburðar';

  @override
  String beforeEventStart(String timing) {
    return '$timing áður en atburður hefst';
  }

  @override
  String get notificationTimingUpdated => 'Tímasetning tilkynninga uppfærð';

  @override
  String get aboutNotifications => 'Um tilkynningar';

  @override
  String get notificationInfo =>
      'Þú munt fá tilkynningar áður en hver áætlaður fundur hefst. Tilkynningar eru sjálfkrafa áætlaðar þegar þú býrð til eða uppfærir fundi, og allir núverandi fundir eru áætlaðir þegar forritið er ræst.';

  @override
  String get rescheduleNotifications => 'Enduráætla tilkynningar';

  @override
  String get rescheduleNotificationsDescription =>
      'Enduráætla handvirkt tilkynningar fyrir alla núverandi framtíðarfundi. Gagnlegt ef þú hefur rétt virkjað tilkynningar eða vilt tryggja að allir atburðir hafi áætlaðar tilkynningar.';

  @override
  String get rescheduleNow => 'Enduráætla núna';

  @override
  String get rescheduling => 'Enduráætla...';

  @override
  String notificationsRescheduled(int count) {
    return 'Tilkynningar enduráætlaðar fyrir $count framtíðarfund(i)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Villa við enduráætlun tilkynninga: $error';
  }

  @override
  String get permissionsRequired => 'Heimildir tilkynninga krafist';

  @override
  String get permissionsRequiredDescription =>
      'Vinsamlegast veittu heimildir tilkynninga til að fá áminningar fyrir fundina þína. Smelltu á hnappinn hér fyrir neðan til að biðja um heimildir.';

  @override
  String get requestPermissions => 'Biðja um heimildir';

  @override
  String get permissionsGranted => 'Heimildir tilkynninga veittar!';

  @override
  String get permissionsDenied =>
      'Heimildir tilkynninga voru hafnaðar. Vinsamlegast virkjaðu þær í Stillingum.';

  @override
  String get timing0Min => '0 mín';

  @override
  String get timing1Min => '1 mín';

  @override
  String get timing5Mins => '5 mín';

  @override
  String get timing30Mins => '30 mín';

  @override
  String get timing1Hour => '1 klst';

  @override
  String get timing6Hours => '6 klst';

  @override
  String timingMinutes(int count) {
    return '$count mín';
  }

  @override
  String timingHours(int count) {
    return '$count klst';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count klst';
  }

  @override
  String get testNotifications => 'Prófun tilkynningar';

  @override
  String get testNotificationsDescription =>
      'Senda prófunartilkynningu eftir 2 sekúndur til að staðfesta að tilkynningar virka.';

  @override
  String get sendTestNotification => 'Senda prófunartilkynningu';

  @override
  String get testNotificationScheduled =>
      'Prófunartilkynning áætluð! Athugaðu eftir 2 sekúndur.';

  @override
  String get testNotificationTitle => 'Prófunartilkynning';

  @override
  String get testNotificationBody => 'Ef þú sérð þetta, virka tilkynningar!';

  @override
  String get scheduledTestNotificationTitle => 'Áætluð prófunartilkynning';

  @override
  String get scheduledTestNotificationBody =>
      'Þetta var áætlað fyrir 2 sekúndum';

  @override
  String startsAt(String time) {
    return 'Byrjar kl $time';
  }

  @override
  String get themeSettings => 'Þema stillingar';

  @override
  String get selectTheme => 'Veldu þema';

  @override
  String get selectThemeDescription =>
      'Veldu litaþema fyrir appið. Þema verður beitt um allan forritið.';

  @override
  String get themeChanged => 'Þema breytt með góðum árangri!';

  @override
  String get aboutTheme => 'Um þemu';

  @override
  String get themeInfo =>
      'Að breyta þemanu mun uppfæra litina um allan forritið, þar á meðal hnappa, forritsstiku og aðra UI þætti. Þemaforgangurinn þinn verður vistaður og beittur sjálfkrafa þegar þú endurræsir forritið.';

  @override
  String get enableNotifications => 'Virkja tilkynningar';

  @override
  String get enableNotificationsDescription =>
      'Kveikja eða slökkva á tilkynningum. Þegar þær eru slökktar verða engar tilkynningar sendar fyrir fundina þína.';

  @override
  String get notificationsEnabled => 'Tilkynningar virkjaðar';

  @override
  String get notificationsDisabled => 'Tilkynningar slökktar';

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
