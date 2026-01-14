// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Book Weeks';

  @override
  String get selectWeek => 'Select Week';

  @override
  String get mon => 'Mon';

  @override
  String get tue => 'Tue';

  @override
  String get wed => 'Wed';

  @override
  String get thu => 'Thu';

  @override
  String get fri => 'Fri';

  @override
  String get sat => 'Sat';

  @override
  String get sun => 'Sun';

  @override
  String get noSessionsScheduled => 'No sessions scheduled';

  @override
  String get tapToAddSession => 'Tap the + button to add a session';

  @override
  String student(int count) {
    return 'student';
  }

  @override
  String students(int count) {
    return 'students';
  }

  @override
  String get deleteSession => 'Delete Session';

  @override
  String deleteSessionConfirm(String title) {
    return 'Are you sure you want to delete \"$title\"?';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get createSession => 'Create Session';

  @override
  String get editSession => 'Edit Session';

  @override
  String get title => 'Title';

  @override
  String get titleRequired => 'Please enter a title';

  @override
  String get startTime => 'Start Time';

  @override
  String get endTime => 'End Time';

  @override
  String get endTimeAfterStart => 'End time must be after start time';

  @override
  String get descriptionOptional => 'Description (optional)';

  @override
  String get save => 'Save';

  @override
  String get add => 'Add';

  @override
  String get edit => 'Edit';

  @override
  String get allEvents => 'All Events';

  @override
  String get manageTemplates => 'Manage Templates';

  @override
  String get exportData => 'Export Data';

  @override
  String get importData => 'Import Data';

  @override
  String get saveExportFile => 'Save Export File';

  @override
  String exportSuccessful(String path) {
    return 'Export successful!\nSaved to: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Export failed: $error';
  }

  @override
  String get importSuccessful => 'Import Successful';

  @override
  String get importFailed => 'Import Failed';

  @override
  String get errorReadingFile => 'Error reading file';

  @override
  String error(String error) {
    return 'Error: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Search events...';

  @override
  String get noEventsScheduled => 'No events scheduled';

  @override
  String get noEventsFound => 'No events found';

  @override
  String get createEventsFromCalendar => 'Create events from the calendar';

  @override
  String get studentsJoiningThisSession => 'Students Joining This Session';

  @override
  String get addMember => 'Add Member';

  @override
  String get noStudentsAddedYet => 'No students added yet';

  @override
  String get tapToAddMember => 'Tap + to add a member';

  @override
  String get allMembers => 'All Members';

  @override
  String get addToSession => 'Add to session';

  @override
  String get removeFromSession => 'Remove from session';

  @override
  String get name => 'Name';

  @override
  String get nameRequired => 'Please enter a name';

  @override
  String get nicknameOptional => 'Nickname (optional)';

  @override
  String get ageOptional => 'Age (optional)';

  @override
  String get ageInvalid => 'Please enter a valid age';

  @override
  String get phoneNumberOptional => 'Phone Number (optional)';

  @override
  String get phoneNumberHint => 'e.g., +1 234 567 8900';

  @override
  String get addMemberTitle => 'Add Member';

  @override
  String get editMemberTitle => 'Edit Member';

  @override
  String get member => 'Member';

  @override
  String nameLabel(String name) {
    return 'Name: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Age: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Phone: $phone';
  }

  @override
  String get templateOptional => 'Template (optional)';

  @override
  String get none => 'None';

  @override
  String get saveAsTemplate => 'Save as template';

  @override
  String get saveAsTemplateSubtitle =>
      'Use this session as a template for future sessions';

  @override
  String get templateName => 'Template Name';

  @override
  String get templateNameHelper => 'Name to identify this template';

  @override
  String get templateNameRequired => 'Please enter a template name';

  @override
  String get defaultSessionTitle => 'Default Session Title';

  @override
  String get defaultSessionTitleHelper =>
      'Title used when creating sessions from this template';

  @override
  String get sessionTitleRequired => 'Please enter a session title';

  @override
  String get createTemplate => 'Create Template';

  @override
  String get editTemplate => 'Edit Template';

  @override
  String get create => 'Create';

  @override
  String get templateNameDialogTitle => 'Template Name';

  @override
  String get templateNameDialogHelper =>
      'Give this template a name for easy identification';

  @override
  String get templateManagement => 'Template Management';

  @override
  String get noTemplatesYet => 'No templates yet';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Create a session and check \"Save as template\"';

  @override
  String get deleteTemplate => 'Delete Template';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Are you sure you want to delete \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Session: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Save as Template';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Template \"$name\" saved successfully';
  }

  @override
  String get debug => 'DEBUG';

  @override
  String get debugDateSimulation => 'Debug Date Simulation';

  @override
  String get setCustomDate => 'Set Custom Date';

  @override
  String get clear => 'Clear';

  @override
  String now(String date) {
    return 'Now: $date';
  }

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String daysAgo(int count) {
    return '$count days ago';
  }

  @override
  String daysLater(int count) {
    return '$count days later';
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
      'Manually reschedule notifications for all existing future sessions. This is useful if you\'ve just enabled notifications or want to ensure all events have notifications scheduled.';

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
  String get testNotifications => 'Test Notifications';

  @override
  String get testNotificationsDescription =>
      'Send a test notification in 2 seconds to verify notifications are working.';

  @override
  String get sendTestNotification => 'Send Test Notification';

  @override
  String get testNotificationScheduled =>
      'Test notification scheduled! Check in 2 seconds.';

  @override
  String get testNotificationTitle => 'Test Notification';

  @override
  String get testNotificationBody =>
      'If you see this, notifications are working!';

  @override
  String get scheduledTestNotificationTitle => 'Scheduled Test Notification';

  @override
  String get scheduledTestNotificationBody =>
      'This was scheduled 2 seconds ago';

  @override
  String startsAt(String time) {
    return 'Starts at $time';
  }
}
