// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Varaa Viikot';

  @override
  String get selectWeek => 'Valitse Viikko';

  @override
  String get mon => 'Ma';

  @override
  String get tue => 'Ti';

  @override
  String get wed => 'Ke';

  @override
  String get thu => 'To';

  @override
  String get fri => 'Pe';

  @override
  String get sat => 'La';

  @override
  String get sun => 'Su';

  @override
  String get noSessionsScheduled => 'Ei ajoitettuja istuntoja';

  @override
  String get tapToAddSession => 'Napauta + -painiketta lisätäksesi istunnon';

  @override
  String student(int count) {
    return 'opiskelija';
  }

  @override
  String students(int count) {
    return 'opiskelijaa';
  }

  @override
  String get deleteSession => 'Poista Istunto';

  @override
  String deleteSessionConfirm(String title) {
    return 'Haluatko varmasti poistaa \"$title\"?';
  }

  @override
  String get cancel => 'Peruuta';

  @override
  String get delete => 'Poista';

  @override
  String get createSession => 'Luo Istunto';

  @override
  String get editSession => 'Muokkaa Istuntoa';

  @override
  String get title => 'Otsikko';

  @override
  String get titleRequired => 'Anna otsikko';

  @override
  String get startTime => 'Aloitusaika';

  @override
  String get endTime => 'Lopetusaika';

  @override
  String get endTimeAfterStart => 'Lopetusaika on oltava aloitusajan jälkeen';

  @override
  String get descriptionOptional => 'Kuvaus (valinnainen)';

  @override
  String get save => 'Tallenna';

  @override
  String get add => 'Lisää';

  @override
  String get edit => 'Muokkaa';

  @override
  String get allEvents => 'Kaikki Tapahtumat';

  @override
  String get manageTemplates => 'Hallitse Mallipohjia';

  @override
  String get exportData => 'Vie Tiedot';

  @override
  String get importData => 'Tuo Tiedot';

  @override
  String get saveExportFile => 'Tallenna Vie-tiedosto';

  @override
  String exportSuccessful(String path) {
    return 'Vienti onnistui!\nTallennettu: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Vienti epäonnistui: $error';
  }

  @override
  String get importSuccessful => 'Tuonti Onnistui';

  @override
  String get importFailed => 'Tuonti Epäonnistui';

  @override
  String get errorReadingFile => 'Virhe tiedoston lukemisessa';

  @override
  String error(String error) {
    return 'Virhe: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Etsi tapahtumia...';

  @override
  String get noEventsScheduled => 'Ei ajoitettuja tapahtumia';

  @override
  String get noEventsFound => 'Tapahtumia ei löytynyt';

  @override
  String get createEventsFromCalendar => 'Luo tapahtumia kalenterista';

  @override
  String get studentsJoiningThisSession =>
      'Tähän Istuntoon Osallistuvat Opiskelijat';

  @override
  String get addMember => 'Lisää Jäsen';

  @override
  String get noStudentsAddedYet => 'Opiskelijoita ei ole vielä lisätty';

  @override
  String get tapToAddMember => 'Napauta + lisätäksesi jäsenen';

  @override
  String get allMembers => 'Kaikki Jäsenet';

  @override
  String get addToSession => 'Lisää istuntoon';

  @override
  String get removeFromSession => 'Poista istunnosta';

  @override
  String get name => 'Nimi';

  @override
  String get nameRequired => 'Anna nimi';

  @override
  String get nicknameOptional => 'Lempinimi (valinnainen)';

  @override
  String get ageOptional => 'Ikä (valinnainen)';

  @override
  String get ageInvalid => 'Anna kelvollinen ikä';

  @override
  String get phoneNumberOptional => 'Puhelinnumero (valinnainen)';

  @override
  String get phoneNumberHint => 'esim. +358 12 345 6789';

  @override
  String get addMemberTitle => 'Lisää Jäsen';

  @override
  String get editMemberTitle => 'Muokkaa Jäsentä';

  @override
  String get member => 'Jäsen';

  @override
  String nameLabel(String name) {
    return 'Nimi: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Ikä: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Puhelin: $phone';
  }

  @override
  String get templateOptional => 'Mallipohja (valinnainen)';

  @override
  String get none => 'Ei mitään';

  @override
  String get saveAsTemplate => 'Tallenna mallipohjaksi';

  @override
  String get saveAsTemplateSubtitle =>
      'Käytä tätä istuntoa mallipohjana tuleville istunnoille';

  @override
  String get templateName => 'Mallipohjan Nimi';

  @override
  String get templateNameHelper => 'Nimi tämän mallipohjan tunnistamiseen';

  @override
  String get templateNameRequired => 'Anna mallipohjan nimi';

  @override
  String get defaultSessionTitle => 'Oletusistunnon Otsikko';

  @override
  String get defaultSessionTitleHelper =>
      'Otsikko, jota käytetään tämän mallipohjan perusteella luotavissa istunnoissa';

  @override
  String get sessionTitleRequired => 'Anna istunnon otsikko';

  @override
  String get createTemplate => 'Luo Mallipohja';

  @override
  String get editTemplate => 'Muokkaa Mallipohjaa';

  @override
  String get create => 'Luo';

  @override
  String get templateNameDialogTitle => 'Mallipohjan Nimi';

  @override
  String get templateNameDialogHelper =>
      'Anna tälle mallipohjalle nimi helpon tunnistamisen vuoksi';

  @override
  String get templateManagement => 'Mallipohjien Hallinta';

  @override
  String get noTemplatesYet => 'Ei vielä mallipohjia';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Luo istunto ja valitse \"Tallenna mallipohjaksi\"';

  @override
  String get deleteTemplate => 'Poista Mallipohja';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Haluatko varmasti poistaa \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Istunto: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Tallenna Mallipohjaksi';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Mallipohja \"$name\" tallennettu onnistuneesti';
  }

  @override
  String get debug => 'VIRHEENKORJAUS';

  @override
  String get debugDateSimulation => 'Virheenkorjauksen Päivämäärän Simulointi';

  @override
  String get setCustomDate => 'Aseta Mukautettu Päivämäärä';

  @override
  String get clear => 'Tyhjennä';

  @override
  String now(String date) {
    return 'Nyt: $date';
  }

  @override
  String get today => 'Tänään';

  @override
  String get yesterday => 'Eilen';

  @override
  String get tomorrow => 'Huomenna';

  @override
  String daysAgo(int count) {
    return '$count päivää sitten';
  }

  @override
  String daysLater(int count) {
    return '$count päivän kuluttua';
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
  String get testNotifications => 'Testi-ilmoitukset';

  @override
  String get testNotificationsDescription =>
      'Lähetä testi-ilmoitus 2 sekunnin kuluttua varmistaaksesi, että ilmoitukset toimivat.';

  @override
  String get sendTestNotification => 'Lähetä testi-ilmoitus';

  @override
  String get testNotificationScheduled =>
      'Testi-ilmoitus ajoitettu! Tarkista 2 sekunnin kuluttua.';

  @override
  String get testNotificationTitle => 'Testi-ilmoitus';

  @override
  String get testNotificationBody => 'Jos näet tämän, ilmoitukset toimivat!';

  @override
  String get scheduledTestNotificationTitle => 'Ajoitettu testi-ilmoitus';

  @override
  String get scheduledTestNotificationBody => 'Tämä ajettiin 2 sekuntia sitten';

  @override
  String startsAt(String time) {
    return 'Alkaa klo $time';
  }
}
