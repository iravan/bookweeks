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
  String get debug => 'DEBUG';

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
  String get notificationSettings => 'Aviseringsinställningar';

  @override
  String get notificationTiming => 'Aviseringsläge';

  @override
  String get notificationTimingDescription =>
      'Välj när du vill ta emot aviseringar innan varje session börjar';

  @override
  String get atEventStart => 'Vid sessionsstart';

  @override
  String beforeEventStart(String timing) {
    return '$timing före sessionsstart';
  }

  @override
  String get notificationTimingUpdated => 'Aviseringsläge uppdaterat';

  @override
  String get aboutNotifications => 'Om aviseringar';

  @override
  String get notificationInfo =>
      'Du kommer att få aviseringar innan varje schemalagd session börjar. Aviseringar schemaläggs automatiskt när du skapar eller uppdaterar sessioner, och alla befintliga sessioner schemaläggs när appen startas.';

  @override
  String get rescheduleNotifications => 'Schemalägg om aviseringar';

  @override
  String get rescheduleNotificationsDescription =>
      'Schemalägg manuellt om aviseringar för alla befintliga framtida sessioner. Detta är användbart om du precis har aktiverat aviseringar eller vill säkerställa att alla händelser har schemalagda aviseringar.';

  @override
  String get rescheduleNow => 'Schemalägg om nu';

  @override
  String get rescheduling => 'Schemalägger om...';

  @override
  String notificationsRescheduled(int count) {
    return 'Aviseringar schemalagda om för $count framtida session(er)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Fel vid omschemaläggning av aviseringar: $error';
  }

  @override
  String get permissionsRequired => 'Aviseringsbehörigheter krävs';

  @override
  String get permissionsRequiredDescription =>
      'Vänligen bevilja aviseringsbehörigheter för att ta emot påminnelser för dina sessioner. Tryck på knappen nedan för att begära behörigheter.';

  @override
  String get requestPermissions => 'Begär behörigheter';

  @override
  String get permissionsGranted => 'Aviseringsbehörigheter beviljade!';

  @override
  String get permissionsDenied =>
      'Aviseringsbehörigheter nekades. Vänligen aktivera dem i Inställningar.';

  @override
  String get timing0Min => '0 min';

  @override
  String get timing1Min => '1 min';

  @override
  String get timing5Mins => '5 min';

  @override
  String get timing30Mins => '30 min';

  @override
  String get timing1Hour => '1 timme';

  @override
  String get timing6Hours => '6 timmar';

  @override
  String timingMinutes(int count) {
    return '$count min';
  }

  @override
  String timingHours(int count) {
    return '$count timme';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count timmar';
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

  @override
  String get themeSettings => 'Tema-inställningar';

  @override
  String get selectTheme => 'Välj tema';

  @override
  String get selectThemeDescription =>
      'Välj ett färgtema för appen. Temat kommer att tillämpas i hela applikationen.';

  @override
  String get themeChanged => 'Tema ändrat framgångsrikt!';

  @override
  String get aboutTheme => 'Om teman';

  @override
  String get themeInfo =>
      'Att ändra temat kommer att uppdatera färgerna i hela appen, inklusive knappar, appfält och andra UI-element. Din temapreferens kommer att sparas och tillämpas automatiskt när du startar om appen.';

  @override
  String get enableNotifications => 'Aktivera aviseringar';

  @override
  String get enableNotificationsDescription =>
      'Aktivera eller inaktivera aviseringar. När de är inaktiverade kommer inga aviseringar att skickas för dina sessioner.';

  @override
  String get notificationsEnabled => 'Aviseringar aktiverade';

  @override
  String get notificationsDisabled => 'Aviseringar inaktiverade';
}
