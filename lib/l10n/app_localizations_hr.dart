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
  String get ok => 'U redu';

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
}
