// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Бронювання Тижнів';

  @override
  String get selectWeek => 'Вибрати Тиждень';

  @override
  String get mon => 'Пн';

  @override
  String get tue => 'Вт';

  @override
  String get wed => 'Ср';

  @override
  String get thu => 'Чт';

  @override
  String get fri => 'Пт';

  @override
  String get sat => 'Сб';

  @override
  String get sun => 'Нд';

  @override
  String get noSessionsScheduled => 'Немає запланованих сесій';

  @override
  String get tapToAddSession => 'Натисніть кнопку +, щоб додати сесію';

  @override
  String student(int count) {
    return 'студент';
  }

  @override
  String students(int count) {
    return 'студентів';
  }

  @override
  String get deleteSession => 'Видалити Сесію';

  @override
  String deleteSessionConfirm(String title) {
    return 'Ви впевнені, що хочете видалити \"$title\"?';
  }

  @override
  String get cancel => 'Скасувати';

  @override
  String get delete => 'Видалити';

  @override
  String get createSession => 'Створити Сесію';

  @override
  String get editSession => 'Редагувати Сесію';

  @override
  String get title => 'Назва';

  @override
  String get titleRequired => 'Будь ласка, введіть назву';

  @override
  String get startTime => 'Час Початку';

  @override
  String get endTime => 'Час Завершення';

  @override
  String get endTimeAfterStart =>
      'Час завершення повинен бути після часу початку';

  @override
  String get descriptionOptional => 'Опис (необов\'язково)';

  @override
  String get save => 'Зберегти';

  @override
  String get add => 'Додати';

  @override
  String get edit => 'Редагувати';

  @override
  String get allEvents => 'Всі Події';

  @override
  String get manageTemplates => 'Керування Шаблонами';

  @override
  String get exportData => 'Експорт Даних';

  @override
  String get importData => 'Імпорт Даних';

  @override
  String get saveExportFile => 'Зберегти Файл Експорту';

  @override
  String exportSuccessful(String path) {
    return 'Експорт успішний!\nЗбережено в: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Експорт не вдався: $error';
  }

  @override
  String get importSuccessful => 'Імпорт Успішний';

  @override
  String get importFailed => 'Імпорт Не Вдався';

  @override
  String get errorReadingFile => 'Помилка читання файлу';

  @override
  String error(String error) {
    return 'Помилка: $error';
  }

  @override
  String get ok => 'ОК';

  @override
  String get searchEvents => 'Пошук подій...';

  @override
  String get noEventsScheduled => 'Немає запланованих подій';

  @override
  String get noEventsFound => 'Події не знайдено';

  @override
  String get createEventsFromCalendar => 'Створити події з календаря';

  @override
  String get studentsJoiningThisSession =>
      'Студенти, Які Приєднуються до Цієї Сесії';

  @override
  String get addMember => 'Додати Учасника';

  @override
  String get noStudentsAddedYet => 'Студентів ще не додано';

  @override
  String get tapToAddMember => 'Натисніть +, щоб додати учасника';

  @override
  String get allMembers => 'Всі Учасники';

  @override
  String get addToSession => 'Додати до сесії';

  @override
  String get removeFromSession => 'Видалити з сесії';

  @override
  String get name => 'Ім\'я';

  @override
  String get nameRequired => 'Будь ласка, введіть ім\'я';

  @override
  String get nicknameOptional => 'Прізвисько (необов\'язково)';

  @override
  String get ageOptional => 'Вік (необов\'язково)';

  @override
  String get ageInvalid => 'Будь ласка, введіть дійсний вік';

  @override
  String get phoneNumberOptional => 'Номер Телефону (необов\'язково)';

  @override
  String get phoneNumberHint => 'напр: +380 12 345 6789';

  @override
  String get addMemberTitle => 'Додати Учасника';

  @override
  String get editMemberTitle => 'Редагувати Учасника';

  @override
  String get member => 'Учасник';

  @override
  String nameLabel(String name) {
    return 'Ім\'я: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Вік: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Телефон: $phone';
  }

  @override
  String get templateOptional => 'Шаблон (необов\'язково)';

  @override
  String get none => 'Немає';

  @override
  String get saveAsTemplate => 'Зберегти як шаблон';

  @override
  String get saveAsTemplateSubtitle =>
      'Використовувати цю сесію як шаблон для майбутніх сесій';

  @override
  String get templateName => 'Назва Шаблону';

  @override
  String get templateNameHelper => 'Назва для ідентифікації цього шаблону';

  @override
  String get templateNameRequired => 'Будь ласка, введіть назву шаблону';

  @override
  String get defaultSessionTitle => 'Назва Сесії за Замовчуванням';

  @override
  String get defaultSessionTitleHelper =>
      'Назва, яка використовується при створенні сесій з цього шаблону';

  @override
  String get sessionTitleRequired => 'Будь ласка, введіть назву сесії';

  @override
  String get createTemplate => 'Створити Шаблон';

  @override
  String get editTemplate => 'Редагувати Шаблон';

  @override
  String get create => 'Створити';

  @override
  String get templateNameDialogTitle => 'Назва Шаблону';

  @override
  String get templateNameDialogHelper =>
      'Дайте цьому шаблону назву для легкої ідентифікації';

  @override
  String get templateManagement => 'Керування Шаблонами';

  @override
  String get noTemplatesYet => 'Поки що немає шаблонів';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Створіть сесію та оберіть \"Зберегти як шаблон\"';

  @override
  String get deleteTemplate => 'Видалити Шаблон';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Ви впевнені, що хочете видалити \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Сесія: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Зберегти як Шаблон';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Шаблон \"$name\" успішно збережено';
  }

  @override
  String get debug => 'ВІДЛАДКА';

  @override
  String get debugDateSimulation => 'Симуляція Дати Відладки';

  @override
  String get setCustomDate => 'Встановити Користувацьку Дату';

  @override
  String get clear => 'Очистити';

  @override
  String now(String date) {
    return 'Зараз: $date';
  }

  @override
  String get today => 'Сьогодні';

  @override
  String get yesterday => 'Вчора';

  @override
  String get tomorrow => 'Завтра';

  @override
  String daysAgo(int count) {
    return '$count днів тому';
  }

  @override
  String daysLater(int count) {
    return 'через $count днів';
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
  String get testNotifications => 'Тестові сповіщення';

  @override
  String get testNotificationsDescription =>
      'Надіслати тестове сповіщення через 2 секунди, щоб перевірити, чи працюють сповіщення.';

  @override
  String get sendTestNotification => 'Надіслати тестове сповіщення';

  @override
  String get testNotificationScheduled =>
      'Тестове сповіщення заплановано! Перевірте через 2 секунди.';

  @override
  String get testNotificationTitle => 'Тестове сповіщення';

  @override
  String get testNotificationBody => 'Якщо ви бачите це, сповіщення працюють!';

  @override
  String get scheduledTestNotificationTitle => 'Заплановане тестове сповіщення';

  @override
  String get scheduledTestNotificationBody =>
      'Це було заплановано 2 секунди тому';

  @override
  String startsAt(String time) {
    return 'Починається о $time';
  }

  @override
  String get themeSettings => 'Налаштування теми';

  @override
  String get selectTheme => 'Вибрати тему';

  @override
  String get selectThemeDescription =>
      'Виберіть кольорову тему для додатку. Тема буде застосована в усьому додатку.';

  @override
  String get themeChanged => 'Тему успішно змінено!';

  @override
  String get aboutTheme => 'Про теми';

  @override
  String get themeInfo =>
      'Зміна теми оновить кольори в усьому додатку, включаючи кнопки, панелі додатку та інші елементи інтерфейсу. Ваші налаштування теми будуть збережені та застосовані автоматично при перезапуску додатку.';
}
