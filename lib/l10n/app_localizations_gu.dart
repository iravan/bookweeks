// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'અઠવાડિયા બુકિંગ';

  @override
  String get selectWeek => 'અઠવાડિયો પસંદ કરો';

  @override
  String get mon => 'સોમ';

  @override
  String get tue => 'મંગળ';

  @override
  String get wed => 'બુધ';

  @override
  String get thu => 'ગુરુ';

  @override
  String get fri => 'શુક્ર';

  @override
  String get sat => 'શનિ';

  @override
  String get sun => 'રવિ';

  @override
  String get noSessionsScheduled => 'કોઈ સત્ર શેડ્યૂલ નથી';

  @override
  String get tapToAddSession => 'સત્ર ઉમેરવા માટે + બટન ટેપ કરો';

  @override
  String student(int count) {
    return 'વિદ્યાર્થી';
  }

  @override
  String students(int count) {
    return 'વિદ્યાર્થીઓ';
  }

  @override
  String get deleteSession => 'સત્ર કાઢી નાખો';

  @override
  String deleteSessionConfirm(String title) {
    return 'શું તમે ખરેખર \"$title\" કાઢી નાખવા માંગો છો?';
  }

  @override
  String get cancel => 'રદ કરો';

  @override
  String get delete => 'કાઢી નાખો';

  @override
  String get createSession => 'સત્ર બનાવો';

  @override
  String get editSession => 'સત્ર સંપાદિત કરો';

  @override
  String get title => 'શીર્ષક';

  @override
  String get titleRequired => 'કૃપા કરીને શીર્ષક દાખલ કરો';

  @override
  String get startTime => 'શરૂઆતનો સમય';

  @override
  String get endTime => 'સમાપ્તિનો સમય';

  @override
  String get endTimeAfterStart => 'સમાપ્તિનો સમય શરૂઆતના સમય પછી હોવો જોઈએ';

  @override
  String get descriptionOptional => 'વર્ણન (વૈકલ્પિક)';

  @override
  String get save => 'સાચવો';

  @override
  String get add => 'ઉમેરો';

  @override
  String get edit => 'સંપાદિત કરો';

  @override
  String get allEvents => 'બધા ઇવેન્ટ્સ';

  @override
  String get manageTemplates => 'ટેમ્પ્લેટ્સ મેનેજ કરો';

  @override
  String get exportData => 'ડેટા એક્સપોર્ટ કરો';

  @override
  String get importData => 'ડેટા ઇમ્પોર્ટ કરો';

  @override
  String get saveExportFile => 'એક્સપોર્ટ ફાઇલ સાચવો';

  @override
  String exportSuccessful(String path) {
    return 'એક્સપોર્ટ સફળ!\nસાચવ્યું: $path';
  }

  @override
  String exportFailed(String error) {
    return 'એક્સપોર્ટ નિષ્ફળ: $error';
  }

  @override
  String get importSuccessful => 'ઇમ્પોર્ટ સફળ';

  @override
  String get importFailed => 'ઇમ્પોર્ટ નિષ્ફળ';

  @override
  String get errorReadingFile => 'ફાઇલ વાંચવામાં ભૂલ';

  @override
  String error(String error) {
    return 'ભૂલ: $error';
  }

  @override
  String get ok => 'ઠીક છે';

  @override
  String get searchEvents => 'ઇવેન્ટ્સ શોધો...';

  @override
  String get noEventsScheduled => 'કોઈ ઇવેન્ટ્સ શેડ્યૂલ નથી';

  @override
  String get noEventsFound => 'ઇવેન્ટ્સ મળ્યા નથી';

  @override
  String get createEventsFromCalendar => 'કેલેન્ડરમાંથી ઇવેન્ટ્સ બનાવો';

  @override
  String get studentsJoiningThisSession => 'આ સત્રમાં જોડાતા વિદ્યાર્થીઓ';

  @override
  String get addMember => 'સભ્ય ઉમેરો';

  @override
  String get noStudentsAddedYet => 'હજુ સુધી કોઈ વિદ્યાર્થીઓ ઉમેરાયા નથી';

  @override
  String get tapToAddMember => '+ ટેપ કરીને સભ્ય ઉમેરો';

  @override
  String get allMembers => 'બધા સભ્યો';

  @override
  String get addToSession => 'સત્રમાં ઉમેરો';

  @override
  String get removeFromSession => 'સત્રમાંથી કાઢો';

  @override
  String get name => 'નામ';

  @override
  String get nameRequired => 'કૃપા કરીને નામ દાખલ કરો';

  @override
  String get nicknameOptional => 'ઉપનામ (વૈકલ્પિક)';

  @override
  String get ageOptional => 'ઉંમર (વૈકલ્પિક)';

  @override
  String get ageInvalid => 'કૃપા કરીને માન્ય ઉંમર દાખલ કરો';

  @override
  String get phoneNumberOptional => 'ફોન નંબર (વૈકલ્પિક)';

  @override
  String get phoneNumberHint => 'ઉદા: +91 98765 43210';

  @override
  String get addMemberTitle => 'સભ્ય ઉમેરો';

  @override
  String get editMemberTitle => 'સભ્ય સંપાદિત કરો';

  @override
  String get member => 'સભ્ય';

  @override
  String nameLabel(String name) {
    return 'નામ: $name';
  }

  @override
  String ageLabel(int age) {
    return 'ઉંમર: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'ફોન: $phone';
  }

  @override
  String get templateOptional => 'ટેમ્પ્લેટ (વૈકલ્પિક)';

  @override
  String get none => 'કંઈ નહીં';

  @override
  String get saveAsTemplate => 'ટેમ્પ્લેટ તરીકે સાચવો';

  @override
  String get saveAsTemplateSubtitle =>
      'ભવિષ્યના સત્રો માટે આ સત્રને ટેમ્પ્લેટ તરીકે વાપરો';

  @override
  String get templateName => 'ટેમ્પ્લેટ નામ';

  @override
  String get templateNameHelper => 'આ ટેમ્પ્લેટને ઓળખવા માટે નામ';

  @override
  String get templateNameRequired => 'કૃપા કરીને ટેમ્પ્લેટ નામ દાખલ કરો';

  @override
  String get defaultSessionTitle => 'ડિફૉલ્ટ સત્ર શીર્ષક';

  @override
  String get defaultSessionTitleHelper =>
      'આ ટેમ્પ્લેટમાંથી સત્ર બનાવતી વખતે વપરાયેલું શીર્ષક';

  @override
  String get sessionTitleRequired => 'કૃપા કરીને સત્ર શીર્ષક દાખલ કરો';

  @override
  String get createTemplate => 'ટેમ્પ્લેટ બનાવો';

  @override
  String get editTemplate => 'ટેમ્પ્લેટ સંપાદિત કરો';

  @override
  String get create => 'બનાવો';

  @override
  String get templateNameDialogTitle => 'ટેમ્પ્લેટ નામ';

  @override
  String get templateNameDialogHelper => 'સરળ ઓળખ માટે આ ટેમ્પ્લેટને નામ આપો';

  @override
  String get templateManagement => 'ટેમ્પ્લેટ મેનેજમેન્ટ';

  @override
  String get noTemplatesYet => 'હજુ સુધી કોઈ ટેમ્પ્લેટ્સ નથી';

  @override
  String get createSessionAndSaveAsTemplate =>
      'સત્ર બનાવો અને \"ટેમ્પ્લેટ તરીકે સાચવો\" પસંદ કરો';

  @override
  String get deleteTemplate => 'ટેમ્પ્લેટ કાઢી નાખો';

  @override
  String deleteTemplateConfirm(String title) {
    return 'શું તમે ખરેખર \"$title\" કાઢી નાખવા માંગો છો?';
  }

  @override
  String session(String title) {
    return 'સત્ર: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'ટેમ્પ્લેટ તરીકે સાચવો';

  @override
  String templateSavedSuccessfully(String name) {
    return 'ટેમ્પ્લેટ \"$name\" સફળતાપૂર્વક સાચવ્યું';
  }

  @override
  String get debug => 'ડીબગ';

  @override
  String get debugDateSimulation => 'ડીબગ તારીખ સિમ્યુલેશન';

  @override
  String get setCustomDate => 'કસ્ટમ તારીખ સેટ કરો';

  @override
  String get clear => 'સાફ કરો';

  @override
  String now(String date) {
    return 'હવે: $date';
  }

  @override
  String get today => 'આજે';

  @override
  String get yesterday => 'ગઈકાલે';

  @override
  String get tomorrow => 'આવતીકાલે';

  @override
  String daysAgo(int count) {
    return '$count દિવસ પહેલાં';
  }

  @override
  String daysLater(int count) {
    return '$count દિવસ પછી';
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
  String get testNotifications => 'ટેસ્ટ સૂચનાઓ';

  @override
  String get testNotificationsDescription =>
      'સૂચનાઓ કામ કરી રહી છે કે નહીં તે ચકાસવા માટે 2 સેકંડમાં એક ટેસ્ટ સૂચના મોકલો.';

  @override
  String get sendTestNotification => 'ટેસ્ટ સૂચના મોકલો';

  @override
  String get testNotificationScheduled =>
      'ટેસ્ટ સૂચના શેડ્યૂલ કરવામાં આવી છે! 2 સેકંડમાં તપાસો.';

  @override
  String get testNotificationTitle => 'ટેસ્ટ સૂચના';

  @override
  String get testNotificationBody => 'જો તમે આ જોશો, તો સૂચનાઓ કામ કરી રહી છે!';

  @override
  String get scheduledTestNotificationTitle => 'શેડ્યૂલ કરેલી ટેસ્ટ સૂચના';

  @override
  String get scheduledTestNotificationBody =>
      'આ 2 સેકંડ પહેલા શેડ્યૂલ કરવામાં આવ્યું હતું';

  @override
  String startsAt(String time) {
    return '$time પર શરૂ થાય છે';
  }

  @override
  String get themeSettings => 'થીમ સેટિંગ્સ';

  @override
  String get selectTheme => 'થીમ પસંદ કરો';

  @override
  String get selectThemeDescription =>
      'એપ્લિકેશન માટે રંગ થીમ પસંદ કરો। થીમ સમગ્ર એપ્લિકેશનમાં લાગુ પડશે।';

  @override
  String get themeChanged => 'થીમ સફળતાપૂર્વક બદલાઈ!';

  @override
  String get aboutTheme => 'થીમ્સ વિશે';

  @override
  String get themeInfo =>
      'થીમ બદલવાથી આપમાં રંગો અપડેટ થશે, જેમાં બટનો, આપ બાર અને અન્ય UI તત્વોનો સમાવેશ થાય છે। તમારી થીમ પસંદગી સાચવવામાં આવશે અને જ્યારે તમે આપને પુનઃપ્રારંભ કરશો ત્યારે આપમેળે લાગુ પડશે।';
}
