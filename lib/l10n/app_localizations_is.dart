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
  String get ok => 'Í lagi';

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
}
