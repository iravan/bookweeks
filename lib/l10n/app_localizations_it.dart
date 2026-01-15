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
  String get notificationSettings => 'Impostazioni notifiche';

  @override
  String get notificationTiming => 'Tempistica notifiche';

  @override
  String get notificationTimingDescription =>
      'Scegli quando ricevere le notifiche prima dell\'inizio di ogni sessione';

  @override
  String get atEventStart => 'All\'inizio dell\'evento';

  @override
  String beforeEventStart(String timing) {
    return '$timing prima dell\'inizio dell\'evento';
  }

  @override
  String get notificationTimingUpdated => 'Tempistica notifiche aggiornata';

  @override
  String get aboutNotifications => 'Informazioni sulle notifiche';

  @override
  String get notificationInfo =>
      'Riceverai notifiche prima dell\'inizio di ogni sessione programmata. Le notifiche vengono programmate automaticamente quando crei o aggiorni le sessioni, e tutte le sessioni esistenti vengono programmate all\'avvio dell\'app.';

  @override
  String get rescheduleNotifications => 'Ripianifica notifiche';

  @override
  String get rescheduleNotificationsDescription =>
      'Ripianifica manualmente le notifiche per tutte le sessioni future esistenti. Utile se hai appena abilitato le notifiche o vuoi assicurarti che tutti gli eventi abbiano notifiche programmate.';

  @override
  String get rescheduleNow => 'Ripianifica ora';

  @override
  String get rescheduling => 'Ripianificazione...';

  @override
  String notificationsRescheduled(int count) {
    return 'Notifiche ripianificate per $count sessione(i) futura(e)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Errore nella ripianificazione delle notifiche: $error';
  }

  @override
  String get permissionsRequired => 'Autorizzazioni notifiche richieste';

  @override
  String get permissionsRequiredDescription =>
      'Concedi le autorizzazioni per le notifiche per ricevere promemoria per le tue sessioni. Tocca il pulsante qui sotto per richiedere le autorizzazioni.';

  @override
  String get requestPermissions => 'Richiedi autorizzazioni';

  @override
  String get permissionsGranted => 'Autorizzazioni notifiche concesse!';

  @override
  String get permissionsDenied =>
      'Le autorizzazioni per le notifiche sono state negate. Abilitalle nelle Impostazioni.';

  @override
  String get timing0Min => '0 min';

  @override
  String get timing1Min => '1 min';

  @override
  String get timing5Mins => '5 min';

  @override
  String get timing30Mins => '30 min';

  @override
  String get timing1Hour => '1 ora';

  @override
  String get timing6Hours => '6 ore';

  @override
  String timingMinutes(int count) {
    return '$count min';
  }

  @override
  String timingHours(int count) {
    return '$count ora';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count ore';
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

  @override
  String get themeSettings => 'Impostazioni tema';

  @override
  String get selectTheme => 'Seleziona tema';

  @override
  String get selectThemeDescription =>
      'Scegli un tema colore per l\'app. Il tema verrà applicato in tutta l\'applicazione.';

  @override
  String get themeChanged => 'Tema modificato con successo!';

  @override
  String get aboutTheme => 'Informazioni sui temi';

  @override
  String get themeInfo =>
      'Cambiare il tema aggiornerà i colori in tutta l\'app, inclusi pulsanti, barre dell\'app e altri elementi dell\'interfaccia. La tua preferenza del tema verrà salvata e applicata automaticamente quando riavvii l\'app.';

  @override
  String get enableNotifications => 'Abilita notifiche';

  @override
  String get enableNotificationsDescription =>
      'Attiva o disattiva le notifiche. Quando disattivate, non verranno inviate notifiche per le tue sessioni.';

  @override
  String get notificationsEnabled => 'Notifiche abilitate';

  @override
  String get notificationsDisabled => 'Notifiche disabilitate';

  @override
  String get help => 'Aiuto';

  @override
  String get gettingStarted => 'Per iniziare';

  @override
  String get gettingStartedDescription =>
      'Book Weeks ti aiuta a gestire il tuo programma settimanale e le sessioni. Usa il calendario in alto per navigare tra le settimane e tocca un giorno per visualizzare o aggiungere sessioni per quel giorno.';

  @override
  String get creatingSessions => 'Creare sessioni';

  @override
  String get creatingSessionsDescription =>
      'Per creare una sessione, tocca il pulsante + su qualsiasi giorno. Puoi impostare il titolo della sessione, l\'ora, la durata e aggiungere studenti. Le sessioni vengono salvate automaticamente e appariranno sul tuo calendario.';

  @override
  String get managingStudents => 'Gestire gli studenti';

  @override
  String get managingStudentsDescription =>
      'Quando crei o modifichi una sessione, puoi aggiungere studenti toccando il pulsante + nella sezione studenti. Puoi aggiungere nomi, soprannomi, età e numeri di telefono. Gli studenti possono essere riutilizzati in più sessioni.';

  @override
  String get usingTemplates => 'Usare i modelli';

  @override
  String get usingTemplatesDescription =>
      'I modelli ti permettono di creare rapidamente sessioni con studenti preconfigurati. Crea modelli dal menu (tre punti) → Gestisci modelli. Quando crei una sessione, puoi selezionare un modello per aggiungere automaticamente i suoi studenti.';

  @override
  String get notificationsHelp => 'Notifiche';

  @override
  String get notificationsHelpDescription =>
      'Puoi ricevere notifiche prima che inizino le tue sessioni. Vai alle Impostazioni notifiche (icona campanella) per abilitare le notifiche, impostare il momento (quanti minuti prima) e testare le tue impostazioni di notifica. Assicurati di concedere i permessi di notifica quando richiesto.';

  @override
  String get exportImport => 'Esporta e importa';

  @override
  String get exportImportDescription =>
      'Puoi esportare i tuoi dati (sessioni, studenti, modelli) in un file YAML per backup o trasferimento. Usa il menu (tre punti) → Esporta dati. Per importare, usa Importa dati dallo stesso menu. Questo è utile per eseguire il backup dei tuoi dati o spostarli su un altro dispositivo.';

  @override
  String get navigationTips => 'Suggerimenti di navigazione';

  @override
  String get navigationTipsDescription =>
      '• Usa il calendario settimanale per navigare tra le settimane\n• Tocca le schede del giorno per visualizzare le sessioni di quel giorno\n• Usa il pulsante Tutti gli eventi (icona calendario) per vedere tutte le sessioni in un elenco\n• Accedi alle impostazioni tramite le icone nella barra superiore: Tema (tavolozza), Eventi (calendario), Notifiche (campanella) e Aiuto (punto interrogativo)';
}
