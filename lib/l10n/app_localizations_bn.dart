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
  String get notificationSettings => 'বিজ্ঞপ্তি সেটিংস';

  @override
  String get notificationTiming => 'বিজ্ঞপ্তি সময়';

  @override
  String get notificationTimingDescription =>
      'প্রতিটি সেশন শুরু হওয়ার আগে কখন বিজ্ঞপ্তি পেতে চান তা নির্বাচন করুন';

  @override
  String get atEventStart => 'ইভেন্ট শুরুর সময়';

  @override
  String beforeEventStart(String timing) {
    return 'ইভেন্ট শুরুর $timing আগে';
  }

  @override
  String get notificationTimingUpdated => 'বিজ্ঞপ্তি সময় আপডেট করা হয়েছে';

  @override
  String get aboutNotifications => 'বিজ্ঞপ্তি সম্পর্কে';

  @override
  String get notificationInfo =>
      'আপনি প্রতিটি নির্ধারিত সেশন শুরু হওয়ার আগে বিজ্ঞপ্তি পাবেন। আপনি সেশন তৈরি বা আপডেট করার সময় বিজ্ঞপ্তিগুলি স্বয়ংক্রিয়ভাবে নির্ধারিত হয়, এবং অ্যাপ চালু হলে সমস্ত বিদ্যমান সেশন নির্ধারিত হয়।';

  @override
  String get rescheduleNotifications => 'বিজ্ঞপ্তি পুনঃনির্ধারণ করুন';

  @override
  String get rescheduleNotificationsDescription =>
      'সমস্ত বিদ্যমান ভবিষ্যত সেশনের জন্য বিজ্ঞপ্তিগুলি ম্যানুয়ালি পুনঃনির্ধারণ করুন। এটি দরকারী যদি আপনি সবেমাত্র বিজ্ঞপ্তি সক্ষম করেছেন বা নিশ্চিত করতে চান যে সমস্ত ইভেন্টে বিজ্ঞপ্তি নির্ধারিত আছে।';

  @override
  String get rescheduleNow => 'এখনই পুনঃনির্ধারণ করুন';

  @override
  String get rescheduling => 'পুনঃনির্ধারণ করা হচ্ছে...';

  @override
  String notificationsRescheduled(int count) {
    return '$count ভবিষ্যত সেশনের জন্য বিজ্ঞপ্তি পুনঃনির্ধারণ করা হয়েছে';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'বিজ্ঞপ্তি পুনঃনির্ধারণে ত্রুটি: $error';
  }

  @override
  String get permissionsRequired => 'বিজ্ঞপ্তি অনুমতি প্রয়োজন';

  @override
  String get permissionsRequiredDescription =>
      'আপনার সেশনের জন্য অনুস্মারক পেতে অনুগ্রহ করে বিজ্ঞপ্তি অনুমতি দিন। অনুমতি অনুরোধ করতে নীচের বোতামটি ট্যাপ করুন।';

  @override
  String get requestPermissions => 'অনুমতি অনুরোধ করুন';

  @override
  String get permissionsGranted => 'বিজ্ঞপ্তি অনুমতি দেওয়া হয়েছে!';

  @override
  String get permissionsDenied =>
      'বিজ্ঞপ্তি অনুমতি অস্বীকার করা হয়েছে। অনুগ্রহ করে সেটিংসে সেগুলি সক্ষম করুন।';

  @override
  String get timing0Min => '0 মিনিট';

  @override
  String get timing1Min => '1 মিনিট';

  @override
  String get timing5Mins => '5 মিনিট';

  @override
  String get timing30Mins => '30 মিনিট';

  @override
  String get timing1Hour => '1 ঘন্টা';

  @override
  String get timing6Hours => '6 ঘন্টা';

  @override
  String timingMinutes(int count) {
    return '$count মিনিট';
  }

  @override
  String timingHours(int count) {
    return '$count ঘন্টা';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count ঘন্টা';
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

  @override
  String get themeSettings => 'থিম সেটিংস';

  @override
  String get selectTheme => 'থিম নির্বাচন করুন';

  @override
  String get selectThemeDescription =>
      'অ্যাপের জন্য একটি রঙের থিম চয়ন করুন। থিমটি পুরো অ্যাপ্লিকেশনে প্রয়োগ করা হবে।';

  @override
  String get themeChanged => 'থিম সফলভাবে পরিবর্তন করা হয়েছে!';

  @override
  String get aboutTheme => 'থিম সম্পর্কে';

  @override
  String get themeInfo =>
      'থিম পরিবর্তন করলে অ্যাপ জুড়ে রঙ আপডেট হবে, যার মধ্যে রয়েছে বোতাম, অ্যাপ বার এবং অন্যান্য UI উপাদান। আপনার থিম পছন্দ সংরক্ষণ করা হবে এবং আপনি অ্যাপটি পুনরায় চালু করলে স্বয়ংক্রিয়ভাবে প্রয়োগ করা হবে।';

  @override
  String get enableNotifications => 'বিজ্ঞপ্তি সক্ষম করুন';

  @override
  String get enableNotificationsDescription =>
      'বিজ্ঞপ্তি চালু বা বন্ধ করুন। যখন নিষ্ক্রিয় থাকে, আপনার সেশনের জন্য কোনো বিজ্ঞপ্তি পাঠানো হবে না।';

  @override
  String get notificationsEnabled => 'বিজ্ঞপ্তি সক্ষম করা হয়েছে';

  @override
  String get notificationsDisabled => 'বিজ্ঞপ্তি নিষ্ক্রিয় করা হয়েছে';
}
