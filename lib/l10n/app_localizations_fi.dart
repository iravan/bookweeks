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
  String get notificationSettings => 'Ilmoitusasetukset';

  @override
  String get notificationTiming => 'Ilmoitusten ajoitus';

  @override
  String get notificationTimingDescription =>
      'Valitse, milloin vastaanottaa ilmoituksia ennen kuin jokainen istunto alkaa';

  @override
  String get atEventStart => 'Tapahtuman alussa';

  @override
  String beforeEventStart(String timing) {
    return '$timing ennen tapahtuman alkua';
  }

  @override
  String get notificationTimingUpdated => 'Ilmoitusten ajoitus päivitetty';

  @override
  String get aboutNotifications => 'Tietoja ilmoituksista';

  @override
  String get notificationInfo =>
      'Saat ilmoituksia ennen kuin jokainen ajoitettu istunto alkaa. Ilmoitukset ajautuvat automaattisesti, kun luot tai päivität istuntoja, ja kaikki olemassa olevat istunnot ajautuvat sovelluksen käynnistyessä.';

  @override
  String get rescheduleNotifications => 'Ajoita ilmoitukset uudelleen';

  @override
  String get rescheduleNotificationsDescription =>
      'Ajoita ilmoitukset manuaalisesti uudelleen kaikille olemassa oleville tuleville istunnoille. Hyödyllinen, jos olet juuri ottanut ilmoitukset käyttöön tai haluat varmistaa, että kaikilla tapahtumilla on ajoitettuja ilmoituksia.';

  @override
  String get rescheduleNow => 'Ajoita uudelleen nyt';

  @override
  String get rescheduling => 'Ajautetaan uudelleen...';

  @override
  String notificationsRescheduled(int count) {
    return 'Ilmoitukset ajautettu uudelleen $count tulevalle istunnolle';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Virhe ilmoitusten uudelleenajossa: $error';
  }

  @override
  String get permissionsRequired => 'Ilmoitusoikeudet vaaditaan';

  @override
  String get permissionsRequiredDescription =>
      'Anna ilmoitusoikeudet vastaanottaaksesi muistutuksia istunnoistasi. Napauta alla olevaa painiketta pyytääksesi oikeuksia.';

  @override
  String get requestPermissions => 'Pyydä oikeuksia';

  @override
  String get permissionsGranted => 'Ilmoitusoikeudet myönnetty!';

  @override
  String get permissionsDenied =>
      'Ilmoitusoikeudet evättiin. Ota ne käyttöön Asetukset-valikossa.';

  @override
  String get timing0Min => '0 min';

  @override
  String get timing1Min => '1 min';

  @override
  String get timing5Mins => '5 min';

  @override
  String get timing30Mins => '30 min';

  @override
  String get timing1Hour => '1 tunti';

  @override
  String get timing6Hours => '6 tuntia';

  @override
  String timingMinutes(int count) {
    return '$count min';
  }

  @override
  String timingHours(int count) {
    return '$count tunti';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count tuntia';
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

  @override
  String get themeSettings => 'Teeman asetukset';

  @override
  String get selectTheme => 'Valitse teema';

  @override
  String get selectThemeDescription =>
      'Valitse sovelluksen väriteema. Teema sovelletaan koko sovellukseen.';

  @override
  String get themeChanged => 'Teema vaihdettu onnistuneesti!';

  @override
  String get aboutTheme => 'Tietoja teemoista';

  @override
  String get themeInfo =>
      'Teeman muuttaminen päivittää värit koko sovelluksessa, mukaan lukien painikkeet, sovelluspalkit ja muut käyttöliittymän elementit. Teemamieltymyksesi tallennetaan ja sovelletaan automaattisesti, kun käynnistät sovelluksen uudelleen.';

  @override
  String get enableNotifications => 'Ota ilmoitukset käyttöön';

  @override
  String get enableNotificationsDescription =>
      'Ota ilmoitukset päälle tai pois. Kun ne on poistettu käytöstä, ilmoituksia ei lähetetä istunnoillesi.';

  @override
  String get notificationsEnabled => 'Ilmoitukset käytössä';

  @override
  String get notificationsDisabled => 'Ilmoitukset poistettu käytöstä';

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
