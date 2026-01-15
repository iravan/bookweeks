// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Réservation Semaines';

  @override
  String get selectWeek => 'Sélectionner la semaine';

  @override
  String get mon => 'Lun';

  @override
  String get tue => 'Mar';

  @override
  String get wed => 'Mer';

  @override
  String get thu => 'Jeu';

  @override
  String get fri => 'Ven';

  @override
  String get sat => 'Sam';

  @override
  String get sun => 'Dim';

  @override
  String get noSessionsScheduled => 'Aucune session prévue';

  @override
  String get tapToAddSession =>
      'Appuyez sur le bouton + pour ajouter une session';

  @override
  String student(int count) {
    return 'étudiant';
  }

  @override
  String students(int count) {
    return 'étudiants';
  }

  @override
  String get deleteSession => 'Supprimer la session';

  @override
  String deleteSessionConfirm(String title) {
    return 'Êtes-vous sûr de vouloir supprimer « $title » ?';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get createSession => 'Créer une session';

  @override
  String get editSession => 'Modifier la session';

  @override
  String get title => 'Titre';

  @override
  String get titleRequired => 'Veuillez saisir un titre';

  @override
  String get startTime => 'Heure de début';

  @override
  String get endTime => 'Heure de fin';

  @override
  String get endTimeAfterStart =>
      'L\'heure de fin doit être postérieure à l\'heure de début';

  @override
  String get descriptionOptional => 'Description (facultatif)';

  @override
  String get save => 'Enregistrer';

  @override
  String get add => 'Ajouter';

  @override
  String get edit => 'Modifier';

  @override
  String get allEvents => 'Tous les événements';

  @override
  String get manageTemplates => 'Gérer les modèles';

  @override
  String get exportData => 'Exporter les données';

  @override
  String get importData => 'Importer les données';

  @override
  String get saveExportFile => 'Enregistrer le fichier d\'exportation';

  @override
  String exportSuccessful(String path) {
    return 'Exportation réussie !\nEnregistré dans : $path';
  }

  @override
  String exportFailed(String error) {
    return 'Échec de l\'exportation : $error';
  }

  @override
  String get importSuccessful => 'Importation réussie';

  @override
  String get importFailed => 'Échec de l\'importation';

  @override
  String get errorReadingFile => 'Erreur lors de la lecture du fichier';

  @override
  String error(String error) {
    return 'Erreur : $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Rechercher des événements...';

  @override
  String get noEventsScheduled => 'Aucun événement prévu';

  @override
  String get noEventsFound => 'Aucun événement trouvé';

  @override
  String get createEventsFromCalendar =>
      'Créer des événements depuis le calendrier';

  @override
  String get studentsJoiningThisSession =>
      'Étudiants participant à cette session';

  @override
  String get addMember => 'Ajouter un membre';

  @override
  String get noStudentsAddedYet => 'Aucun étudiant ajouté pour le moment';

  @override
  String get tapToAddMember => 'Appuyez sur + pour ajouter un membre';

  @override
  String get allMembers => 'Tous les membres';

  @override
  String get addToSession => 'Ajouter à la session';

  @override
  String get removeFromSession => 'Retirer de la session';

  @override
  String get name => 'Nom';

  @override
  String get nameRequired => 'Veuillez saisir un nom';

  @override
  String get nicknameOptional => 'Surnom (facultatif)';

  @override
  String get ageOptional => 'Âge (facultatif)';

  @override
  String get ageInvalid => 'Veuillez saisir un âge valide';

  @override
  String get phoneNumberOptional => 'Numéro de téléphone (facultatif)';

  @override
  String get phoneNumberHint => 'ex. : +33 6 12 34 56 78';

  @override
  String get addMemberTitle => 'Ajouter un membre';

  @override
  String get editMemberTitle => 'Modifier le membre';

  @override
  String get member => 'Membre';

  @override
  String nameLabel(String name) {
    return 'Nom : $name';
  }

  @override
  String ageLabel(int age) {
    return 'Âge : $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Téléphone : $phone';
  }

  @override
  String get templateOptional => 'Modèle (facultatif)';

  @override
  String get none => 'Aucun';

  @override
  String get saveAsTemplate => 'Enregistrer comme modèle';

  @override
  String get saveAsTemplateSubtitle =>
      'Utiliser cette session comme modèle pour les sessions futures';

  @override
  String get templateName => 'Nom du modèle';

  @override
  String get templateNameHelper => 'Nom pour identifier ce modèle';

  @override
  String get templateNameRequired => 'Veuillez saisir un nom de modèle';

  @override
  String get defaultSessionTitle => 'Titre de session par défaut';

  @override
  String get defaultSessionTitleHelper =>
      'Titre utilisé lors de la création de sessions à partir de ce modèle';

  @override
  String get sessionTitleRequired => 'Veuillez saisir un titre de session';

  @override
  String get createTemplate => 'Créer un modèle';

  @override
  String get editTemplate => 'Modifier le modèle';

  @override
  String get create => 'Créer';

  @override
  String get templateNameDialogTitle => 'Nom du modèle';

  @override
  String get templateNameDialogHelper =>
      'Donnez un nom à ce modèle pour faciliter son identification';

  @override
  String get templateManagement => 'Gestion des modèles';

  @override
  String get noTemplatesYet => 'Aucun modèle pour le moment';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Créez une session et cochez « Enregistrer comme modèle »';

  @override
  String get deleteTemplate => 'Supprimer le modèle';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Êtes-vous sûr de vouloir supprimer « $title » ?';
  }

  @override
  String session(String title) {
    return 'Session : $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Enregistrer comme modèle';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Le modèle « $name » a été enregistré avec succès';
  }

  @override
  String get debug => 'DEBUG';

  @override
  String get debugDateSimulation => 'Simulation de date de débogage';

  @override
  String get setCustomDate => 'Définir une date personnalisée';

  @override
  String get clear => 'Effacer';

  @override
  String now(String date) {
    return 'Maintenant : $date';
  }

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get yesterday => 'Hier';

  @override
  String get tomorrow => 'Demain';

  @override
  String daysAgo(int count) {
    return 'Il y a $count jour';
  }

  @override
  String daysLater(int count) {
    return 'Dans $count jour';
  }

  @override
  String get notificationSettings => 'Paramètres de notification';

  @override
  String get notificationTiming => 'Horaire des notifications';

  @override
  String get notificationTimingDescription =>
      'Choisissez quand recevoir des notifications avant le début de chaque session';

  @override
  String get atEventStart => 'Au début de l\'événement';

  @override
  String beforeEventStart(String timing) {
    return '$timing avant le début de l\'événement';
  }

  @override
  String get notificationTimingUpdated =>
      'Horaire des notifications mis à jour';

  @override
  String get aboutNotifications => 'À propos des notifications';

  @override
  String get notificationInfo =>
      'Vous recevrez des notifications avant le début de chaque session programmée. Les notifications sont automatiquement programmées lors de la création ou de la mise à jour des sessions, et toutes les sessions existantes sont programmées au lancement de l\'application.';

  @override
  String get rescheduleNotifications => 'Reprogrammer les notifications';

  @override
  String get rescheduleNotificationsDescription =>
      'Reprogrammez manuellement les notifications pour toutes les sessions futures existantes. Utile si vous venez d\'activer les notifications ou si vous souhaitez vous assurer que tous les événements ont des notifications programmées.';

  @override
  String get rescheduleNow => 'Reprogrammer maintenant';

  @override
  String get rescheduling => 'Reprogrammation...';

  @override
  String notificationsRescheduled(int count) {
    return 'Notifications reprogrammées pour $count session(s) future(s)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Erreur lors de la reprogrammation des notifications : $error';
  }

  @override
  String get permissionsRequired => 'Autorisations de notification requises';

  @override
  String get permissionsRequiredDescription =>
      'Veuillez accorder les autorisations de notification pour recevoir des rappels pour vos sessions. Appuyez sur le bouton ci-dessous pour demander les autorisations.';

  @override
  String get requestPermissions => 'Demander les autorisations';

  @override
  String get permissionsGranted => 'Autorisations de notification accordées !';

  @override
  String get permissionsDenied =>
      'Les autorisations de notification ont été refusées. Veuillez les activer dans les paramètres.';

  @override
  String get timing0Min => '0 min';

  @override
  String get timing1Min => '1 min';

  @override
  String get timing5Mins => '5 min';

  @override
  String get timing30Mins => '30 min';

  @override
  String get timing1Hour => '1 heure';

  @override
  String get timing6Hours => '6 heures';

  @override
  String timingMinutes(int count) {
    return '$count min';
  }

  @override
  String timingHours(int count) {
    return '$count heure';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count heures';
  }

  @override
  String get testNotifications => 'Notifications de test';

  @override
  String get testNotificationsDescription =>
      'Envoyer une notification de test dans 2 secondes pour vérifier que les notifications fonctionnent.';

  @override
  String get sendTestNotification => 'Envoyer une notification de test';

  @override
  String get testNotificationScheduled =>
      'Notification de test programmée ! Vérifiez dans 2 secondes.';

  @override
  String get testNotificationTitle => 'Notification de test';

  @override
  String get testNotificationBody =>
      'Si vous voyez ceci, les notifications fonctionnent !';

  @override
  String get scheduledTestNotificationTitle =>
      'Notification de test programmée';

  @override
  String get scheduledTestNotificationBody =>
      'Ceci a été programmé il y a 2 secondes';

  @override
  String startsAt(String time) {
    return 'Commence à $time';
  }

  @override
  String get themeSettings => 'Paramètres du thème';

  @override
  String get selectTheme => 'Sélectionner un thème';

  @override
  String get selectThemeDescription =>
      'Choisissez un thème de couleur pour l\'application. Le thème sera appliqué dans toute l\'application.';

  @override
  String get themeChanged => 'Thème modifié avec succès !';

  @override
  String get aboutTheme => 'À propos des thèmes';

  @override
  String get themeInfo =>
      'Changer le thème mettra à jour les couleurs dans toute l\'application, y compris les boutons, les barres d\'application et autres éléments de l\'interface. Votre préférence de thème sera enregistrée et appliquée automatiquement lorsque vous redémarrerez l\'application.';

  @override
  String get enableNotifications => 'Activer les notifications';

  @override
  String get enableNotificationsDescription =>
      'Activez ou désactivez les notifications. Lorsqu\'elles sont désactivées, aucune notification ne sera envoyée pour vos sessions.';

  @override
  String get notificationsEnabled => 'Notifications activées';

  @override
  String get notificationsDisabled => 'Notifications désactivées';
}
