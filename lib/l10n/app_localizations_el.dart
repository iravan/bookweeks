// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Κράτηση Εβδομάδων';

  @override
  String get selectWeek => 'Επιλέξτε Εβδομάδα';

  @override
  String get mon => 'Δευ';

  @override
  String get tue => 'Τρι';

  @override
  String get wed => 'Τετ';

  @override
  String get thu => 'Πεμ';

  @override
  String get fri => 'Παρ';

  @override
  String get sat => 'Σαβ';

  @override
  String get sun => 'Κυρ';

  @override
  String get noSessionsScheduled => 'Δεν υπάρχουν προγραμματισμένες συνεδρίες';

  @override
  String get tapToAddSession =>
      'Πατήστε το κουμπί + για να προσθέσετε συνεδρία';

  @override
  String student(int count) {
    return 'φοιτητής';
  }

  @override
  String students(int count) {
    return 'φοιτητές';
  }

  @override
  String get deleteSession => 'Διαγραφή Συνεδρίας';

  @override
  String deleteSessionConfirm(String title) {
    return 'Είστε σίγουροι ότι θέλετε να διαγράψετε το \"$title\";';
  }

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get delete => 'Διαγραφή';

  @override
  String get createSession => 'Δημιουργία Συνεδρίας';

  @override
  String get editSession => 'Επεξεργασία Συνεδρίας';

  @override
  String get title => 'Τίτλος';

  @override
  String get titleRequired => 'Παρακαλώ εισάγετε τίτλο';

  @override
  String get startTime => 'Ώρα Έναρξης';

  @override
  String get endTime => 'Ώρα Λήξης';

  @override
  String get endTimeAfterStart =>
      'Η ώρα λήξης πρέπει να είναι μετά την ώρα έναρξης';

  @override
  String get descriptionOptional => 'Περιγραφή (προαιρετικό)';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get add => 'Προσθήκη';

  @override
  String get edit => 'Επεξεργασία';

  @override
  String get allEvents => 'Όλα τα Γεγονότα';

  @override
  String get manageTemplates => 'Διαχείριση Προτύπων';

  @override
  String get exportData => 'Εξαγωγή Δεδομένων';

  @override
  String get importData => 'Εισαγωγή Δεδομένων';

  @override
  String get saveExportFile => 'Αποθήκευση Αρχείου Εξαγωγής';

  @override
  String exportSuccessful(String path) {
    return 'Η εξαγωγή ήταν επιτυχής!\nΑποθηκεύτηκε σε: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Η εξαγωγή απέτυχε: $error';
  }

  @override
  String get importSuccessful => 'Η Εισαγωγή Ήταν Επιτυχής';

  @override
  String get importFailed => 'Η Εισαγωγή Απέτυχε';

  @override
  String get errorReadingFile => 'Σφάλμα ανάγνωσης αρχείου';

  @override
  String error(String error) {
    return 'Σφάλμα: $error';
  }

  @override
  String get ok => 'Εντάξει';

  @override
  String get searchEvents => 'Αναζήτηση γεγονότων...';

  @override
  String get noEventsScheduled => 'Δεν υπάρχουν προγραμματισμένα γεγονότα';

  @override
  String get noEventsFound => 'Δεν βρέθηκαν γεγονότα';

  @override
  String get createEventsFromCalendar =>
      'Δημιουργία γεγονότων από το ημερολόγιο';

  @override
  String get studentsJoiningThisSession =>
      'Φοιτητές που Συμμετέχουν σε Αυτή τη Συνεδρία';

  @override
  String get addMember => 'Προσθήκη Μέλους';

  @override
  String get noStudentsAddedYet => 'Δεν έχουν προστεθεί ακόμα φοιτητές';

  @override
  String get tapToAddMember => 'Πατήστε + για να προσθέσετε μέλος';

  @override
  String get allMembers => 'Όλα τα Μέλη';

  @override
  String get addToSession => 'Προσθήκη στη συνεδρία';

  @override
  String get removeFromSession => 'Αφαίρεση από τη συνεδρία';

  @override
  String get name => 'Όνομα';

  @override
  String get nameRequired => 'Παρακαλώ εισάγετε όνομα';

  @override
  String get nicknameOptional => 'Ψευδώνυμο (προαιρετικό)';

  @override
  String get ageOptional => 'Ηλικία (προαιρετικό)';

  @override
  String get ageInvalid => 'Παρακαλώ εισάγετε έγκυρη ηλικία';

  @override
  String get phoneNumberOptional => 'Αριθμός Τηλεφώνου (προαιρετικό)';

  @override
  String get phoneNumberHint => 'π.χ. +30 210 123 4567';

  @override
  String get addMemberTitle => 'Προσθήκη Μέλους';

  @override
  String get editMemberTitle => 'Επεξεργασία Μέλους';

  @override
  String get member => 'Μέλος';

  @override
  String nameLabel(String name) {
    return 'Όνομα: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Ηλικία: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Τηλέφωνο: $phone';
  }

  @override
  String get templateOptional => 'Πρότυπο (προαιρετικό)';

  @override
  String get none => 'Κανένα';

  @override
  String get saveAsTemplate => 'Αποθήκευση ως πρότυπο';

  @override
  String get saveAsTemplateSubtitle =>
      'Χρήση αυτής της συνεδρίας ως πρότυπο για μελλοντικές συνεδρίες';

  @override
  String get templateName => 'Όνομα Προτύπου';

  @override
  String get templateNameHelper =>
      'Όνομα για τον προσδιορισμό αυτού του προτύπου';

  @override
  String get templateNameRequired => 'Παρακαλώ εισάγετε όνομα προτύπου';

  @override
  String get defaultSessionTitle => 'Προεπιλεγμένος Τίτλος Συνεδρίας';

  @override
  String get defaultSessionTitleHelper =>
      'Τίτλος που χρησιμοποιείται κατά τη δημιουργία συνεδριών από αυτό το πρότυπο';

  @override
  String get sessionTitleRequired => 'Παρακαλώ εισάγετε τίτλο συνεδρίας';

  @override
  String get createTemplate => 'Δημιουργία Προτύπου';

  @override
  String get editTemplate => 'Επεξεργασία Προτύπου';

  @override
  String get create => 'Δημιουργία';

  @override
  String get templateNameDialogTitle => 'Όνομα Προτύπου';

  @override
  String get templateNameDialogHelper =>
      'Δώστε ένα όνομα σε αυτό το πρότυπο για εύκολη αναγνώριση';

  @override
  String get templateManagement => 'Διαχείριση Προτύπων';

  @override
  String get noTemplatesYet => 'Δεν υπάρχουν ακόμα πρότυπα';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Δημιουργήστε μια συνεδρία και επιλέξτε \"Αποθήκευση ως πρότυπο\"';

  @override
  String get deleteTemplate => 'Διαγραφή Προτύπου';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Είστε σίγουροι ότι θέλετε να διαγράψετε το \"$title\";';
  }

  @override
  String session(String title) {
    return 'Συνεδρία: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Αποθήκευση ως Πρότυπο';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Το πρότυπο \"$name\" αποθηκεύτηκε με επιτυχία';
  }

  @override
  String get debug => 'ΕΝΤΟΠΙΣΜΟΣ ΣΦΑΛΜΑΤΩΝ';

  @override
  String get debugDateSimulation =>
      'Προσομοίωση Ημερομηνίας Εντοπισμού Σφαλμάτων';

  @override
  String get setCustomDate => 'Ορισμός Προσαρμοσμένης Ημερομηνίας';

  @override
  String get clear => 'Καθαρισμός';

  @override
  String now(String date) {
    return 'Τώρα: $date';
  }

  @override
  String get today => 'Σήμερα';

  @override
  String get yesterday => 'Χθες';

  @override
  String get tomorrow => 'Αύριο';

  @override
  String daysAgo(int count) {
    return 'πριν $count ημέρες';
  }

  @override
  String daysLater(int count) {
    return 'σε $count ημέρες';
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
  String get testNotifications => 'Ειδοποιήσεις δοκιμής';

  @override
  String get testNotificationsDescription =>
      'Στείλτε μια ειδοποίηση δοκιμής σε 2 δευτερόλεπτα για να επαληθεύσετε ότι οι ειδοποιήσεις λειτουργούν.';

  @override
  String get sendTestNotification => 'Αποστολή ειδοποίησης δοκιμής';

  @override
  String get testNotificationScheduled =>
      'Προγραμματίστηκε ειδοποίηση δοκιμής! Ελέγξτε σε 2 δευτερόλεπτα.';

  @override
  String get testNotificationTitle => 'Ειδοποίηση δοκιμής';

  @override
  String get testNotificationBody =>
      'Αν βλέπεις αυτό, οι ειδοποιήσεις λειτουργούν!';

  @override
  String get scheduledTestNotificationTitle =>
      'Προγραμματισμένη ειδοποίηση δοκιμής';

  @override
  String get scheduledTestNotificationBody =>
      'Αυτό προγραμματίστηκε πριν από 2 δευτερόλεπτα';

  @override
  String startsAt(String time) {
    return 'Ξεκινάει στις $time';
  }

  @override
  String get themeSettings => 'Ρυθμίσεις θέματος';

  @override
  String get selectTheme => 'Επιλέξτε θέμα';

  @override
  String get selectThemeDescription =>
      'Επιλέξτε ένα θέμα χρώματος για την εφαρμογή. Το θέμα θα εφαρμοστεί σε ολόκληρη την εφαρμογή.';

  @override
  String get themeChanged => 'Το θέμα άλλαξε με επιτυχία!';

  @override
  String get aboutTheme => 'Σχετικά με τα θέματα';

  @override
  String get themeInfo =>
      'Η αλλαγή του θέματος θα ενημερώσει τα χρώματα σε όλη την εφαρμογή, συμπεριλαμβανομένων των κουμπιών, των γραμμών εφαρμογής και άλλων στοιχείων διεπαφής. Η προτίμησή σας για το θέμα θα αποθηκευτεί και θα εφαρμοστεί αυτόματα όταν κάνετε επανεκκίνηση της εφαρμογής.';
}
