// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Rezerwuj Tygodnie';

  @override
  String get selectWeek => 'Wybierz Tydzień';

  @override
  String get mon => 'Pon';

  @override
  String get tue => 'Wt';

  @override
  String get wed => 'Śr';

  @override
  String get thu => 'Czw';

  @override
  String get fri => 'Pt';

  @override
  String get sat => 'Sob';

  @override
  String get sun => 'Nie';

  @override
  String get noSessionsScheduled => 'Brak zaplanowanych sesji';

  @override
  String get tapToAddSession => 'Naciśnij przycisk +, aby dodać sesję';

  @override
  String student(int count) {
    return 'uczeń';
  }

  @override
  String students(int count) {
    return 'uczniów';
  }

  @override
  String get deleteSession => 'Usuń Sesję';

  @override
  String deleteSessionConfirm(String title) {
    return 'Czy na pewno chcesz usunąć \"$title\"?';
  }

  @override
  String get cancel => 'Anuluj';

  @override
  String get delete => 'Usuń';

  @override
  String get createSession => 'Utwórz Sesję';

  @override
  String get editSession => 'Edytuj Sesję';

  @override
  String get title => 'Tytuł';

  @override
  String get titleRequired => 'Proszę wprowadzić tytuł';

  @override
  String get startTime => 'Godzina Rozpoczęcia';

  @override
  String get endTime => 'Godzina Zakończenia';

  @override
  String get endTimeAfterStart =>
      'Godzina zakończenia musi być po godzinie rozpoczęcia';

  @override
  String get descriptionOptional => 'Opis (opcjonalny)';

  @override
  String get save => 'Zapisz';

  @override
  String get add => 'Dodaj';

  @override
  String get edit => 'Edytuj';

  @override
  String get allEvents => 'Wszystkie Wydarzenia';

  @override
  String get manageTemplates => 'Zarządzaj Szablonami';

  @override
  String get exportData => 'Eksportuj Dane';

  @override
  String get importData => 'Importuj Dane';

  @override
  String get saveExportFile => 'Zapisz Plik Eksportu';

  @override
  String exportSuccessful(String path) {
    return 'Eksport zakończony sukcesem!\nZapisano w: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Eksport nie powiódł się: $error';
  }

  @override
  String get importSuccessful => 'Import Zakończony Sukcesem';

  @override
  String get importFailed => 'Import Nie Powiódł Się';

  @override
  String get errorReadingFile => 'Błąd podczas odczytu pliku';

  @override
  String error(String error) {
    return 'Błąd: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Szukaj wydarzeń...';

  @override
  String get noEventsScheduled => 'Brak zaplanowanych wydarzeń';

  @override
  String get noEventsFound => 'Nie znaleziono wydarzeń';

  @override
  String get createEventsFromCalendar => 'Utwórz wydarzenia z kalendarza';

  @override
  String get studentsJoiningThisSession =>
      'Uczniowie Uczestniczący w Tej Sesji';

  @override
  String get addMember => 'Dodaj Członka';

  @override
  String get noStudentsAddedYet => 'Nie dodano jeszcze uczniów';

  @override
  String get tapToAddMember => 'Naciśnij +, aby dodać członka';

  @override
  String get allMembers => 'Wszyscy Członkowie';

  @override
  String get addToSession => 'Dodaj do sesji';

  @override
  String get removeFromSession => 'Usuń z sesji';

  @override
  String get name => 'Imię';

  @override
  String get nameRequired => 'Proszę wprowadzić imię';

  @override
  String get nicknameOptional => 'Przezwisko (opcjonalne)';

  @override
  String get ageOptional => 'Wiek (opcjonalny)';

  @override
  String get ageInvalid => 'Proszę wprowadzić prawidłowy wiek';

  @override
  String get phoneNumberOptional => 'Numer Telefonu (opcjonalny)';

  @override
  String get phoneNumberHint => 'np. +48 123 456 789';

  @override
  String get addMemberTitle => 'Dodaj Członka';

  @override
  String get editMemberTitle => 'Edytuj Członka';

  @override
  String get member => 'Członek';

  @override
  String nameLabel(String name) {
    return 'Imię: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Wiek: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Telefon: $phone';
  }

  @override
  String get templateOptional => 'Szablon (opcjonalny)';

  @override
  String get none => 'Brak';

  @override
  String get saveAsTemplate => 'Zapisz jako szablon';

  @override
  String get saveAsTemplateSubtitle =>
      'Użyj tej sesji jako szablonu dla przyszłych sesji';

  @override
  String get templateName => 'Nazwa Szablonu';

  @override
  String get templateNameHelper => 'Nazwa do identyfikacji tego szablonu';

  @override
  String get templateNameRequired => 'Proszę wprowadzić nazwę szablonu';

  @override
  String get defaultSessionTitle => 'Domyślny Tytuł Sesji';

  @override
  String get defaultSessionTitleHelper =>
      'Tytuł używany podczas tworzenia sesji z tego szablonu';

  @override
  String get sessionTitleRequired => 'Proszę wprowadzić tytuł sesji';

  @override
  String get createTemplate => 'Utwórz Szablon';

  @override
  String get editTemplate => 'Edytuj Szablon';

  @override
  String get create => 'Utwórz';

  @override
  String get templateNameDialogTitle => 'Nazwa Szablonu';

  @override
  String get templateNameDialogHelper =>
      'Nadaj temu szablonowi nazwę dla łatwej identyfikacji';

  @override
  String get templateManagement => 'Zarządzanie Szablonami';

  @override
  String get noTemplatesYet => 'Brak jeszcze szablonów';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Utwórz sesję i zaznacz \"Zapisz jako szablon\"';

  @override
  String get deleteTemplate => 'Usuń Szablon';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Czy na pewno chcesz usunąć \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Sesja: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Zapisz jako Szablon';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Szablon \"$name\" został pomyślnie zapisany';
  }

  @override
  String get debug => 'DEBUGOWANIE';

  @override
  String get debugDateSimulation => 'Symulacja Daty Debugowania';

  @override
  String get setCustomDate => 'Ustaw Niestandardową Datę';

  @override
  String get clear => 'Wyczyść';

  @override
  String now(String date) {
    return 'Teraz: $date';
  }

  @override
  String get today => 'Dzisiaj';

  @override
  String get yesterday => 'Wczoraj';

  @override
  String get tomorrow => 'Jutro';

  @override
  String daysAgo(int count) {
    return '$count dni temu';
  }

  @override
  String daysLater(int count) {
    return 'za $count dni';
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
  String get testNotifications => 'Powiadomienia testowe';

  @override
  String get testNotificationsDescription =>
      'Wyślij powiadomienie testowe za 2 sekundy, aby sprawdzić, czy powiadomienia działają.';

  @override
  String get sendTestNotification => 'Wyślij powiadomienie testowe';

  @override
  String get testNotificationScheduled =>
      'Powiadomienie testowe zaplanowane! Sprawdź za 2 sekundy.';

  @override
  String get testNotificationTitle => 'Powiadomienie testowe';

  @override
  String get testNotificationBody =>
      'Jeśli to widzisz, powiadomienia działają!';

  @override
  String get scheduledTestNotificationTitle =>
      'Zaplanowane powiadomienie testowe';

  @override
  String get scheduledTestNotificationBody =>
      'To zostało zaplanowane 2 sekundy temu';

  @override
  String startsAt(String time) {
    return 'Zaczyna się o $time';
  }
}
