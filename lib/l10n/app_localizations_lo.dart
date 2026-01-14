// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get appTitle => 'ຈອງອາທິດ';

  @override
  String get selectWeek => 'ເລືອກອາທິດ';

  @override
  String get mon => 'ຈັນ';

  @override
  String get tue => 'ອັງຄານ';

  @override
  String get wed => 'ພຸດ';

  @override
  String get thu => 'ພະຫັດ';

  @override
  String get fri => 'ສຸກ';

  @override
  String get sat => 'ເສົາ';

  @override
  String get sun => 'ອາທິດ';

  @override
  String get noSessionsScheduled => 'ບໍ່ມີການນັດພົບທີ່ກຳນົດໄວ້';

  @override
  String get tapToAddSession => 'ແຕະປຸ່ມ + ເພື່ອເພີ່ມການນັດພົບ';

  @override
  String student(int count) {
    return 'ນັກຮຽນ';
  }

  @override
  String students(int count) {
    return 'ນັກຮຽນ';
  }

  @override
  String get deleteSession => 'ລຶບການນັດພົບ';

  @override
  String deleteSessionConfirm(String title) {
    return 'ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການລຶບ \"$title\"?';
  }

  @override
  String get cancel => 'ຍົກເລີກ';

  @override
  String get delete => 'ລຶບ';

  @override
  String get createSession => 'ສ້າງການນັດພົບ';

  @override
  String get editSession => 'ແກ້ໄຂການນັດພົບ';

  @override
  String get title => 'ຫົວຂໍ້';

  @override
  String get titleRequired => 'ກະລຸນາໃສ່ຫົວຂໍ້';

  @override
  String get startTime => 'ເວລາເລີ່ມຕົ້ນ';

  @override
  String get endTime => 'ເວລາສິ້ນສຸດ';

  @override
  String get endTimeAfterStart => 'ເວລາສິ້ນສຸດຕ້ອງຫຼັງເວລາເລີ່ມຕົ້ນ';

  @override
  String get descriptionOptional => 'ລາຍລະອຽດ (ທາງເລືອກ)';

  @override
  String get save => 'ບັນທຶກ';

  @override
  String get add => 'ເພີ່ມ';

  @override
  String get edit => 'ແກ້ໄຂ';

  @override
  String get allEvents => 'ເຫດການທັງໝົດ';

  @override
  String get manageTemplates => 'ຈັດການແມ່ແບບ';

  @override
  String get exportData => 'ສົ່ງອອກຂໍ້ມູນ';

  @override
  String get importData => 'ນຳເຂົ້າຂໍ້ມູນ';

  @override
  String get saveExportFile => 'ບັນທຶກໄຟລ໌ສົ່ງອອກ';

  @override
  String exportSuccessful(String path) {
    return 'ສົ່ງອອກສຳເລັດ!\nບັນທຶກໄວ້ທີ່: $path';
  }

  @override
  String exportFailed(String error) {
    return 'ສົ່ງອອກບໍ່ສຳເລັດ: $error';
  }

  @override
  String get importSuccessful => 'ນຳເຂົ້າສຳເລັດ';

  @override
  String get importFailed => 'ນຳເຂົ້າບໍ່ສຳເລັດ';

  @override
  String get errorReadingFile => 'ຂໍ້ຜິດພາດໃນການອ່ານໄຟລ໌';

  @override
  String error(String error) {
    return 'ຂໍ້ຜິດພາດ: $error';
  }

  @override
  String get ok => 'ຕົກລົງ';

  @override
  String get searchEvents => 'ຄົ້ນຫາເຫດການ...';

  @override
  String get noEventsScheduled => 'ບໍ່ມີເຫດການທີ່ກຳນົດໄວ້';

  @override
  String get noEventsFound => 'ບໍ່ພົບເຫດການ';

  @override
  String get createEventsFromCalendar => 'ສ້າງເຫດການຈາກປະຕິທິນ';

  @override
  String get studentsJoiningThisSession => 'ນັກຮຽນທີ່ເຂົ້າຮ່ວມການນັດພົບນີ້';

  @override
  String get addMember => 'ເພີ່ມສະມາຊິກ';

  @override
  String get noStudentsAddedYet => 'ຍັງບໍ່ໄດ້ເພີ່ມນັກຮຽນ';

  @override
  String get tapToAddMember => 'ແຕະ + ເພື່ອເພີ່ມສະມາຊິກ';

  @override
  String get allMembers => 'ສະມາຊິກທັງໝົດ';

  @override
  String get addToSession => 'ເພີ່ມເຂົ້າການນັດພົບ';

  @override
  String get removeFromSession => 'ລຶບອອກຈາກການນັດພົບ';

  @override
  String get name => 'ຊື່';

  @override
  String get nameRequired => 'ກະລຸນາໃສ່ຊື່';

  @override
  String get nicknameOptional => 'ຊື່ຫຼິ້ນ (ທາງເລືອກ)';

  @override
  String get ageOptional => 'ອາຍຸ (ທາງເລືອກ)';

  @override
  String get ageInvalid => 'ກະລຸນາໃສ່ອາຍຸທີ່ຖືກຕ້ອງ';

  @override
  String get phoneNumberOptional => 'ເບີໂທລະສັບ (ທາງເລືອກ)';

  @override
  String get phoneNumberHint => 'ຕົວຢ່າງ: +856 20 1234 5678';

  @override
  String get addMemberTitle => 'ເພີ່ມສະມາຊິກ';

  @override
  String get editMemberTitle => 'ແກ້ໄຂສະມາຊິກ';

  @override
  String get member => 'ສະມາຊິກ';

  @override
  String nameLabel(String name) {
    return 'ຊື່: $name';
  }

  @override
  String ageLabel(int age) {
    return 'ອາຍຸ: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'ໂທລະສັບ: $phone';
  }

  @override
  String get templateOptional => 'ແມ່ແບບ (ທາງເລືອກ)';

  @override
  String get none => 'ບໍ່ມີ';

  @override
  String get saveAsTemplate => 'ບັນທຶກເປັນແມ່ແບບ';

  @override
  String get saveAsTemplateSubtitle =>
      'ໃຊ້ການນັດພົບນີ້ເປັນແມ່ແບບສຳລັບການນັດພົບໃນອະນາຄົດ';

  @override
  String get templateName => 'ຊື່ແມ່ແບບ';

  @override
  String get templateNameHelper => 'ຊື່ເພື່ອກຳນົດແມ່ແບບນີ້';

  @override
  String get templateNameRequired => 'ກະລຸນາໃສ່ຊື່ແມ່ແບບ';

  @override
  String get defaultSessionTitle => 'ຫົວຂໍ້ການນັດພົບເລີ່ມຕົ້ນ';

  @override
  String get defaultSessionTitleHelper =>
      'ຫົວຂໍ້ທີ່ໃຊ້ເມື່ອສ້າງການນັດພົບຈາກແມ່ແບບນີ້';

  @override
  String get sessionTitleRequired => 'ກະລຸນາໃສ່ຫົວຂໍ້ການນັດພົບ';

  @override
  String get createTemplate => 'ສ້າງແມ່ແບບ';

  @override
  String get editTemplate => 'ແກ້ໄຂແມ່ແບບ';

  @override
  String get create => 'ສ້າງ';

  @override
  String get templateNameDialogTitle => 'ຊື່ແມ່ແບບ';

  @override
  String get templateNameDialogHelper => 'ໃຫ້ຊື່ແມ່ແບບນີ້ເພື່ອກຳນົດງ່າຍ';

  @override
  String get templateManagement => 'ການຈັດການແມ່ແບບ';

  @override
  String get noTemplatesYet => 'ຍັງບໍ່ມີແມ່ແບບ';

  @override
  String get createSessionAndSaveAsTemplate =>
      'ສ້າງການນັດພົບແລະເລືອກ \"ບັນທຶກເປັນແມ່ແບບ\"';

  @override
  String get deleteTemplate => 'ລຶບແມ່ແບບ';

  @override
  String deleteTemplateConfirm(String title) {
    return 'ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການລຶບ \"$title\"?';
  }

  @override
  String session(String title) {
    return 'ການນັດພົບ: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'ບັນທຶກເປັນແມ່ແບບ';

  @override
  String templateSavedSuccessfully(String name) {
    return 'ແມ່ແບບ \"$name\" ບັນທຶກສຳເລັດແລ້ວ';
  }

  @override
  String get debug => 'ດີບັກ';

  @override
  String get debugDateSimulation => 'ການຈຳລອງວັນທີດີບັກ';

  @override
  String get setCustomDate => 'ຕັ້ງວັນທີແບບກຳນົດເອງ';

  @override
  String get clear => 'ລ້າງ';

  @override
  String now(String date) {
    return 'ດຽວນີ້: $date';
  }

  @override
  String get today => 'ມື້ນີ້';

  @override
  String get yesterday => 'ມື້ວານ';

  @override
  String get tomorrow => 'ມື້ອື່ນ';

  @override
  String daysAgo(int count) {
    return '$count ມື້ກ່ອນໜ້ານີ້';
  }

  @override
  String daysLater(int count) {
    return 'ໃນ $count ມື້ຂ້າງໜ້າ';
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
  String get testNotifications => 'ການແຈ້ງເຕືອນທົດສອບ';

  @override
  String get testNotificationsDescription =>
      'ສົ່ງການແຈ້ງເຕືອນທົດສອບໃນ 2 ວິນາທີເພື່ອກວດສອບວ່າການແຈ້ງເຕືອນກຳລັງເຮັດວຽກຢູ່ຫຼືບໍ່.';

  @override
  String get sendTestNotification => 'ສົ່ງການແຈ້ງເຕືອນທົດສອບ';

  @override
  String get testNotificationScheduled =>
      'ການແຈ້ງເຕືອນທົດສອບຖືກກຳນົດເວລາແລ້ວ! ກວດເບິ່ງໃນ 2 ວິນາທີ.';

  @override
  String get testNotificationTitle => 'ການແຈ້ງເຕືອນທົດສອບ';

  @override
  String get testNotificationBody =>
      'ຖ້າທ່ານເຫັນສິ່ງນີ້, ການແຈ້ງເຕືອນກຳລັງເຮັດວຽກ!';

  @override
  String get scheduledTestNotificationTitle =>
      'ການແຈ້ງເຕືອນທົດສອບທີ່ຖືກກຳນົດເວລາ';

  @override
  String get scheduledTestNotificationBody => 'ນີ້ຖືກກຳນົດເວລາ 2 ວິນາທີກ່ອນ';

  @override
  String startsAt(String time) {
    return 'ເລີ່ມຕົ້ນທີ່ $time';
  }

  @override
  String get themeSettings => 'ການຕັ້ງຄ່າຮູບແບບ';

  @override
  String get selectTheme => 'ເລືອກຮູບແບບ';

  @override
  String get selectThemeDescription =>
      'ເລືອກຮູບແບບສີສໍາລັບແອັບ. ຮູບແບບຈະຖືກນໍາໃຊ້ທົ່ວທັງແອັບພລິເຄຊັນ.';

  @override
  String get themeChanged => 'ຮູບແບບຖືກປ່ຽນສຳເລັດແລ້ວ!';

  @override
  String get aboutTheme => 'ກ່ຽວກັບຮູບແບບ';

  @override
  String get themeInfo =>
      'ການປ່ຽນຮູບແບບຈະອັບເດດສີໃນທົ່ວແອັບ, ລວມທັງປຸ່ມ, ແຖບແອັບ, ແລະອົງປະກອບ UI ອື່ນໆ. ການຕັ້ງຄ່າຮູບແບບຂອງທ່ານຈະຖືກບັນທຶກແລະນໍາໃຊ້ອັດຕະໂນມັດເມື່ອທ່ານເປີດແອັບຄືນໃໝ່.';
}
