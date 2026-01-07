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
}
