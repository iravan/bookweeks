// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'সপ্তাহ বুকিং';

  @override
  String get selectWeek => 'সপ্তাহ নির্বাচন করুন';

  @override
  String get mon => 'সোম';

  @override
  String get tue => 'মঙ্গল';

  @override
  String get wed => 'বুধ';

  @override
  String get thu => 'বৃহস্পতি';

  @override
  String get fri => 'শুক্র';

  @override
  String get sat => 'শনি';

  @override
  String get sun => 'রবি';

  @override
  String get noSessionsScheduled => 'কোন সেশন নির্ধারিত নেই';

  @override
  String get tapToAddSession => 'সেশন যোগ করতে + বোতাম ট্যাপ করুন';

  @override
  String student(int count) {
    return 'ছাত্র';
  }

  @override
  String students(int count) {
    return 'ছাত্র';
  }

  @override
  String get deleteSession => 'সেশন মুছুন';

  @override
  String deleteSessionConfirm(String title) {
    return 'আপনি কি নিশ্চিত যে \"$title\" মুছতে চান?';
  }

  @override
  String get cancel => 'বাতিল';

  @override
  String get delete => 'মুছুন';

  @override
  String get createSession => 'সেশন তৈরি করুন';

  @override
  String get editSession => 'সেশন সম্পাদনা করুন';

  @override
  String get title => 'শিরোনাম';

  @override
  String get titleRequired => 'অনুগ্রহ করে একটি শিরোনাম লিখুন';

  @override
  String get startTime => 'শুরুর সময়';

  @override
  String get endTime => 'শেষের সময়';

  @override
  String get endTimeAfterStart => 'শেষের সময় শুরুর সময়ের পরে হতে হবে';

  @override
  String get descriptionOptional => 'বিবরণ (ঐচ্ছিক)';

  @override
  String get save => 'সংরক্ষণ করুন';

  @override
  String get add => 'যোগ করুন';

  @override
  String get edit => 'সম্পাদনা করুন';

  @override
  String get allEvents => 'সব ইভেন্ট';

  @override
  String get manageTemplates => 'টেমপ্লেট পরিচালনা করুন';

  @override
  String get exportData => 'ডেটা রপ্তানি করুন';

  @override
  String get importData => 'ডেটা আমদানি করুন';

  @override
  String get saveExportFile => 'রপ্তানি ফাইল সংরক্ষণ করুন';

  @override
  String exportSuccessful(String path) {
    return 'রপ্তানি সফল!\nসংরক্ষিত: $path';
  }

  @override
  String exportFailed(String error) {
    return 'রপ্তানি ব্যর্থ: $error';
  }

  @override
  String get importSuccessful => 'আমদানি সফল';

  @override
  String get importFailed => 'আমদানি ব্যর্থ';

  @override
  String get errorReadingFile => 'ফাইল পড়তে ত্রুটি';

  @override
  String error(String error) {
    return 'ত্রুটি: $error';
  }

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get searchEvents => 'ইভেন্ট খুঁজুন...';

  @override
  String get noEventsScheduled => 'কোন ইভেন্ট নির্ধারিত নেই';

  @override
  String get noEventsFound => 'কোন ইভেন্ট পাওয়া যায়নি';

  @override
  String get createEventsFromCalendar => 'ক্যালেন্ডার থেকে ইভেন্ট তৈরি করুন';

  @override
  String get studentsJoiningThisSession => 'এই সেশনে যোগদানকারী ছাত্র';

  @override
  String get addMember => 'সদস্য যোগ করুন';

  @override
  String get noStudentsAddedYet => 'এখনও কোন ছাত্র যোগ করা হয়নি';

  @override
  String get tapToAddMember => '+ ট্যাপ করে সদস্য যোগ করুন';

  @override
  String get allMembers => 'সব সদস্য';

  @override
  String get addToSession => 'সেশনে যোগ করুন';

  @override
  String get removeFromSession => 'সেশন থেকে সরান';

  @override
  String get name => 'নাম';

  @override
  String get nameRequired => 'অনুগ্রহ করে একটি নাম লিখুন';

  @override
  String get nicknameOptional => 'ডাকনাম (ঐচ্ছিক)';

  @override
  String get ageOptional => 'বয়স (ঐচ্ছিক)';

  @override
  String get ageInvalid => 'অনুগ্রহ করে একটি বৈধ বয়স লিখুন';

  @override
  String get phoneNumberOptional => 'ফোন নম্বর (ঐচ্ছিক)';

  @override
  String get phoneNumberHint => 'যেমন: +91 98765 43210';

  @override
  String get addMemberTitle => 'সদস্য যোগ করুন';

  @override
  String get editMemberTitle => 'সদস্য সম্পাদনা করুন';

  @override
  String get member => 'সদস্য';

  @override
  String nameLabel(String name) {
    return 'নাম: $name';
  }

  @override
  String ageLabel(int age) {
    return 'বয়স: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'ফোন: $phone';
  }

  @override
  String get templateOptional => 'টেমপ্লেট (ঐচ্ছিক)';

  @override
  String get none => 'কোনটিই নয়';

  @override
  String get saveAsTemplate => 'টেমপ্লেট হিসাবে সংরক্ষণ করুন';

  @override
  String get saveAsTemplateSubtitle =>
      'ভবিষ্যতের সেশনের জন্য এই সেশনটি টেমপ্লেট হিসাবে ব্যবহার করুন';

  @override
  String get templateName => 'টেমপ্লেট নাম';

  @override
  String get templateNameHelper => 'এই টেমপ্লেট সনাক্ত করার জন্য নাম';

  @override
  String get templateNameRequired => 'অনুগ্রহ করে একটি টেমপ্লেট নাম লিখুন';

  @override
  String get defaultSessionTitle => 'ডিফল্ট সেশন শিরোনাম';

  @override
  String get defaultSessionTitleHelper =>
      'এই টেমপ্লেট থেকে সেশন তৈরি করার সময় ব্যবহৃত শিরোনাম';

  @override
  String get sessionTitleRequired => 'অনুগ্রহ করে একটি সেশন শিরোনাম লিখুন';

  @override
  String get createTemplate => 'টেমপ্লেট তৈরি করুন';

  @override
  String get editTemplate => 'টেমপ্লেট সম্পাদনা করুন';

  @override
  String get create => 'তৈরি করুন';

  @override
  String get templateNameDialogTitle => 'টেমপ্লেট নাম';

  @override
  String get templateNameDialogHelper =>
      'সহজ সনাক্তকরণের জন্য এই টেমপ্লেটটিকে একটি নাম দিন';

  @override
  String get templateManagement => 'টেমপ্লেট পরিচালনা';

  @override
  String get noTemplatesYet => 'এখনও কোন টেমপ্লেট নেই';

  @override
  String get createSessionAndSaveAsTemplate =>
      'একটি সেশন তৈরি করুন এবং \"টেমপ্লেট হিসাবে সংরক্ষণ করুন\" চেক করুন';

  @override
  String get deleteTemplate => 'টেমপ্লেট মুছুন';

  @override
  String deleteTemplateConfirm(String title) {
    return 'আপনি কি নিশ্চিত যে \"$title\" মুছতে চান?';
  }

  @override
  String session(String title) {
    return 'সেশন: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'টেমপ্লেট হিসাবে সংরক্ষণ করুন';

  @override
  String templateSavedSuccessfully(String name) {
    return 'টেমপ্লেট \"$name\" সফলভাবে সংরক্ষিত হয়েছে';
  }

  @override
  String get debug => 'ডিবাগ';

  @override
  String get debugDateSimulation => 'ডিবাগ তারিখ সিমুলেশন';

  @override
  String get setCustomDate => 'কাস্টম তারিখ সেট করুন';

  @override
  String get clear => 'পরিষ্কার করুন';

  @override
  String now(String date) {
    return 'এখন: $date';
  }

  @override
  String get today => 'আজ';

  @override
  String get yesterday => 'গতকাল';

  @override
  String get tomorrow => 'আগামীকাল';

  @override
  String daysAgo(int count) {
    return '$count দিন আগে';
  }

  @override
  String daysLater(int count) {
    return '$count দিন পরে';
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
  String get testNotifications => 'পরীক্ষা বিজ্ঞপ্তি';

  @override
  String get testNotificationsDescription =>
      'বিজ্ঞপ্তিগুলি কাজ করছে কিনা তা যাচাই করতে 2 সেকেন্ডে একটি পরীক্ষা বিজ্ঞপ্তি পাঠান।';

  @override
  String get sendTestNotification => 'পরীক্ষা বিজ্ঞপ্তি পাঠান';

  @override
  String get testNotificationScheduled =>
      'পরীক্ষা বিজ্ঞপ্তি নির্ধারিত হয়েছে! 2 সেকেন্ডে চেক করুন।';

  @override
  String get testNotificationTitle => 'পরীক্ষা বিজ্ঞপ্তি';

  @override
  String get testNotificationBody =>
      'আপনি যদি এটি দেখেন, তাহলে বিজ্ঞপ্তিগুলি কাজ করছে!';

  @override
  String get scheduledTestNotificationTitle => 'নির্ধারিত পরীক্ষা বিজ্ঞপ্তি';

  @override
  String get scheduledTestNotificationBody =>
      'এটি 2 সেকেন্ড আগে নির্ধারিত হয়েছিল';

  @override
  String startsAt(String time) {
    return '$time এ শুরু হয়';
  }
}
