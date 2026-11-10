// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Wochen Buchen';

  @override
  String get earlierWeeks => 'Frühere Wochen';

  @override
  String get older => 'Älter';

  @override
  String get selectWeek => 'Woche Auswählen';

  @override
  String get mon => 'Mo';

  @override
  String get tue => 'Di';

  @override
  String get wed => 'Mi';

  @override
  String get thu => 'Do';

  @override
  String get fri => 'Fr';

  @override
  String get sat => 'Sa';

  @override
  String get sun => 'So';

  @override
  String get noSessionsScheduled => 'Keine Sitzungen geplant';

  @override
  String get tapToAddSession =>
      'Tippen Sie auf die + Schaltfläche, um eine Sitzung hinzuzufügen';

  @override
  String student(int count) {
    return 'Schüler';
  }

  @override
  String students(int count) {
    return 'Schüler';
  }

  @override
  String get deleteSession => 'Sitzung Löschen';

  @override
  String deleteSessionConfirm(String title) {
    return 'Sind Sie sicher, dass Sie \"$title\" löschen möchten?';
  }

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get createSession => 'Sitzung Erstellen';

  @override
  String get editSession => 'Sitzung Bearbeiten';

  @override
  String get title => 'Titel';

  @override
  String get titleRequired => 'Bitte geben Sie einen Titel ein';

  @override
  String get startTime => 'Startzeit';

  @override
  String get endTime => 'Endzeit';

  @override
  String get endTimeAfterStart => 'Die Endzeit muss nach der Startzeit liegen';

  @override
  String get descriptionOptional => 'Beschreibung (optional)';

  @override
  String get save => 'Speichern';

  @override
  String get add => 'Hinzufügen';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get allEvents => 'Alle Veranstaltungen';

  @override
  String get manageTemplates => 'Vorlagen Verwalten';

  @override
  String get exportData => 'Daten Exportieren';

  @override
  String get importData => 'Daten Importieren';

  @override
  String get saveExportFile => 'Exportdatei Speichern';

  @override
  String exportSuccessful(String path) {
    return 'Export erfolgreich!\nGespeichert in: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Export fehlgeschlagen: $error';
  }

  @override
  String get importSuccessful => 'Import Erfolgreich';

  @override
  String get importFailed => 'Import Fehlgeschlagen';

  @override
  String get errorReadingFile => 'Fehler beim Lesen der Datei';

  @override
  String error(String error) {
    return 'Fehler: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Veranstaltungen suchen...';

  @override
  String get noEventsScheduled => 'Keine Veranstaltungen geplant';

  @override
  String get noEventsFound => 'Keine Veranstaltungen gefunden';

  @override
  String get createEventsFromCalendar =>
      'Veranstaltungen aus dem Kalender erstellen';

  @override
  String get studentsJoiningThisSession =>
      'Schüler, die an dieser Sitzung Teilnehmen';

  @override
  String get addMember => 'Mitglied Hinzufügen';

  @override
  String get noStudentsAddedYet => 'Noch keine Schüler hinzugefügt';

  @override
  String get tapToAddMember => 'Tippen Sie auf +, um ein Mitglied hinzuzufügen';

  @override
  String get allMembers => 'Alle Mitglieder';

  @override
  String get addToSession => 'Zur Sitzung hinzufügen';

  @override
  String get removeFromSession => 'Aus Sitzung entfernen';

  @override
  String get name => 'Name';

  @override
  String get nameRequired => 'Bitte geben Sie einen Namen ein';

  @override
  String get nicknameOptional => 'Spitzname (optional)';

  @override
  String get ageOptional => 'Alter (optional)';

  @override
  String get ageInvalid => 'Bitte geben Sie ein gültiges Alter ein';

  @override
  String get phoneNumberOptional => 'Telefonnummer (optional)';

  @override
  String get phoneNumberHint => 'z.B. +49 123 456789';

  @override
  String get addMemberTitle => 'Mitglied Hinzufügen';

  @override
  String get editMemberTitle => 'Mitglied Bearbeiten';

  @override
  String get member => 'Mitglied';

  @override
  String nameLabel(String name) {
    return 'Name: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Alter: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Telefon: $phone';
  }

  @override
  String get templateOptional => 'Vorlage (optional)';

  @override
  String get none => 'Keine';

  @override
  String get saveAsTemplate => 'Als Vorlage speichern';

  @override
  String get saveAsTemplateSubtitle =>
      'Verwenden Sie diese Sitzung als Vorlage für zukünftige Sitzungen';

  @override
  String get templateName => 'Vorlagenname';

  @override
  String get templateNameHelper => 'Name zur Identifizierung dieser Vorlage';

  @override
  String get templateNameRequired => 'Bitte geben Sie einen Vorlagenname ein';

  @override
  String get defaultSessionTitle => 'Standard-Sitzungstitel';

  @override
  String get defaultSessionTitleHelper =>
      'Titel, der beim Erstellen von Sitzungen aus dieser Vorlage verwendet wird';

  @override
  String get sessionTitleRequired => 'Bitte geben Sie einen Sitzungstitel ein';

  @override
  String get createTemplate => 'Vorlage Erstellen';

  @override
  String get editTemplate => 'Vorlage Bearbeiten';

  @override
  String get create => 'Erstellen';

  @override
  String get templateNameDialogTitle => 'Vorlagenname';

  @override
  String get templateNameDialogHelper =>
      'Geben Sie dieser Vorlage einen Namen zur einfachen Identifizierung';

  @override
  String get templateManagement => 'Vorlagenverwaltung';

  @override
  String get noTemplatesYet => 'Noch keine Vorlagen';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Erstellen Sie eine Sitzung und aktivieren Sie \"Als Vorlage speichern\"';

  @override
  String get deleteTemplate => 'Vorlage Löschen';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Sind Sie sicher, dass Sie \"$title\" löschen möchten?';
  }

  @override
  String session(String title) {
    return 'Sitzung: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Als Vorlage Speichern';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Vorlage \"$name\" erfolgreich gespeichert';
  }

  @override
  String get debug => 'DEBUG';

  @override
  String get debugDateSimulation => 'Debug-Datumsimulation';

  @override
  String get setCustomDate => 'Benutzerdefiniertes Datum Festlegen';

  @override
  String get clear => 'Löschen';

  @override
  String now(String date) {
    return 'Jetzt: $date';
  }

  @override
  String get today => 'Heute';

  @override
  String get yesterday => 'Gestern';

  @override
  String get tomorrow => 'Morgen';

  @override
  String daysAgo(int count) {
    return 'vor $count Tagen';
  }

  @override
  String daysLater(int count) {
    return 'in $count Tagen';
  }

  @override
  String get notificationSettings => 'Benachrichtigungseinstellungen';

  @override
  String get notificationTiming => 'Benachrichtigungszeitpunkt';

  @override
  String get notificationTimingDescription =>
      'Wählen Sie, wann Sie Benachrichtigungen vor Beginn jeder Sitzung erhalten möchten';

  @override
  String get atEventStart => 'Bei Sitzungsbeginn';

  @override
  String beforeEventStart(String timing) {
    return '$timing vor Sitzungsbeginn';
  }

  @override
  String get notificationTimingUpdated =>
      'Benachrichtigungszeitpunkt aktualisiert';

  @override
  String get aboutNotifications => 'Über Benachrichtigungen';

  @override
  String get notificationInfo =>
      'Sie erhalten Benachrichtigungen vor Beginn jeder geplanten Sitzung. Benachrichtigungen werden automatisch geplant, wenn Sie Sitzungen erstellen oder aktualisieren, und alle vorhandenen Sitzungen werden beim Start der App geplant.';

  @override
  String get rescheduleNotifications => 'Benachrichtigungen neu planen';

  @override
  String get rescheduleNotificationsDescription =>
      'Planen Sie Benachrichtigungen für alle vorhandenen zukünftigen Sitzungen manuell neu. Dies ist nützlich, wenn Sie Benachrichtigungen gerade aktiviert haben oder sicherstellen möchten, dass alle Ereignisse geplante Benachrichtigungen haben.';

  @override
  String get rescheduleNow => 'Jetzt neu planen';

  @override
  String get rescheduling => 'Wird neu geplant...';

  @override
  String notificationsRescheduled(int count) {
    return 'Benachrichtigungen für $count zukünftige Sitzung(en) neu geplant';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Fehler beim Neuanordnen der Benachrichtigungen: $error';
  }

  @override
  String get permissionsRequired =>
      'Benachrichtigungsberechtigungen erforderlich';

  @override
  String get permissionsRequiredDescription =>
      'Bitte gewähren Sie Benachrichtigungsberechtigungen, um Erinnerungen für Ihre Sitzungen zu erhalten. Tippen Sie auf die Schaltfläche unten, um Berechtigungen anzufordern.';

  @override
  String get requestPermissions => 'Berechtigungen anfordern';

  @override
  String get permissionsGranted => 'Benachrichtigungsberechtigungen gewährt!';

  @override
  String get permissionsDenied =>
      'Benachrichtigungsberechtigungen wurden verweigert. Bitte aktivieren Sie sie in den Einstellungen.';

  @override
  String get timing0Min => '0 Min';

  @override
  String get timing1Min => '1 Min';

  @override
  String get timing5Mins => '5 Min';

  @override
  String get timing30Mins => '30 Min';

  @override
  String get timing1Hour => '1 Stunde';

  @override
  String get timing6Hours => '6 Stunden';

  @override
  String timingMinutes(int count) {
    return '$count Min';
  }

  @override
  String timingHours(int count) {
    return '$count Stunde';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count Stunden';
  }

  @override
  String get testNotifications => 'Test-Benachrichtigungen';

  @override
  String get testNotificationsDescription =>
      'Eine Testbenachrichtigung in 2 Sekunden senden, um zu überprüfen, ob Benachrichtigungen funktionieren.';

  @override
  String get sendTestNotification => 'Testbenachrichtigung senden';

  @override
  String get testNotificationScheduled =>
      'Testbenachrichtigung geplant! In 2 Sekunden überprüfen.';

  @override
  String get testNotificationTitle => 'Test-Benachrichtigung';

  @override
  String get testNotificationBody =>
      'Wenn Sie dies sehen, funktionieren Benachrichtigungen!';

  @override
  String get scheduledTestNotificationTitle => 'Geplante Testbenachrichtigung';

  @override
  String get scheduledTestNotificationBody =>
      'Dies wurde vor 2 Sekunden geplant';

  @override
  String startsAt(String time) {
    return 'Beginnt um $time';
  }

  @override
  String get themeSettings => 'Theme-Einstellungen';

  @override
  String get selectTheme => 'Thema auswählen';

  @override
  String get selectThemeDescription =>
      'Wählen Sie ein Farbschema für die App. Das Thema wird in der gesamten Anwendung angewendet.';

  @override
  String get themeChanged => 'Thema erfolgreich geändert!';

  @override
  String get aboutTheme => 'Über Themen';

  @override
  String get themeInfo =>
      'Das Ändern des Themas aktualisiert die Farben in der gesamten App, einschließlich Schaltflächen, App-Leisten und anderen UI-Elementen. Ihre Theme-Präferenz wird gespeichert und beim Neustart der App automatisch angewendet.';

  @override
  String get enableNotifications => 'Benachrichtigungen aktivieren';

  @override
  String get enableNotificationsDescription =>
      'Benachrichtigungen ein- oder ausschalten. Wenn deaktiviert, werden keine Benachrichtigungen für Ihre Sitzungen gesendet.';

  @override
  String get notificationsEnabled => 'Benachrichtigungen aktiviert';

  @override
  String get notificationsDisabled => 'Benachrichtigungen deaktiviert';

  @override
  String get help => 'Hilfe';

  @override
  String get gettingStarted => 'Erste Schritte';

  @override
  String get gettingStartedDescription =>
      'Book Weeks hilft Ihnen, Ihren wöchentlichen Zeitplan und Ihre Sitzungen zu verwalten. Verwenden Sie den Kalender oben, um zwischen Wochen zu navigieren, und tippen Sie auf einen Tag, um Sitzungen für diesen Tag anzuzeigen oder hinzuzufügen.';

  @override
  String get creatingSessions => 'Sitzungen erstellen';

  @override
  String get creatingSessionsDescription =>
      'Um eine Sitzung zu erstellen, tippen Sie auf die + Schaltfläche an einem Tag. Sie können den Sitzungstitel, die Zeit, die Dauer festlegen und Schüler hinzufügen. Sitzungen werden automatisch gespeichert und erscheinen in Ihrem Kalender.';

  @override
  String get managingStudents => 'Schüler verwalten';

  @override
  String get managingStudentsDescription =>
      'Beim Erstellen oder Bearbeiten einer Sitzung können Sie Schüler hinzufügen, indem Sie auf die + Schaltfläche im Schülerbereich tippen. Sie können Namen, Spitznamen, Alter und Telefonnummern hinzufügen. Schüler können in mehreren Sitzungen wiederverwendet werden.';

  @override
  String get usingTemplates => 'Vorlagen verwenden';

  @override
  String get usingTemplatesDescription =>
      'Vorlagen ermöglichen es Ihnen, schnell Sitzungen mit vorkonfigurierten Schülern zu erstellen. Erstellen Sie Vorlagen über das Menü (drei Punkte) → Vorlagen verwalten. Beim Erstellen einer Sitzung können Sie eine Vorlage auswählen, um deren Schüler automatisch hinzuzufügen.';

  @override
  String get notificationsHelp => 'Benachrichtigungen';

  @override
  String get notificationsHelpDescription =>
      'Sie können Benachrichtigungen erhalten, bevor Ihre Sitzungen beginnen. Gehen Sie zu Benachrichtigungseinstellungen (Glocken-Symbol), um Benachrichtigungen zu aktivieren, das Timing festzulegen (wie viele Minuten vorher) und Ihre Benachrichtigungseinstellungen zu testen. Stellen Sie sicher, dass Sie Benachrichtigungsberechtigungen erteilen, wenn Sie dazu aufgefordert werden.';

  @override
  String get exportImport => 'Exportieren & Importieren';

  @override
  String get exportImportDescription =>
      'Sie können Ihre Daten (Sitzungen, Schüler, Vorlagen) in eine YAML-Datei exportieren, um sie zu sichern oder zu übertragen. Verwenden Sie das Menü (drei Punkte) → Daten exportieren. Zum Importieren verwenden Sie Daten importieren aus demselben Menü. Dies ist nützlich, um Ihre Daten zu sichern oder auf ein anderes Gerät zu übertragen.';

  @override
  String get navigationTips => 'Navigations-Tipps';

  @override
  String get navigationTipsDescription =>
      '• Verwenden Sie den Wochenkalender, um zwischen Wochen zu navigieren\n• Tippen Sie auf Tages-Tabs, um Sitzungen für diesen Tag anzuzeigen\n• Verwenden Sie die Schaltfläche Alle Ereignisse (Kalender-Symbol), um alle Sitzungen in einer Liste anzuzeigen\n• Greifen Sie auf Einstellungen über die Symbole in der oberen Leiste zu: Thema (Palette), Ereignisse (Kalender), Benachrichtigungen (Glocke) und Hilfe (Fragezeichen)';
}
