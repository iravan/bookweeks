// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Rezerviraj Tjedne';

  @override
  String get selectWeek => 'Odaberi Tjedan';

  @override
  String get mon => 'Pon';

  @override
  String get tue => 'Uto';

  @override
  String get wed => 'Sri';

  @override
  String get thu => 'Čet';

  @override
  String get fri => 'Pet';

  @override
  String get sat => 'Sub';

  @override
  String get sun => 'Ned';

  @override
  String get noSessionsScheduled => 'Nema zakazanih sesija';

  @override
  String get tapToAddSession => 'Dodirni gumb + za dodavanje sesije';

  @override
  String student(int count) {
    return 'učenik';
  }

  @override
  String students(int count) {
    return 'učenika';
  }

  @override
  String get deleteSession => 'Obriši Sesiju';

  @override
  String deleteSessionConfirm(String title) {
    return 'Jeste li sigurni da želite obrisati \"$title\"?';
  }

  @override
  String get cancel => 'Odustani';

  @override
  String get delete => 'Obriši';

  @override
  String get createSession => 'Kreiraj Sesiju';

  @override
  String get editSession => 'Uredi Sesiju';

  @override
  String get title => 'Naslov';

  @override
  String get titleRequired => 'Molimo unesite naslov';

  @override
  String get startTime => 'Vrijeme Početka';

  @override
  String get endTime => 'Vrijeme Završetka';

  @override
  String get endTimeAfterStart =>
      'Vrijeme završetka mora biti nakon vremena početka';

  @override
  String get descriptionOptional => 'Opis (opcionalno)';

  @override
  String get save => 'Spremi';

  @override
  String get add => 'Dodaj';

  @override
  String get edit => 'Uredi';

  @override
  String get allEvents => 'Svi Događaji';

  @override
  String get manageTemplates => 'Upravljaj Predlošcima';

  @override
  String get exportData => 'Izvezi Podatke';

  @override
  String get importData => 'Uvezi Podatke';

  @override
  String get saveExportFile => 'Spremi Datoteku za Izvoz';

  @override
  String exportSuccessful(String path) {
    return 'Izvoz uspješan!\nSpremljeno u: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Izvoz neuspješan: $error';
  }

  @override
  String get importSuccessful => 'Uvoz Uspješan';

  @override
  String get importFailed => 'Uvoz Neuspješan';

  @override
  String get errorReadingFile => 'Greška pri čitanju datoteke';

  @override
  String error(String error) {
    return 'Greška: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Pretraži događaje...';

  @override
  String get noEventsScheduled => 'Nema zakazanih događaja';

  @override
  String get noEventsFound => 'Nema pronađenih događaja';

  @override
  String get createEventsFromCalendar => 'Kreiraj događaje iz kalendara';

  @override
  String get studentsJoiningThisSession =>
      'Učenici koji Sudjeluju u Ovoj Sesiji';

  @override
  String get addMember => 'Dodaj Člana';

  @override
  String get noStudentsAddedYet => 'Učenici još nisu dodani';

  @override
  String get tapToAddMember => 'Dodirni + za dodavanje člana';

  @override
  String get allMembers => 'Svi Članovi';

  @override
  String get addToSession => 'Dodaj u sesiju';

  @override
  String get removeFromSession => 'Ukloni iz sesije';

  @override
  String get name => 'Ime';

  @override
  String get nameRequired => 'Molimo unesite ime';

  @override
  String get nicknameOptional => 'Nadimak (opcionalno)';

  @override
  String get ageOptional => 'Dob (opcionalno)';

  @override
  String get ageInvalid => 'Molimo unesite valjanu dob';

  @override
  String get phoneNumberOptional => 'Broj Telefona (opcionalno)';

  @override
  String get phoneNumberHint => 'npr. +385 12 345 678';

  @override
  String get addMemberTitle => 'Dodaj Člana';

  @override
  String get editMemberTitle => 'Uredi Člana';

  @override
  String get member => 'Član';

  @override
  String nameLabel(String name) {
    return 'Ime: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Dob: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Telefon: $phone';
  }

  @override
  String get templateOptional => 'Predložak (opcionalno)';

  @override
  String get none => 'Nijedan';

  @override
  String get saveAsTemplate => 'Spremi kao predložak';

  @override
  String get saveAsTemplateSubtitle =>
      'Koristi ovu sesiju kao predložak za buduće sesije';

  @override
  String get templateName => 'Naziv Predloška';

  @override
  String get templateNameHelper => 'Naziv za identifikaciju ovog predloška';

  @override
  String get templateNameRequired => 'Molimo unesite naziv predloška';

  @override
  String get defaultSessionTitle => 'Zadani Naslov Sesije';

  @override
  String get defaultSessionTitleHelper =>
      'Naslov koji se koristi pri kreiranju sesija iz ovog predloška';

  @override
  String get sessionTitleRequired => 'Molimo unesite naslov sesije';

  @override
  String get createTemplate => 'Kreiraj Predložak';

  @override
  String get editTemplate => 'Uredi Predložak';

  @override
  String get create => 'Kreiraj';

  @override
  String get templateNameDialogTitle => 'Naziv Predloška';

  @override
  String get templateNameDialogHelper =>
      'Dajte ovom predlošku naziv za lakšu identifikaciju';

  @override
  String get templateManagement => 'Upravljanje Predlošcima';

  @override
  String get noTemplatesYet => 'Još nema predložaka';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Kreiraj sesiju i označi \"Spremi kao predložak\"';

  @override
  String get deleteTemplate => 'Obriši Predložak';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Jeste li sigurni da želite obrisati \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Sesija: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Spremi kao Predložak';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Predložak \"$name\" uspješno spremljen';
  }

  @override
  String get debug => 'OTKLANJANJE GREŠAKA';

  @override
  String get debugDateSimulation => 'Simulacija Datuma za Otklanjanje Grešaka';

  @override
  String get setCustomDate => 'Postavi Prilagođeni Datum';

  @override
  String get clear => 'Očisti';

  @override
  String now(String date) {
    return 'Sada: $date';
  }

  @override
  String get today => 'Danas';

  @override
  String get yesterday => 'Jučer';

  @override
  String get tomorrow => 'Sutra';

  @override
  String daysAgo(int count) {
    return 'prije $count dana';
  }

  @override
  String daysLater(int count) {
    return 'za $count dana';
  }

  @override
  String get notificationSettings => 'Postavke obavijesti';

  @override
  String get notificationTiming => 'Vrijeme obavijesti';

  @override
  String get notificationTimingDescription =>
      'Odaberite kada primati obavijesti prije početka svake sesije';

  @override
  String get atEventStart => 'Na početku događaja';

  @override
  String beforeEventStart(String timing) {
    return '$timing prije početka događaja';
  }

  @override
  String get notificationTimingUpdated => 'Vrijeme obavijesti ažurirano';

  @override
  String get aboutNotifications => 'O obavijestima';

  @override
  String get notificationInfo =>
      'Primat ćete obavijesti prije početka svake zakazane sesije. Obavijesti se automatski zakazuju kada kreirate ili ažurirate sesije, a sve postojeće sesije se zakazuju pri pokretanju aplikacije.';

  @override
  String get rescheduleNotifications => 'Ponovno zakazivanje obavijesti';

  @override
  String get rescheduleNotificationsDescription =>
      'Ručno ponovno zakazite obavijesti za sve postojeće buduće sesije. Korisno je ako ste upravo omogućili obavijesti ili želite osigurati da svi događaji imaju zakazane obavijesti.';

  @override
  String get rescheduleNow => 'Ponovno zakazati sada';

  @override
  String get rescheduling => 'Ponovno zakazivanje...';

  @override
  String notificationsRescheduled(int count) {
    return 'Obavijesti ponovno zakazane za $count buduću sesiju(e)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Greška pri ponovnom zakazivanju obavijesti: $error';
  }

  @override
  String get permissionsRequired => 'Potrebne dozvole za obavijesti';

  @override
  String get permissionsRequiredDescription =>
      'Molimo dodijelite dozvole za obavijesti da biste primali podsjetnike za svoje sesije. Dodirnite gumb ispod da biste zatražili dozvole.';

  @override
  String get requestPermissions => 'Zatraži dozvole';

  @override
  String get permissionsGranted => 'Dozvole za obavijesti dodijeljene!';

  @override
  String get permissionsDenied =>
      'Dozvole za obavijesti su odbijene. Molimo omogućite ih u Postavkama.';

  @override
  String get timing0Min => '0 min';

  @override
  String get timing1Min => '1 min';

  @override
  String get timing5Mins => '5 min';

  @override
  String get timing30Mins => '30 min';

  @override
  String get timing1Hour => '1 sat';

  @override
  String get timing6Hours => '6 sati';

  @override
  String timingMinutes(int count) {
    return '$count min';
  }

  @override
  String timingHours(int count) {
    return '$count sat';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count sati';
  }

  @override
  String get testNotifications => 'Test obavijesti';

  @override
  String get testNotificationsDescription =>
      'Pošaljite testnu obavijest za 2 sekunde da biste provjerili rade li obavijesti.';

  @override
  String get sendTestNotification => 'Pošalji testnu obavijest';

  @override
  String get testNotificationScheduled =>
      'Testna obavijest zakazana! Provjerite za 2 sekunde.';

  @override
  String get testNotificationTitle => 'Test obavijest';

  @override
  String get testNotificationBody => 'Ako vidite ovo, obavijesti rade!';

  @override
  String get scheduledTestNotificationTitle => 'Zakazana testna obavijest';

  @override
  String get scheduledTestNotificationBody => 'Ovo je zakazano prije 2 sekunde';

  @override
  String startsAt(String time) {
    return 'Počinje u $time';
  }

  @override
  String get themeSettings => 'Postavke teme';

  @override
  String get selectTheme => 'Odaberi temu';

  @override
  String get selectThemeDescription =>
      'Odaberite tematsku boju za aplikaciju. Tema će biti primijenjena u cijeloj aplikaciji.';

  @override
  String get themeChanged => 'Tema je uspješno promijenjena!';

  @override
  String get aboutTheme => 'O temama';

  @override
  String get themeInfo =>
      'Promjena teme će ažurirati boje u cijeloj aplikaciji, uključujući gumbove, trake aplikacije i druge elemente korisničkog sučelja. Vaša preferencija teme bit će spremljena i automatski primijenjena kada ponovno pokrenete aplikaciju.';

  @override
  String get enableNotifications => 'Omogući obavijesti';

  @override
  String get enableNotificationsDescription =>
      'Uključite ili isključite obavijesti. Kada su isključene, obavijesti se neće slati za vaše sesije.';

  @override
  String get notificationsEnabled => 'Obavijesti omogućene';

  @override
  String get notificationsDisabled => 'Obavijesti onemogućene';

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
