// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'Mag-book ng Linggo';

  @override
  String get selectWeek => 'Pumili ng Linggo';

  @override
  String get mon => 'Lun';

  @override
  String get tue => 'Mar';

  @override
  String get wed => 'Miy';

  @override
  String get thu => 'Huw';

  @override
  String get fri => 'Biy';

  @override
  String get sat => 'Sab';

  @override
  String get sun => 'Lin';

  @override
  String get noSessionsScheduled => 'Walang naka-iskedyul na sesyon';

  @override
  String get tapToAddSession => 'I-tap ang + button upang magdagdag ng sesyon';

  @override
  String student(int count) {
    return 'estudyante';
  }

  @override
  String students(int count) {
    return 'mga estudyante';
  }

  @override
  String get deleteSession => 'Tanggalin ang Sesyon';

  @override
  String deleteSessionConfirm(String title) {
    return 'Sigurado ka bang gusto mong tanggalin ang \"$title\"?';
  }

  @override
  String get cancel => 'Kanselahin';

  @override
  String get delete => 'Tanggalin';

  @override
  String get createSession => 'Gumawa ng Sesyon';

  @override
  String get editSession => 'I-edit ang Sesyon';

  @override
  String get title => 'Pamagat';

  @override
  String get titleRequired => 'Pakipasok ang pamagat';

  @override
  String get startTime => 'Oras ng Simula';

  @override
  String get endTime => 'Oras ng Pagtatapos';

  @override
  String get endTimeAfterStart =>
      'Ang oras ng pagtatapos ay dapat na pagkatapos ng oras ng simula';

  @override
  String get descriptionOptional => 'Paglalarawan (opsyonal)';

  @override
  String get save => 'I-save';

  @override
  String get add => 'Magdagdag';

  @override
  String get edit => 'I-edit';

  @override
  String get allEvents => 'Lahat ng Events';

  @override
  String get manageTemplates => 'Pamahalaan ang Mga Template';

  @override
  String get exportData => 'I-export ang Data';

  @override
  String get importData => 'I-import ang Data';

  @override
  String get saveExportFile => 'I-save ang Export File';

  @override
  String exportSuccessful(String path) {
    return 'Matagumpay ang export!\nNai-save sa: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Nabigo ang export: $error';
  }

  @override
  String get importSuccessful => 'Matagumpay ang Import';

  @override
  String get importFailed => 'Nabigo ang Import';

  @override
  String get errorReadingFile => 'Error sa pagbabasa ng file';

  @override
  String error(String error) {
    return 'Error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Maghanap ng mga kaganapan...';

  @override
  String get noEventsScheduled => 'Walang naka-iskedyul na kaganapan';

  @override
  String get noEventsFound => 'Walang nahanap na kaganapan';

  @override
  String get createEventsFromCalendar =>
      'Gumawa ng mga kaganapan mula sa kalendaryo';

  @override
  String get studentsJoiningThisSession =>
      'Mga Estudyanteng Sumasali sa Sesyong Ito';

  @override
  String get addMember => 'Magdagdag ng Miyembro';

  @override
  String get noStudentsAddedYet => 'Wala pang naidagdag na estudyante';

  @override
  String get tapToAddMember => 'I-tap ang + upang magdagdag ng miyembro';

  @override
  String get allMembers => 'Lahat ng Miyembro';

  @override
  String get addToSession => 'Idagdag sa sesyon';

  @override
  String get removeFromSession => 'Tanggalin sa sesyon';

  @override
  String get name => 'Pangalan';

  @override
  String get nameRequired => 'Pakipasok ang pangalan';

  @override
  String get nicknameOptional => 'Palayaw (opsyonal)';

  @override
  String get ageOptional => 'Edad (opsyonal)';

  @override
  String get ageInvalid => 'Pakipasok ang wastong edad';

  @override
  String get phoneNumberOptional => 'Numero ng Telepono (opsyonal)';

  @override
  String get phoneNumberHint => 'hal. +63 912 345 6789';

  @override
  String get addMemberTitle => 'Magdagdag ng Miyembro';

  @override
  String get editMemberTitle => 'I-edit ang Miyembro';

  @override
  String get member => 'Miyembro';

  @override
  String nameLabel(String name) {
    return 'Pangalan: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Edad: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Telepono: $phone';
  }

  @override
  String get templateOptional => 'Template (opsyonal)';

  @override
  String get none => 'Wala';

  @override
  String get saveAsTemplate => 'I-save bilang template';

  @override
  String get saveAsTemplateSubtitle =>
      'Gamitin ang sesyong ito bilang template para sa mga susunod na sesyon';

  @override
  String get templateName => 'Pangalan ng Template';

  @override
  String get templateNameHelper =>
      'Pangalan upang makilala ang template na ito';

  @override
  String get templateNameRequired => 'Pakipasok ang pangalan ng template';

  @override
  String get defaultSessionTitle => 'Default na Pamagat ng Sesyon';

  @override
  String get defaultSessionTitleHelper =>
      'Pamagat na ginagamit kapag gumagawa ng mga sesyon mula sa template na ito';

  @override
  String get sessionTitleRequired => 'Pakipasok ang pamagat ng sesyon';

  @override
  String get createTemplate => 'Gumawa ng Template';

  @override
  String get editTemplate => 'I-edit ang Template';

  @override
  String get create => 'Gumawa';

  @override
  String get templateNameDialogTitle => 'Pangalan ng Template';

  @override
  String get templateNameDialogHelper =>
      'Bigyan ng pangalan ang template na ito para sa madaling pagkakakilanlan';

  @override
  String get templateManagement => 'Pamamahala ng Template';

  @override
  String get noTemplatesYet => 'Wala pang mga template';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Gumawa ng sesyon at i-check ang \"I-save bilang template\"';

  @override
  String get deleteTemplate => 'Tanggalin ang Template';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Sigurado ka bang gusto mong tanggalin ang \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Sesyon: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'I-save bilang Template';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Matagumpay na nai-save ang template \"$name\"';
  }

  @override
  String get debug => 'DEBUG';

  @override
  String get debugDateSimulation => 'Debug Date Simulation';

  @override
  String get setCustomDate => 'Itakda ang Custom Date';

  @override
  String get clear => 'Linisin';

  @override
  String now(String date) {
    return 'Ngayon: $date';
  }

  @override
  String get today => 'Ngayon';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get tomorrow => 'Bukas';

  @override
  String daysAgo(int count) {
    return '$count araw na ang nakalipas';
  }

  @override
  String daysLater(int count) {
    return '$count araw mula ngayon';
  }

  @override
  String get notificationSettings => 'Mga Setting ng Notification';

  @override
  String get notificationTiming => 'Oras ng Notification';

  @override
  String get notificationTimingDescription =>
      'Pumili kung kailan tatanggap ng notification bago magsimula ang bawat session';

  @override
  String get atEventStart => 'Sa simula ng event';

  @override
  String beforeEventStart(String timing) {
    return '$timing bago magsimula ang event';
  }

  @override
  String get notificationTimingUpdated => 'Na-update ang oras ng notification';

  @override
  String get aboutNotifications => 'Tungkol sa Notifications';

  @override
  String get notificationInfo =>
      'Makakatanggap ka ng notifications bago magsimula ang bawat naka-schedule na session. Ang notifications ay awtomatikong naka-schedule kapag gumawa o nag-update ka ng sessions, at lahat ng existing sessions ay naka-schedule kapag nag-launch ang app.';

  @override
  String get rescheduleNotifications => 'I-reschedule ang Notifications';

  @override
  String get rescheduleNotificationsDescription =>
      'Manwal na i-reschedule ang notifications para sa lahat ng existing future sessions. Kapaki-pakinabang kung kakagaling mo lang mag-enable ng notifications o gusto mong tiyakin na lahat ng events ay may scheduled notifications.';

  @override
  String get rescheduleNow => 'I-reschedule Ngayon';

  @override
  String get rescheduling => 'Nagre-reschedule...';

  @override
  String notificationsRescheduled(int count) {
    return 'Na-reschedule ang notifications para sa $count future session(s)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Error sa pagre-reschedule ng notifications: $error';
  }

  @override
  String get permissionsRequired => 'Kailangan ang Notification Permissions';

  @override
  String get permissionsRequiredDescription =>
      'Mangyaring bigyan ng notification permissions para makatanggap ng reminders para sa iyong sessions. I-tap ang button sa ibaba para humingi ng permissions.';

  @override
  String get requestPermissions => 'Humiling ng Permissions';

  @override
  String get permissionsGranted => 'Binigyan ng notification permissions!';

  @override
  String get permissionsDenied =>
      'Tinanggihan ang notification permissions. Mangyaring i-enable ang mga ito sa Settings.';

  @override
  String get timing0Min => '0 min';

  @override
  String get timing1Min => '1 min';

  @override
  String get timing5Mins => '5 min';

  @override
  String get timing30Mins => '30 min';

  @override
  String get timing1Hour => '1 oras';

  @override
  String get timing6Hours => '6 na oras';

  @override
  String timingMinutes(int count) {
    return '$count min';
  }

  @override
  String timingHours(int count) {
    return '$count oras';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count na oras';
  }

  @override
  String get testNotifications => 'Mga Test Notification';

  @override
  String get testNotificationsDescription =>
      'Magpadala ng test notification sa loob ng 2 segundo upang i-verify na gumagana ang mga notification.';

  @override
  String get sendTestNotification => 'Magpadala ng Test Notification';

  @override
  String get testNotificationScheduled =>
      'Naka-schedule ang test notification! Suriin sa loob ng 2 segundo.';

  @override
  String get testNotificationTitle => 'Test na Notification';

  @override
  String get testNotificationBody =>
      'Kung nakikita mo ito, gumagana ang mga notification!';

  @override
  String get scheduledTestNotificationTitle =>
      'Naka-schedule na Test Notification';

  @override
  String get scheduledTestNotificationBody =>
      'Ito ay naka-schedule 2 segundo ang nakalipas';

  @override
  String startsAt(String time) {
    return 'Nagsisimula sa $time';
  }

  @override
  String get themeSettings => 'Mga Setting ng Theme';

  @override
  String get selectTheme => 'Pumili ng Theme';

  @override
  String get selectThemeDescription =>
      'Pumili ng color theme para sa app. Ang theme ay ilalapat sa buong application.';

  @override
  String get themeChanged => 'Matagumpay na nabago ang theme!';

  @override
  String get aboutTheme => 'Tungkol sa mga Theme';

  @override
  String get themeInfo =>
      'Ang pagbabago ng theme ay mag-u-update ng mga kulay sa buong app, kasama ang mga button, app bar, at iba pang UI elements. Ang iyong theme preference ay mai-save at awtomatikong ilalapat kapag muling sinimulan mo ang app.';

  @override
  String get enableNotifications => 'Paganahin ang mga notification';

  @override
  String get enableNotificationsDescription =>
      'I-on o i-off ang mga notification. Kapag naka-disable, walang notification na ipapadala para sa iyong mga session.';

  @override
  String get notificationsEnabled => 'Naka-enable ang mga notification';

  @override
  String get notificationsDisabled => 'Naka-disable ang mga notification';

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
