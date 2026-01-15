import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_rm.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bn'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('es', 'MX'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('lo'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('rm'),
    Locale('ru'),
    Locale('sv'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'Book Weeks'**
  String get appTitle;

  /// Label for the week selection section
  ///
  /// In en, this message translates to:
  /// **'Select Week'**
  String get selectWeek;

  /// No description provided for @mon.
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get mon;

  /// No description provided for @tue.
  ///
  /// In en, this message translates to:
  /// **'Tue'**
  String get tue;

  /// No description provided for @wed.
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get wed;

  /// No description provided for @thu.
  ///
  /// In en, this message translates to:
  /// **'Thu'**
  String get thu;

  /// No description provided for @fri.
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get fri;

  /// No description provided for @sat.
  ///
  /// In en, this message translates to:
  /// **'Sat'**
  String get sat;

  /// No description provided for @sun.
  ///
  /// In en, this message translates to:
  /// **'Sun'**
  String get sun;

  /// Message shown when there are no sessions for a day
  ///
  /// In en, this message translates to:
  /// **'No sessions scheduled'**
  String get noSessionsScheduled;

  /// Hint text for adding sessions
  ///
  /// In en, this message translates to:
  /// **'Tap the + button to add a session'**
  String get tapToAddSession;

  /// Singular form of student
  ///
  /// In en, this message translates to:
  /// **'student'**
  String student(int count);

  /// Plural form of students
  ///
  /// In en, this message translates to:
  /// **'students'**
  String students(int count);

  /// Title of delete session dialog
  ///
  /// In en, this message translates to:
  /// **'Delete Session'**
  String get deleteSession;

  /// Confirmation message for deleting a session
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{title}\"?'**
  String deleteSessionConfirm(String title);

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @createSession.
  ///
  /// In en, this message translates to:
  /// **'Create Session'**
  String get createSession;

  /// No description provided for @editSession.
  ///
  /// In en, this message translates to:
  /// **'Edit Session'**
  String get editSession;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @titleRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter a title'**
  String get titleRequired;

  /// No description provided for @startTime.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get startTime;

  /// No description provided for @endTime.
  ///
  /// In en, this message translates to:
  /// **'End Time'**
  String get endTime;

  /// No description provided for @endTimeAfterStart.
  ///
  /// In en, this message translates to:
  /// **'End time must be after start time'**
  String get endTimeAfterStart;

  /// No description provided for @descriptionOptional.
  ///
  /// In en, this message translates to:
  /// **'Description (optional)'**
  String get descriptionOptional;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Title for the events list page
  ///
  /// In en, this message translates to:
  /// **'All Events'**
  String get allEvents;

  /// Menu item for managing templates
  ///
  /// In en, this message translates to:
  /// **'Manage Templates'**
  String get manageTemplates;

  /// Menu item for exporting data
  ///
  /// In en, this message translates to:
  /// **'Export Data'**
  String get exportData;

  /// Menu item for importing data
  ///
  /// In en, this message translates to:
  /// **'Import Data'**
  String get importData;

  /// Dialog title for saving export file
  ///
  /// In en, this message translates to:
  /// **'Save Export File'**
  String get saveExportFile;

  /// Success message after export
  ///
  /// In en, this message translates to:
  /// **'Export successful!\nSaved to: {path}'**
  String exportSuccessful(String path);

  /// Error message when export fails
  ///
  /// In en, this message translates to:
  /// **'Export failed: {error}'**
  String exportFailed(String error);

  /// No description provided for @importSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Import Successful'**
  String get importSuccessful;

  /// No description provided for @importFailed.
  ///
  /// In en, this message translates to:
  /// **'Import Failed'**
  String get importFailed;

  /// No description provided for @errorReadingFile.
  ///
  /// In en, this message translates to:
  /// **'Error reading file'**
  String get errorReadingFile;

  /// Generic error message
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String error(String error);

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// Placeholder text for search field
  ///
  /// In en, this message translates to:
  /// **'Search events...'**
  String get searchEvents;

  /// No description provided for @noEventsScheduled.
  ///
  /// In en, this message translates to:
  /// **'No events scheduled'**
  String get noEventsScheduled;

  /// No description provided for @noEventsFound.
  ///
  /// In en, this message translates to:
  /// **'No events found'**
  String get noEventsFound;

  /// No description provided for @createEventsFromCalendar.
  ///
  /// In en, this message translates to:
  /// **'Create events from the calendar'**
  String get createEventsFromCalendar;

  /// Section title for students in a session
  ///
  /// In en, this message translates to:
  /// **'Students Joining This Session'**
  String get studentsJoiningThisSession;

  /// Tooltip for add member button
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get addMember;

  /// No description provided for @noStudentsAddedYet.
  ///
  /// In en, this message translates to:
  /// **'No students added yet'**
  String get noStudentsAddedYet;

  /// No description provided for @tapToAddMember.
  ///
  /// In en, this message translates to:
  /// **'Tap + to add a member'**
  String get tapToAddMember;

  /// Section title for all available members
  ///
  /// In en, this message translates to:
  /// **'All Members'**
  String get allMembers;

  /// Tooltip for adding a student to session
  ///
  /// In en, this message translates to:
  /// **'Add to session'**
  String get addToSession;

  /// Tooltip for removing a student from session
  ///
  /// In en, this message translates to:
  /// **'Remove from session'**
  String get removeFromSession;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @nameRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter a name'**
  String get nameRequired;

  /// No description provided for @nicknameOptional.
  ///
  /// In en, this message translates to:
  /// **'Nickname (optional)'**
  String get nicknameOptional;

  /// No description provided for @ageOptional.
  ///
  /// In en, this message translates to:
  /// **'Age (optional)'**
  String get ageOptional;

  /// No description provided for @ageInvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid age'**
  String get ageInvalid;

  /// Label for phone number field
  ///
  /// In en, this message translates to:
  /// **'Phone Number (optional)'**
  String get phoneNumberOptional;

  /// Hint text for phone number field
  ///
  /// In en, this message translates to:
  /// **'e.g., +1 234 567 8900'**
  String get phoneNumberHint;

  /// No description provided for @addMemberTitle.
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get addMemberTitle;

  /// No description provided for @editMemberTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Member'**
  String get editMemberTitle;

  /// No description provided for @member.
  ///
  /// In en, this message translates to:
  /// **'Member'**
  String get member;

  /// Label showing student name
  ///
  /// In en, this message translates to:
  /// **'Name: {name}'**
  String nameLabel(String name);

  /// Label showing student age
  ///
  /// In en, this message translates to:
  /// **'Age: {age}'**
  String ageLabel(int age);

  /// Label showing student phone number
  ///
  /// In en, this message translates to:
  /// **'Phone: {phone}'**
  String phoneLabel(String phone);

  /// Label for template dropdown
  ///
  /// In en, this message translates to:
  /// **'Template (optional)'**
  String get templateOptional;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// Checkbox label for saving session as template
  ///
  /// In en, this message translates to:
  /// **'Save as template'**
  String get saveAsTemplate;

  /// Subtitle for save as template checkbox
  ///
  /// In en, this message translates to:
  /// **'Use this session as a template for future sessions'**
  String get saveAsTemplateSubtitle;

  /// Label for template name field
  ///
  /// In en, this message translates to:
  /// **'Template Name'**
  String get templateName;

  /// Helper text for template name field
  ///
  /// In en, this message translates to:
  /// **'Name to identify this template'**
  String get templateNameHelper;

  /// No description provided for @templateNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter a template name'**
  String get templateNameRequired;

  /// Label for default session title field
  ///
  /// In en, this message translates to:
  /// **'Default Session Title'**
  String get defaultSessionTitle;

  /// Helper text for default session title field
  ///
  /// In en, this message translates to:
  /// **'Title used when creating sessions from this template'**
  String get defaultSessionTitleHelper;

  /// No description provided for @sessionTitleRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter a session title'**
  String get sessionTitleRequired;

  /// No description provided for @createTemplate.
  ///
  /// In en, this message translates to:
  /// **'Create Template'**
  String get createTemplate;

  /// No description provided for @editTemplate.
  ///
  /// In en, this message translates to:
  /// **'Edit Template'**
  String get editTemplate;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// Title of template name dialog
  ///
  /// In en, this message translates to:
  /// **'Template Name'**
  String get templateNameDialogTitle;

  /// Helper text in template name dialog
  ///
  /// In en, this message translates to:
  /// **'Give this template a name for easy identification'**
  String get templateNameDialogHelper;

  /// Title of template management page
  ///
  /// In en, this message translates to:
  /// **'Template Management'**
  String get templateManagement;

  /// Message when no templates exist
  ///
  /// In en, this message translates to:
  /// **'No templates yet'**
  String get noTemplatesYet;

  /// Hint for creating templates
  ///
  /// In en, this message translates to:
  /// **'Create a session and check \"Save as template\"'**
  String get createSessionAndSaveAsTemplate;

  /// Title of delete template dialog
  ///
  /// In en, this message translates to:
  /// **'Delete Template'**
  String get deleteTemplate;

  /// Confirmation message for deleting a template
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{title}\"?'**
  String deleteTemplateConfirm(String title);

  /// Label showing session title
  ///
  /// In en, this message translates to:
  /// **'Session: {title}'**
  String session(String title);

  /// Tooltip for save as template button
  ///
  /// In en, this message translates to:
  /// **'Save as Template'**
  String get saveAsTemplateTooltip;

  /// Success message when template is saved
  ///
  /// In en, this message translates to:
  /// **'Template \"{name}\" saved successfully'**
  String templateSavedSuccessfully(String name);

  /// Debug mode indicator
  ///
  /// In en, this message translates to:
  /// **'DEBUG'**
  String get debug;

  /// Tooltip for debug menu
  ///
  /// In en, this message translates to:
  /// **'Debug Date Simulation'**
  String get debugDateSimulation;

  /// Menu item for setting custom date
  ///
  /// In en, this message translates to:
  /// **'Set Custom Date'**
  String get setCustomDate;

  /// Menu item for clearing simulated date
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// Label showing current simulated date
  ///
  /// In en, this message translates to:
  /// **'Now: {date}'**
  String now(String date);

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @tomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// Label for days ago
  ///
  /// In en, this message translates to:
  /// **'{count} days ago'**
  String daysAgo(int count);

  /// Label for days later
  ///
  /// In en, this message translates to:
  /// **'{count} days later'**
  String daysLater(int count);

  /// Title for notification settings page
  ///
  /// In en, this message translates to:
  /// **'Notification Settings'**
  String get notificationSettings;

  /// Title for notification timing section
  ///
  /// In en, this message translates to:
  /// **'Notification Timing'**
  String get notificationTiming;

  /// Description text for notification timing
  ///
  /// In en, this message translates to:
  /// **'Choose when to receive notifications before each session starts'**
  String get notificationTimingDescription;

  /// Label for 0 minutes notification timing
  ///
  /// In en, this message translates to:
  /// **'At event start'**
  String get atEventStart;

  /// Label for notification timing before event
  ///
  /// In en, this message translates to:
  /// **'{timing} before event start'**
  String beforeEventStart(String timing);

  /// Success message when notification timing is updated
  ///
  /// In en, this message translates to:
  /// **'Notification timing updated'**
  String get notificationTimingUpdated;

  /// Title for notification info section
  ///
  /// In en, this message translates to:
  /// **'About Notifications'**
  String get aboutNotifications;

  /// Information text about notifications
  ///
  /// In en, this message translates to:
  /// **'You will receive notifications before each scheduled session starts. Notifications are automatically scheduled when you create or update sessions, and all existing sessions are scheduled when the app launches.'**
  String get notificationInfo;

  /// Title for reschedule notifications section
  ///
  /// In en, this message translates to:
  /// **'Reschedule Notifications'**
  String get rescheduleNotifications;

  /// Description for reschedule notifications section
  ///
  /// In en, this message translates to:
  /// **'Manually reschedule notifications for all existing future sessions. This is useful if you\'ve just enabled notifications or want to ensure all events have notifications scheduled.'**
  String get rescheduleNotificationsDescription;

  /// Button text to reschedule notifications
  ///
  /// In en, this message translates to:
  /// **'Reschedule Now'**
  String get rescheduleNow;

  /// Loading text when rescheduling notifications
  ///
  /// In en, this message translates to:
  /// **'Rescheduling...'**
  String get rescheduling;

  /// Success message when notifications are rescheduled
  ///
  /// In en, this message translates to:
  /// **'Notifications rescheduled for {count} future session(s)'**
  String notificationsRescheduled(int count);

  /// Error message when rescheduling fails
  ///
  /// In en, this message translates to:
  /// **'Error rescheduling notifications: {error}'**
  String errorReschedulingNotifications(String error);

  /// Title for permissions warning
  ///
  /// In en, this message translates to:
  /// **'Notification Permissions Required'**
  String get permissionsRequired;

  /// Description for permissions warning
  ///
  /// In en, this message translates to:
  /// **'Please grant notification permissions to receive reminders for your sessions. Tap the button below to request permissions.'**
  String get permissionsRequiredDescription;

  /// Button text to request notification permissions
  ///
  /// In en, this message translates to:
  /// **'Request Permissions'**
  String get requestPermissions;

  /// Success message when permissions are granted
  ///
  /// In en, this message translates to:
  /// **'Notification permissions granted!'**
  String get permissionsGranted;

  /// Message when permissions are denied
  ///
  /// In en, this message translates to:
  /// **'Notification permissions were denied. Please enable them in Settings.'**
  String get permissionsDenied;

  /// Display text for 0 minutes timing
  ///
  /// In en, this message translates to:
  /// **'0 min'**
  String get timing0Min;

  /// Display text for 1 minute timing
  ///
  /// In en, this message translates to:
  /// **'1 min'**
  String get timing1Min;

  /// Display text for 5 minutes timing
  ///
  /// In en, this message translates to:
  /// **'5 mins'**
  String get timing5Mins;

  /// Display text for 30 minutes timing
  ///
  /// In en, this message translates to:
  /// **'30 mins'**
  String get timing30Mins;

  /// Display text for 1 hour timing
  ///
  /// In en, this message translates to:
  /// **'1 hour'**
  String get timing1Hour;

  /// Display text for 6 hours timing
  ///
  /// In en, this message translates to:
  /// **'6 hours'**
  String get timing6Hours;

  /// Display text for minutes timing
  ///
  /// In en, this message translates to:
  /// **'{count} mins'**
  String timingMinutes(int count);

  /// Display text for hours timing (singular)
  ///
  /// In en, this message translates to:
  /// **'{count} hour'**
  String timingHours(int count);

  /// Display text for hours timing (plural)
  ///
  /// In en, this message translates to:
  /// **'{count} hours'**
  String timingHoursPlural(int count);

  /// Title for test notifications section
  ///
  /// In en, this message translates to:
  /// **'Test Notifications'**
  String get testNotifications;

  /// Description text for test notifications
  ///
  /// In en, this message translates to:
  /// **'Send a test notification in 2 seconds to verify notifications are working.'**
  String get testNotificationsDescription;

  /// Button label to send test notification
  ///
  /// In en, this message translates to:
  /// **'Send Test Notification'**
  String get sendTestNotification;

  /// Success message when test notification is scheduled
  ///
  /// In en, this message translates to:
  /// **'Test notification scheduled! Check in 2 seconds.'**
  String get testNotificationScheduled;

  /// Title for test notification
  ///
  /// In en, this message translates to:
  /// **'Test Notification'**
  String get testNotificationTitle;

  /// Body text for test notification
  ///
  /// In en, this message translates to:
  /// **'If you see this, notifications are working!'**
  String get testNotificationBody;

  /// Title for scheduled test notification
  ///
  /// In en, this message translates to:
  /// **'Scheduled Test Notification'**
  String get scheduledTestNotificationTitle;

  /// Body text for scheduled test notification
  ///
  /// In en, this message translates to:
  /// **'This was scheduled 2 seconds ago'**
  String get scheduledTestNotificationBody;

  /// Notification body when session has no description
  ///
  /// In en, this message translates to:
  /// **'Starts at {time}'**
  String startsAt(String time);

  /// Title for theme settings page
  ///
  /// In en, this message translates to:
  /// **'Theme Settings'**
  String get themeSettings;

  /// Title for theme selection section
  ///
  /// In en, this message translates to:
  /// **'Select Theme'**
  String get selectTheme;

  /// Description text for theme selection
  ///
  /// In en, this message translates to:
  /// **'Choose a color theme for the app. The theme will be applied throughout the entire application.'**
  String get selectThemeDescription;

  /// Success message when theme is changed
  ///
  /// In en, this message translates to:
  /// **'Theme changed successfully!'**
  String get themeChanged;

  /// Title for theme info section
  ///
  /// In en, this message translates to:
  /// **'About Themes'**
  String get aboutTheme;

  /// Information text about themes
  ///
  /// In en, this message translates to:
  /// **'Changing the theme will update the colors throughout the app, including buttons, app bars, and other UI elements. Your theme preference will be saved and applied automatically when you restart the app.'**
  String get themeInfo;

  /// Title for enable notifications toggle
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get enableNotifications;

  /// Description text for enable notifications toggle
  ///
  /// In en, this message translates to:
  /// **'Turn notifications on or off. When disabled, no notifications will be sent for your sessions.'**
  String get enableNotificationsDescription;

  /// Success message when notifications are enabled
  ///
  /// In en, this message translates to:
  /// **'Notifications enabled'**
  String get notificationsEnabled;

  /// Success message when notifications are disabled
  ///
  /// In en, this message translates to:
  /// **'Notifications disabled'**
  String get notificationsDisabled;

  /// Title for help page
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// Section title for getting started help
  ///
  /// In en, this message translates to:
  /// **'Getting Started'**
  String get gettingStarted;

  /// Description for getting started section
  ///
  /// In en, this message translates to:
  /// **'Book Weeks helps you manage your weekly schedule and sessions. Use the calendar at the top to navigate between weeks, and tap on any day to view or add sessions for that day.'**
  String get gettingStartedDescription;

  /// Section title for creating sessions help
  ///
  /// In en, this message translates to:
  /// **'Creating Sessions'**
  String get creatingSessions;

  /// Description for creating sessions section
  ///
  /// In en, this message translates to:
  /// **'To create a session, tap the + button on any day. You can set the session title, time, duration, and add students. Sessions are automatically saved and will appear on your calendar.'**
  String get creatingSessionsDescription;

  /// Section title for managing students help
  ///
  /// In en, this message translates to:
  /// **'Managing Students'**
  String get managingStudents;

  /// Description for managing students section
  ///
  /// In en, this message translates to:
  /// **'When creating or editing a session, you can add students by tapping the + button in the students section. You can add student names, nicknames, ages, and phone numbers. Students can be reused across multiple sessions.'**
  String get managingStudentsDescription;

  /// Section title for using templates help
  ///
  /// In en, this message translates to:
  /// **'Using Templates'**
  String get usingTemplates;

  /// Description for using templates section
  ///
  /// In en, this message translates to:
  /// **'Templates allow you to quickly create sessions with pre-configured students. Create templates from the menu (three dots) → Manage Templates. When creating a session, you can select a template to automatically add its students.'**
  String get usingTemplatesDescription;

  /// Section title for notifications help
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsHelp;

  /// Description for notifications help section
  ///
  /// In en, this message translates to:
  /// **'You can receive notifications before your sessions start. Go to Notification Settings (bell icon) to enable notifications, set the timing (how many minutes before), and test your notification settings. Make sure to grant notification permissions when prompted.'**
  String get notificationsHelpDescription;

  /// Section title for export/import help
  ///
  /// In en, this message translates to:
  /// **'Export & Import'**
  String get exportImport;

  /// Description for export/import section
  ///
  /// In en, this message translates to:
  /// **'You can export your data (sessions, students, templates) to a YAML file for backup or transfer. Use the menu (three dots) → Export Data. To import, use Import Data from the same menu. This is useful for backing up your data or moving it to another device.'**
  String get exportImportDescription;

  /// Section title for navigation tips
  ///
  /// In en, this message translates to:
  /// **'Navigation Tips'**
  String get navigationTips;

  /// Description for navigation tips section
  ///
  /// In en, this message translates to:
  /// **'• Use the week calendar to navigate between weeks\n• Tap on day tabs to view sessions for that day\n• Use the All Events button (calendar icon) to see all sessions in a list\n• Access settings via the icons in the top bar: Theme (palette), Events (calendar), Notifications (bell), and Help (question mark)'**
  String get navigationTipsDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'bn',
    'de',
    'el',
    'en',
    'es',
    'fi',
    'fil',
    'fr',
    'gu',
    'he',
    'hi',
    'hr',
    'is',
    'it',
    'ja',
    'km',
    'kn',
    'ko',
    'lo',
    'ml',
    'mn',
    'mr',
    'pa',
    'pl',
    'pt',
    'rm',
    'ru',
    'sv',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'es':
      {
        switch (locale.countryCode) {
          case 'MX':
            return AppLocalizationsEsMx();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'lo':
      return AppLocalizationsLo();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'rm':
      return AppLocalizationsRm();
    case 'ru':
      return AppLocalizationsRu();
    case 'sv':
      return AppLocalizationsSv();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
