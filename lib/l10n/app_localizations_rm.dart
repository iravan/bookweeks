// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romansh (`rm`).
class AppLocalizationsRm extends AppLocalizations {
  AppLocalizationsRm([String locale = 'rm']) : super(locale);

  @override
  String get appTitle => 'Reservar Emnas';

  @override
  String get selectWeek => 'Tscherner Emna';

  @override
  String get mon => 'Glindesdi';

  @override
  String get tue => 'Mardi';

  @override
  String get wed => 'Mesemna';

  @override
  String get thu => 'Gievgia';

  @override
  String get fri => 'Venderdi';

  @override
  String get sat => 'Sonda';

  @override
  String get sun => 'Dumengia';

  @override
  String get noSessionsScheduled => 'Naginas sessiuns planisadas';

  @override
  String get tapToAddSession =>
      'Tippar sin il buttun + per agiuntar ina sessiun';

  @override
  String student(int count) {
    return 'student';
  }

  @override
  String students(int count) {
    return 'students';
  }

  @override
  String get deleteSession => 'Stizzar Sessiun';

  @override
  String deleteSessionConfirm(String title) {
    return 'Es ti segir che ti vuls stizzar \"$title\"?';
  }

  @override
  String get cancel => 'Annullar';

  @override
  String get delete => 'Stizzar';

  @override
  String get createSession => 'Crear Sessiun';

  @override
  String get editSession => 'Modifitgar Sessiun';

  @override
  String get title => 'Titel';

  @override
  String get titleRequired => 'Endatescha per plaschair in titel';

  @override
  String get startTime => 'Ura da Cumenzament';

  @override
  String get endTime => 'Ura da Fin';

  @override
  String get endTimeAfterStart =>
      'L\'ura da fin sto esser suenter l\'ura da cumenzament';

  @override
  String get descriptionOptional => 'Descripziun (opziunala)';

  @override
  String get save => 'Memorisar';

  @override
  String get add => 'Agiuntar';

  @override
  String get edit => 'Modifitgar';

  @override
  String get allEvents => 'Tut las Eveniments';

  @override
  String get manageTemplates => 'Administrar Models';

  @override
  String get exportData => 'Exportar Datas';

  @override
  String get importData => 'Importar Datas';

  @override
  String get saveExportFile => 'Memorisar Datoteca d\'Export';

  @override
  String exportSuccessful(String path) {
    return 'Export reussì!\nMemorisà en: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Export na reussì betg: $error';
  }

  @override
  String get importSuccessful => 'Import Reussì';

  @override
  String get importFailed => 'Import na Reussì Betg';

  @override
  String get errorReadingFile => 'Errur cun leger la datoteca';

  @override
  String error(String error) {
    return 'Errur: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Tschertgar eveniments...';

  @override
  String get noEventsScheduled => 'Nagins eveniments planisads';

  @override
  String get noEventsFound => 'Nagins eveniments chattads';

  @override
  String get createEventsFromCalendar => 'Crear eveniments dal chalender';

  @override
  String get studentsJoiningThisSession =>
      'Students che Participeschan a Questa Sessiun';

  @override
  String get addMember => 'Agiuntar Membra';

  @override
  String get noStudentsAddedYet => 'Nagins students agiuntads anc';

  @override
  String get tapToAddMember => 'Tippar sin + per agiuntar ina membra';

  @override
  String get allMembers => 'Tut las Membras';

  @override
  String get addToSession => 'Agiuntar a la sessiun';

  @override
  String get removeFromSession => 'Allontanar da la sessiun';

  @override
  String get name => 'Num';

  @override
  String get nameRequired => 'Endatescha per plaschair in num';

  @override
  String get nicknameOptional => 'Sur num (opziunal)';

  @override
  String get ageOptional => 'Etad (opziunala)';

  @override
  String get ageInvalid => 'Endatescha per plaschair ina etad valida';

  @override
  String get phoneNumberOptional => 'Numer da Telefon (opziunal)';

  @override
  String get phoneNumberHint => 'p.ex. +41 79 123 45 67';

  @override
  String get addMemberTitle => 'Agiuntar Membra';

  @override
  String get editMemberTitle => 'Modifitgar Membra';

  @override
  String get member => 'Membra';

  @override
  String nameLabel(String name) {
    return 'Num: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Etad: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Telefon: $phone';
  }

  @override
  String get templateOptional => 'Model (opziunal)';

  @override
  String get none => 'Nagins';

  @override
  String get saveAsTemplate => 'Memorisar sco model';

  @override
  String get saveAsTemplateSubtitle =>
      'Duai questa sessiun sco model per sessiuns futuricas';

  @override
  String get templateName => 'Num dal Model';

  @override
  String get templateNameHelper => 'Num per identifitgar quest model';

  @override
  String get templateNameRequired => 'Endatescha per plaschair in num da model';

  @override
  String get defaultSessionTitle => 'Titel da Sessiun Predefinì';

  @override
  String get defaultSessionTitleHelper =>
      'Titel che vegn duvrà cura che sessiuns vegnan creadas da quest model';

  @override
  String get sessionTitleRequired =>
      'Endatescha per plaschair in titel da sessiun';

  @override
  String get createTemplate => 'Crear Model';

  @override
  String get editTemplate => 'Modifitgar Model';

  @override
  String get create => 'Crear';

  @override
  String get templateNameDialogTitle => 'Num dal Model';

  @override
  String get templateNameDialogHelper =>
      'Dai a quest model in num per simpla identifitgaziun';

  @override
  String get templateManagement => 'Administraziun da Models';

  @override
  String get noTemplatesYet => 'Anc nagins models';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Crear ina sessiun e tippar \"Memorisar sco model\"';

  @override
  String get deleteTemplate => 'Stizzar Model';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Es ti segir che ti vuls stizzar \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Sessiun: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Memorisar sco Model';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Il model \"$name\" è vegnì memorisà cun success';
  }

  @override
  String get debug => 'DEBUG';

  @override
  String get debugDateSimulation => 'Simulaziun da Data da Debug';

  @override
  String get setCustomDate => 'Definir Data Persunalisada';

  @override
  String get clear => 'Sgarrer';

  @override
  String now(String date) {
    return 'Usa: $date';
  }

  @override
  String get today => 'Oz';

  @override
  String get yesterday => 'Ier';

  @override
  String get tomorrow => 'Damaun';

  @override
  String daysAgo(int count) {
    return 'avant $count dis';
  }

  @override
  String daysLater(int count) {
    return 'en $count dis';
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
  String get testNotifications => 'Notificaziuns da test';

  @override
  String get testNotificationsDescription =>
      'Trametter ina notificaziun da test en 2 secundas per verifitgar che las notificaziuns funcziunan.';

  @override
  String get sendTestNotification => 'Trametter ina notificaziun da test';

  @override
  String get testNotificationScheduled =>
      'Notificaziun da test programmada! Controlla en 2 secundas.';

  @override
  String get testNotificationTitle => 'Notificaziun da test';

  @override
  String get testNotificationBody =>
      'Sche ti ves quai, funcziunan las notificaziuns!';

  @override
  String get scheduledTestNotificationTitle =>
      'Programmada notificaziun da test';

  @override
  String get scheduledTestNotificationBody =>
      'Quai è vegnì programmà avant 2 secundas';

  @override
  String startsAt(String time) {
    return 'Cumenza a $time';
  }
}
