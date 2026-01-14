// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Prenota Settimane';

  @override
  String get selectWeek => 'Seleziona Settimana';

  @override
  String get mon => 'Lun';

  @override
  String get tue => 'Mar';

  @override
  String get wed => 'Mer';

  @override
  String get thu => 'Gio';

  @override
  String get fri => 'Ven';

  @override
  String get sat => 'Sab';

  @override
  String get sun => 'Dom';

  @override
  String get noSessionsScheduled => 'Nessuna sessione programmata';

  @override
  String get tapToAddSession =>
      'Tocca il pulsante + per aggiungere una sessione';

  @override
  String student(int count) {
    return 'studente';
  }

  @override
  String students(int count) {
    return 'studenti';
  }

  @override
  String get deleteSession => 'Elimina Sessione';

  @override
  String deleteSessionConfirm(String title) {
    return 'Sei sicuro di voler eliminare \"$title\"?';
  }

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Elimina';

  @override
  String get createSession => 'Crea Sessione';

  @override
  String get editSession => 'Modifica Sessione';

  @override
  String get title => 'Titolo';

  @override
  String get titleRequired => 'Inserisci un titolo';

  @override
  String get startTime => 'Ora di Inizio';

  @override
  String get endTime => 'Ora di Fine';

  @override
  String get endTimeAfterStart =>
      'L\'ora di fine deve essere dopo l\'ora di inizio';

  @override
  String get descriptionOptional => 'Descrizione (opzionale)';

  @override
  String get save => 'Salva';

  @override
  String get add => 'Aggiungi';

  @override
  String get edit => 'Modifica';

  @override
  String get allEvents => 'Tutti gli Eventi';

  @override
  String get manageTemplates => 'Gestisci Modelli';

  @override
  String get exportData => 'Esporta Dati';

  @override
  String get importData => 'Importa Dati';

  @override
  String get saveExportFile => 'Salva File di Esportazione';

  @override
  String exportSuccessful(String path) {
    return 'Esportazione riuscita!\nSalvato in: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Esportazione fallita: $error';
  }

  @override
  String get importSuccessful => 'Importazione Riuscita';

  @override
  String get importFailed => 'Importazione Fallita';

  @override
  String get errorReadingFile => 'Errore nella lettura del file';

  @override
  String error(String error) {
    return 'Errore: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Cerca eventi...';

  @override
  String get noEventsScheduled => 'Nessun evento programmato';

  @override
  String get noEventsFound => 'Nessun evento trovato';

  @override
  String get createEventsFromCalendar => 'Crea eventi dal calendario';

  @override
  String get studentsJoiningThisSession =>
      'Studenti che Partecipano a Questa Sessione';

  @override
  String get addMember => 'Aggiungi Membro';

  @override
  String get noStudentsAddedYet => 'Nessuno studente aggiunto ancora';

  @override
  String get tapToAddMember => 'Tocca + per aggiungere un membro';

  @override
  String get allMembers => 'Tutti i Membri';

  @override
  String get addToSession => 'Aggiungi alla sessione';

  @override
  String get removeFromSession => 'Rimuovi dalla sessione';

  @override
  String get name => 'Nome';

  @override
  String get nameRequired => 'Inserisci un nome';

  @override
  String get nicknameOptional => 'Soprannome (opzionale)';

  @override
  String get ageOptional => 'Età (opzionale)';

  @override
  String get ageInvalid => 'Inserisci un\'età valida';

  @override
  String get phoneNumberOptional => 'Numero di Telefono (opzionale)';

  @override
  String get phoneNumberHint => 'es. +39 123 456 7890';

  @override
  String get addMemberTitle => 'Aggiungi Membro';

  @override
  String get editMemberTitle => 'Modifica Membro';

  @override
  String get member => 'Membro';

  @override
  String nameLabel(String name) {
    return 'Nome: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Età: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Telefono: $phone';
  }

  @override
  String get templateOptional => 'Modello (opzionale)';

  @override
  String get none => 'Nessuno';

  @override
  String get saveAsTemplate => 'Salva come modello';

  @override
  String get saveAsTemplateSubtitle =>
      'Usa questa sessione come modello per sessioni future';

  @override
  String get templateName => 'Nome Modello';

  @override
  String get templateNameHelper => 'Nome per identificare questo modello';

  @override
  String get templateNameRequired => 'Inserisci un nome modello';

  @override
  String get defaultSessionTitle => 'Titolo Sessione Predefinito';

  @override
  String get defaultSessionTitleHelper =>
      'Titolo utilizzato quando si creano sessioni da questo modello';

  @override
  String get sessionTitleRequired => 'Inserisci un titolo sessione';

  @override
  String get createTemplate => 'Crea Modello';

  @override
  String get editTemplate => 'Modifica Modello';

  @override
  String get create => 'Crea';

  @override
  String get templateNameDialogTitle => 'Nome Modello';

  @override
  String get templateNameDialogHelper =>
      'Dai un nome a questo modello per una facile identificazione';

  @override
  String get templateManagement => 'Gestione Modelli';

  @override
  String get noTemplatesYet => 'Nessun modello ancora';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Crea una sessione e seleziona \"Salva come modello\"';

  @override
  String get deleteTemplate => 'Elimina Modello';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Sei sicuro di voler eliminare \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Sessione: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Salva come Modello';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Modello \"$name\" salvato con successo';
  }

  @override
  String get debug => 'DEBUG';

  @override
  String get debugDateSimulation => 'Simulazione Data di Debug';

  @override
  String get setCustomDate => 'Imposta Data Personalizzata';

  @override
  String get clear => 'Cancella';

  @override
  String now(String date) {
    return 'Ora: $date';
  }

  @override
  String get today => 'Oggi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get tomorrow => 'Domani';

  @override
  String daysAgo(int count) {
    return '$count giorni fa';
  }

  @override
  String daysLater(int count) {
    return '$count giorni dopo';
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
  String get testNotifications => 'Notifiche di test';

  @override
  String get testNotificationsDescription =>
      'Invia una notifica di test tra 2 secondi per verificare che le notifiche funzionino.';

  @override
  String get sendTestNotification => 'Invia notifica di test';

  @override
  String get testNotificationScheduled =>
      'Notifica di test programmata! Controlla tra 2 secondi.';

  @override
  String get testNotificationTitle => 'Notifica di test';

  @override
  String get testNotificationBody => 'Se vedi questo, le notifiche funzionano!';

  @override
  String get scheduledTestNotificationTitle => 'Notifica di test programmata';

  @override
  String get scheduledTestNotificationBody =>
      'Questo è stato programmato 2 secondi fa';

  @override
  String startsAt(String time) {
    return 'Inizia alle $time';
  }
}
