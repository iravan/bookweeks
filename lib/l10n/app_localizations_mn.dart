// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get appTitle => 'Долоо Хоног Захиалах';

  @override
  String get selectWeek => 'Долоо Хоног Сонгох';

  @override
  String get mon => 'Да';

  @override
  String get tue => 'Мя';

  @override
  String get wed => 'Лх';

  @override
  String get thu => 'Пү';

  @override
  String get fri => 'Ба';

  @override
  String get sat => 'Бя';

  @override
  String get sun => 'Ня';

  @override
  String get noSessionsScheduled => 'Төлөвлөсөн хичээл байхгүй';

  @override
  String get tapToAddSession => 'Хичээл нэмэхийн тулд + товч дарах';

  @override
  String student(int count) {
    return 'суралцагч';
  }

  @override
  String students(int count) {
    return 'суралцагчид';
  }

  @override
  String get deleteSession => 'Хичээл Устгах';

  @override
  String deleteSessionConfirm(String title) {
    return 'Та \"$title\" устгахдаа итгэлтэй байна уу?';
  }

  @override
  String get cancel => 'Цуцлах';

  @override
  String get delete => 'Устгах';

  @override
  String get createSession => 'Хичээл Үүсгэх';

  @override
  String get editSession => 'Хичээл Засах';

  @override
  String get title => 'Гарчиг';

  @override
  String get titleRequired => 'Гарчиг оруулна уу';

  @override
  String get startTime => 'Эхлэх Цаг';

  @override
  String get endTime => 'Дуусах Цаг';

  @override
  String get endTimeAfterStart => 'Дуусах цаг нь эхлэх цагаас хойш байх ёстой';

  @override
  String get descriptionOptional => 'Тайлбар (сонголттой)';

  @override
  String get save => 'Хадгалах';

  @override
  String get add => 'Нэмэх';

  @override
  String get edit => 'Засах';

  @override
  String get allEvents => 'Бүх Үйл явдал';

  @override
  String get manageTemplates => 'Загварууд Удирдах';

  @override
  String get exportData => 'Өгөгдөл Экспортлох';

  @override
  String get importData => 'Өгөгдөл Импортлох';

  @override
  String get saveExportFile => 'Экспортын Файл Хадгалах';

  @override
  String exportSuccessful(String path) {
    return 'Экспорт амжилттай!\nХадгалсан газар: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Экспорт амжилтгүй: $error';
  }

  @override
  String get importSuccessful => 'Импорт Амжилттай';

  @override
  String get importFailed => 'Импорт Амжилтгүй';

  @override
  String get errorReadingFile => 'Файл унших алдаа';

  @override
  String error(String error) {
    return 'Алдаа: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Үйл явдал хайх...';

  @override
  String get noEventsScheduled => 'Төлөвлөсөн үйл явдал байхгүй';

  @override
  String get noEventsFound => 'Үйл явдал олдсонгүй';

  @override
  String get createEventsFromCalendar => 'Календараас үйл явдал үүсгэх';

  @override
  String get studentsJoiningThisSession =>
      'Энэ Хичээлд Оролцож Буй Суралцагчид';

  @override
  String get addMember => 'Гишүүн Нэмэх';

  @override
  String get noStudentsAddedYet => 'Суралцагч хараахан нэмэгдээгүй байна';

  @override
  String get tapToAddMember => '+ дарах замаар гишүүн нэмэх';

  @override
  String get allMembers => 'Бүх Гишүүд';

  @override
  String get addToSession => 'Хичээлд нэмэх';

  @override
  String get removeFromSession => 'Хичээлээс хасах';

  @override
  String get name => 'Нэр';

  @override
  String get nameRequired => 'Нэр оруулна уу';

  @override
  String get nicknameOptional => 'Хоч нэр (сонголттой)';

  @override
  String get ageOptional => 'Нас (сонголттой)';

  @override
  String get ageInvalid => 'Зөв нас оруулна уу';

  @override
  String get phoneNumberOptional => 'Утасны Дугаар (сонголттой)';

  @override
  String get phoneNumberHint => 'жишээ: +976 9123 4567';

  @override
  String get addMemberTitle => 'Гишүүн Нэмэх';

  @override
  String get editMemberTitle => 'Гишүүн Засах';

  @override
  String get member => 'Гишүүн';

  @override
  String nameLabel(String name) {
    return 'Нэр: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Нас: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Утас: $phone';
  }

  @override
  String get templateOptional => 'Загвар (сонголттой)';

  @override
  String get none => 'Байхгүй';

  @override
  String get saveAsTemplate => 'Загвар болгон хадгалах';

  @override
  String get saveAsTemplateSubtitle =>
      'Энэ хичээлийг ирээдүйн хичээлүүдийн загвар болгон ашиглах';

  @override
  String get templateName => 'Загварын Нэр';

  @override
  String get templateNameHelper => 'Энэ загварыг тодорхойлох нэр';

  @override
  String get templateNameRequired => 'Загварын нэр оруулна уу';

  @override
  String get defaultSessionTitle => 'Анхдагч Хичээлийн Гарчиг';

  @override
  String get defaultSessionTitleHelper =>
      'Энэ загвараас хичээл үүсгэхэд ашиглах гарчиг';

  @override
  String get sessionTitleRequired => 'Хичээлийн гарчиг оруулна уу';

  @override
  String get createTemplate => 'Загвар Үүсгэх';

  @override
  String get editTemplate => 'Загвар Засах';

  @override
  String get create => 'Үүсгэх';

  @override
  String get templateNameDialogTitle => 'Загварын Нэр';

  @override
  String get templateNameDialogHelper =>
      'Энэ загварт хялбар танихын тулд нэр өгөх';

  @override
  String get templateManagement => 'Загварын Удирдлага';

  @override
  String get noTemplatesYet => 'Хараахан загвар байхгүй байна';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Хичээл үүсгэж \"Загвар болгон хадгалах\" сонгоно уу';

  @override
  String get deleteTemplate => 'Загвар Устгах';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Та \"$title\" устгахдаа итгэлтэй байна уу?';
  }

  @override
  String session(String title) {
    return 'Хичээл: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Загвар болгон Хадгалах';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Загвар \"$name\" амжилттай хадгалагдлаа';
  }

  @override
  String get debug => 'АЛДАА ЗАСВАР';

  @override
  String get debugDateSimulation => 'Алдаа Засварын Огнооны Симуляци';

  @override
  String get setCustomDate => 'Хувийн Огноо Тохируулах';

  @override
  String get clear => 'Цэвэрлэх';

  @override
  String now(String date) {
    return 'Одоо: $date';
  }

  @override
  String get today => 'Өнөөдөр';

  @override
  String get yesterday => 'Өчигдөр';

  @override
  String get tomorrow => 'Маргааш';

  @override
  String daysAgo(int count) {
    return '$count өдрийн өмнө';
  }

  @override
  String daysLater(int count) {
    return '$count өдрийн дараа';
  }

  @override
  String get notificationSettings => 'Мэдэгдлийн тохиргоо';

  @override
  String get notificationTiming => 'Мэдэгдлийн цаг';

  @override
  String get notificationTimingDescription =>
      'Сесш бүр эхлэхээс өмнө мэдэгдэл хэзээ хүлээн авахыг сонгоно уу';

  @override
  String get atEventStart => 'Үйл явдал эхлэхэд';

  @override
  String beforeEventStart(String timing) {
    return 'Үйл явдал эхлэхээс $timing өмнө';
  }

  @override
  String get notificationTimingUpdated => 'Мэдэгдлийн цаг шинэчлэгдлээ';

  @override
  String get aboutNotifications => 'Мэдэгдлүүдийн тухай';

  @override
  String get notificationInfo =>
      'Та төлөвлөсөн сесш бүр эхлэхээс өмнө мэдэгдэл хүлээн авах болно. Та сесш үүсгэх эсвэл шинэчлэхэд мэдэгдлүүд автоматаар төлөвлөгдөж, апп эхлэхэд бүх одоо байгаа сесшүүд төлөвлөгдөнө.';

  @override
  String get rescheduleNotifications => 'Мэдэгдлүүдийг дахин төлөвлөх';

  @override
  String get rescheduleNotificationsDescription =>
      'Бүх одоо байгаа ирээдүйн сесшүүдэд мэдэгдлүүдийг гараар дахин төлөвлөнө. Хэрэв та дөнгөж мэдэгдлүүдийг идэвхжүүлсэн эсвэл бүх үйл явдлууд төлөвлөсөн мэдэгдэлтэй байгаа эсэхийг баталгаажуулахыг хүсвэл ашигтай.';

  @override
  String get rescheduleNow => 'Одоо дахин төлөвлөх';

  @override
  String get rescheduling => 'Дахин төлөвлөж байна...';

  @override
  String notificationsRescheduled(int count) {
    return '$count ирээдүйн сесш(үүд)эд мэдэгдлүүд дахин төлөвлөгдлөө';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Мэдэгдлүүдийг дахин төлөвлөхөд алдаа гарлаа: $error';
  }

  @override
  String get permissionsRequired => 'Мэдэгдлийн зөвшөөрөл шаардлагатай';

  @override
  String get permissionsRequiredDescription =>
      'Таны сесшүүдийн сануулга хүлээн авахын тулд мэдэгдлийн зөвшөөрөл олгоно уу. Зөвшөөрөл хүсэхийн тулд доорх товчийг дарна уу.';

  @override
  String get requestPermissions => 'Зөвшөөрөл хүсэх';

  @override
  String get permissionsGranted => 'Мэдэгдлийн зөвшөөрөл олгогдлоо!';

  @override
  String get permissionsDenied =>
      'Мэдэгдлийн зөвшөөрөл татгалзсан. Тохиргоонд идэвхжүүлнэ үү.';

  @override
  String get timing0Min => '0 мин';

  @override
  String get timing1Min => '1 мин';

  @override
  String get timing5Mins => '5 мин';

  @override
  String get timing30Mins => '30 мин';

  @override
  String get timing1Hour => '1 цаг';

  @override
  String get timing6Hours => '6 цаг';

  @override
  String timingMinutes(int count) {
    return '$count мин';
  }

  @override
  String timingHours(int count) {
    return '$count цаг';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count цаг';
  }

  @override
  String get testNotifications => 'Туршилтын мэдэгдэл';

  @override
  String get testNotificationsDescription =>
      'Мэдэгдлүүд ажиллаж байгаа эсэхийг баталгаажуулахын тулд 2 секундын дараа туршилтын мэдэгдэл илгээнэ үү.';

  @override
  String get sendTestNotification => 'Туршилтын мэдэгдэл илгээх';

  @override
  String get testNotificationScheduled =>
      'Туршилтын мэдэгдэл төлөвлөгдсөн! 2 секундын дараа шалгана уу.';

  @override
  String get testNotificationTitle => 'Туршилтын мэдэгдэл';

  @override
  String get testNotificationBody =>
      'Хэрэв та үүнийг харж байгаа бол, мэдэгдлүүд ажиллаж байна!';

  @override
  String get scheduledTestNotificationTitle =>
      'Төлөвлөгдсөн туршилтын мэдэгдэл';

  @override
  String get scheduledTestNotificationBody =>
      'Энэ нь 2 секундын өмнө төлөвлөгдсөн';

  @override
  String startsAt(String time) {
    return '$time цагт эхэлнэ';
  }

  @override
  String get themeSettings => 'Сэдвийн тохиргоо';

  @override
  String get selectTheme => 'Сэдвийг сонгох';

  @override
  String get selectThemeDescription =>
      'Апп-д зориулсан өнгөний сэдвийг сонгоно уу. Сэдэв нь бүхэлдээ апп-д хэрэглэгдэнэ.';

  @override
  String get themeChanged => 'Сэдэв амжилттай өөрчлөгдлөө!';

  @override
  String get aboutTheme => 'Сэдвийн тухай';

  @override
  String get themeInfo =>
      'Сэдвийг өөрчлөх нь товчлуур, апп-ийн самбар болон бусад UI элементүүдийг багтааж, апп-ийн бүх өнгөг шинэчлэх болно. Таны сэдвийн сонголт хадгалагдаж, апп-ийг дахин эхлүүлэхэд автоматаар хэрэглэгдэнэ.';

  @override
  String get enableNotifications => 'Мэдэгдлүүдийг идэвхжүүлэх';

  @override
  String get enableNotificationsDescription =>
      'Мэдэгдлүүдийг идэвхжүүл эсвэл идэвхгүй болгох. Идэвхгүй болгоход таны сессийн мэдэгдэл илгээхгүй.';

  @override
  String get notificationsEnabled => 'Мэдэгдлүүд идэвхжсэн';

  @override
  String get notificationsDisabled => 'Мэдэгдлүүд идэвхгүй болсон';
}
