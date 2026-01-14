// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Boka Veckor';

  @override
  String get selectWeek => 'Välj Vecka';

  @override
  String get mon => 'Mån';

  @override
  String get tue => 'Tis';

  @override
  String get wed => 'Ons';

  @override
  String get thu => 'Tor';

  @override
  String get fri => 'Fre';

  @override
  String get sat => 'Lör';

  @override
  String get sun => 'Sön';

  @override
  String get noSessionsScheduled => 'Inga sessioner schemalagda';

  @override
  String get tapToAddSession =>
      'Tryck på + -knappen för att lägga till en session';

  @override
  String student(int count) {
    return 'elev';
  }

  @override
  String students(int count) {
    return 'elever';
  }

  @override
  String get deleteSession => 'Ta Bort Session';

  @override
  String deleteSessionConfirm(String title) {
    return 'Är du säker på att du vill ta bort \"$title\"?';
  }

  @override
  String get cancel => 'Avbryt';

  @override
  String get delete => 'Ta Bort';

  @override
  String get createSession => 'Skapa Session';

  @override
  String get editSession => 'Redigera Session';

  @override
  String get title => 'Titel';

  @override
  String get titleRequired => 'Vänligen ange en titel';

  @override
  String get startTime => 'Starttid';

  @override
  String get endTime => 'Sluttid';

  @override
  String get endTimeAfterStart => 'Sluttiden måste vara efter starttiden';

  @override
  String get descriptionOptional => 'Beskrivning (valfritt)';

  @override
  String get save => 'Spara';

  @override
  String get add => 'Lägg Till';

  @override
  String get edit => 'Redigera';

  @override
  String get allEvents => 'Alla Händelser';

  @override
  String get manageTemplates => 'Hantera Mallar';

  @override
  String get exportData => 'Exportera Data';

  @override
  String get importData => 'Importera Data';

  @override
  String get saveExportFile => 'Spara Exportfil';

  @override
  String exportSuccessful(String path) {
    return 'Export lyckades!\nSparad till: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Export misslyckades: $error';
  }

  @override
  String get importSuccessful => 'Import Lyckades';

  @override
  String get importFailed => 'Import Misslyckades';

  @override
  String get errorReadingFile => 'Fel vid läsning av fil';

  @override
  String error(String error) {
    return 'Fel: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Sök händelser...';

  @override
  String get noEventsScheduled => 'Inga händelser schemalagda';

  @override
  String get noEventsFound => 'Inga händelser hittades';

  @override
  String get createEventsFromCalendar => 'Skapa händelser från kalendern';

  @override
  String get studentsJoiningThisSession => 'Elever som Deltar i Denna Session';

  @override
  String get addMember => 'Lägg Till Medlem';

  @override
  String get noStudentsAddedYet => 'Inga elever har lagts till ännu';

  @override
  String get tapToAddMember => 'Tryck på + för att lägga till en medlem';

  @override
  String get allMembers => 'Alla Medlemmar';

  @override
  String get addToSession => 'Lägg till i session';

  @override
  String get removeFromSession => 'Ta bort från session';

  @override
  String get name => 'Namn';

  @override
  String get nameRequired => 'Vänligen ange ett namn';

  @override
  String get nicknameOptional => 'Smeknamn (valfritt)';

  @override
  String get ageOptional => 'Ålder (valfritt)';

  @override
  String get ageInvalid => 'Vänligen ange en giltig ålder';

  @override
  String get phoneNumberOptional => 'Telefonnummer (valfritt)';

  @override
  String get phoneNumberHint => 't.ex. +46 12 345 67 89';

  @override
  String get addMemberTitle => 'Lägg Till Medlem';

  @override
  String get editMemberTitle => 'Redigera Medlem';

  @override
  String get member => 'Medlem';

  @override
  String nameLabel(String name) {
    return 'Namn: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Ålder: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Telefon: $phone';
  }

  @override
  String get templateOptional => 'Mall (valfritt)';

  @override
  String get none => 'Ingen';

  @override
  String get saveAsTemplate => 'Spara som mall';

  @override
  String get saveAsTemplateSubtitle =>
      'Använd denna session som mall för framtida sessioner';

  @override
  String get templateName => 'Mallnamn';

  @override
  String get templateNameHelper => 'Namn för att identifiera denna mall';

  @override
  String get templateNameRequired => 'Vänligen ange ett mallnamn';

  @override
  String get defaultSessionTitle => 'Standard Sessions Titel';

  @override
  String get defaultSessionTitleHelper =>
      'Titel som används när sessioner skapas från denna mall';

  @override
  String get sessionTitleRequired => 'Vänligen ange en sessionstitel';

  @override
  String get createTemplate => 'Skapa Mall';

  @override
  String get editTemplate => 'Redigera Mall';

  @override
  String get create => 'Skapa';

  @override
  String get templateNameDialogTitle => 'Mallnamn';

  @override
  String get templateNameDialogHelper =>
      'Ge denna mall ett namn för enkel identifiering';

  @override
  String get templateManagement => 'Mallhantering';

  @override
  String get noTemplatesYet => 'Inga mallar ännu';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Skapa en session och välj \"Spara som mall\"';

  @override
  String get deleteTemplate => 'Ta Bort Mall';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Är du säker på att du vill ta bort \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Session: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Spara som Mall';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Mall \"$name\" sparades framgångsrikt';
  }

  @override
  String get debug => 'FELSÖKNING';

  @override
  String get debugDateSimulation => 'Felsöknings Datumsimulering';

  @override
  String get setCustomDate => 'Ange Anpassat Datum';

  @override
  String get clear => 'Rensa';

  @override
  String now(String date) {
    return 'Nu: $date';
  }

  @override
  String get today => 'Idag';

  @override
  String get yesterday => 'Igår';

  @override
  String get tomorrow => 'Imorgon';

  @override
  String daysAgo(int count) {
    return 'för $count dagar sedan';
  }

  @override
  String daysLater(int count) {
    return 'om $count dagar';
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
  String get testNotifications => 'Testmeddelanden';

  @override
  String get testNotificationsDescription =>
      'Skicka ett testmeddelande om 2 sekunder för att verifiera att meddelanden fungerar.';

  @override
  String get sendTestNotification => 'Skicka testmeddelande';

  @override
  String get testNotificationScheduled =>
      'Testmeddelande schemalagt! Kontrollera om 2 sekunder.';

  @override
  String get testNotificationTitle => 'Testmeddelande';

  @override
  String get testNotificationBody => 'Om du ser detta fungerar meddelanden!';

  @override
  String get scheduledTestNotificationTitle => 'Schemalagt testmeddelande';

  @override
  String get scheduledTestNotificationBody =>
      'Detta schemalades för 2 sekunder sedan';

  @override
  String startsAt(String time) {
    return 'Börjar kl $time';
  }
}
