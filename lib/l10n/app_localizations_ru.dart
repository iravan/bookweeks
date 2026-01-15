// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Бронирование Недель';

  @override
  String get selectWeek => 'Выбрать Неделю';

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
  String get sun => 'Вс';

  @override
  String get noSessionsScheduled => 'Нет запланированных сессий';

  @override
  String get tapToAddSession => 'Нажмите кнопку +, чтобы добавить сессию';

  @override
  String student(int count) {
    return 'студент';
  }

  @override
  String students(int count) {
    return 'студентов';
  }

  @override
  String get deleteSession => 'Удалить Сессию';

  @override
  String deleteSessionConfirm(String title) {
    return 'Вы уверены, что хотите удалить «$title»?';
  }

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get createSession => 'Создать Сессию';

  @override
  String get editSession => 'Редактировать Сессию';

  @override
  String get title => 'Название';

  @override
  String get titleRequired => 'Пожалуйста, введите название';

  @override
  String get startTime => 'Время Начала';

  @override
  String get endTime => 'Время Окончания';

  @override
  String get endTimeAfterStart =>
      'Время окончания должно быть позже времени начала';

  @override
  String get descriptionOptional => 'Описание (необязательно)';

  @override
  String get save => 'Сохранить';

  @override
  String get add => 'Добавить';

  @override
  String get edit => 'Редактировать';

  @override
  String get allEvents => 'Все События';

  @override
  String get manageTemplates => 'Управление Шаблонами';

  @override
  String get exportData => 'Экспорт Данных';

  @override
  String get importData => 'Импорт Данных';

  @override
  String get saveExportFile => 'Сохранить Файл Экспорта';

  @override
  String exportSuccessful(String path) {
    return 'Экспорт успешен!\nСохранено в: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Ошибка экспорта: $error';
  }

  @override
  String get importSuccessful => 'Импорт Успешен';

  @override
  String get importFailed => 'Ошибка Импорта';

  @override
  String get errorReadingFile => 'Ошибка при чтении файла';

  @override
  String error(String error) {
    return 'Ошибка: $error';
  }

  @override
  String get ok => 'ОК';

  @override
  String get searchEvents => 'Поиск событий...';

  @override
  String get noEventsScheduled => 'Нет запланированных событий';

  @override
  String get noEventsFound => 'События не найдены';

  @override
  String get createEventsFromCalendar => 'Создать события из календаря';

  @override
  String get studentsJoiningThisSession =>
      'Студенты, Участвующие в Этой Сессии';

  @override
  String get addMember => 'Добавить Участника';

  @override
  String get noStudentsAddedYet => 'Студенты еще не добавлены';

  @override
  String get tapToAddMember => 'Нажмите +, чтобы добавить участника';

  @override
  String get allMembers => 'Все Участники';

  @override
  String get addToSession => 'Добавить в сессию';

  @override
  String get removeFromSession => 'Удалить из сессии';

  @override
  String get name => 'Имя';

  @override
  String get nameRequired => 'Пожалуйста, введите имя';

  @override
  String get nicknameOptional => 'Прозвище (необязательно)';

  @override
  String get ageOptional => 'Возраст (необязательно)';

  @override
  String get ageInvalid => 'Пожалуйста, введите действительный возраст';

  @override
  String get phoneNumberOptional => 'Номер Телефона (необязательно)';

  @override
  String get phoneNumberHint => 'например: +7 912 345 67 89';

  @override
  String get addMemberTitle => 'Добавить Участника';

  @override
  String get editMemberTitle => 'Редактировать Участника';

  @override
  String get member => 'Участник';

  @override
  String nameLabel(String name) {
    return 'Имя: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Возраст: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Телефон: $phone';
  }

  @override
  String get templateOptional => 'Шаблон (необязательно)';

  @override
  String get none => 'Нет';

  @override
  String get saveAsTemplate => 'Сохранить как шаблон';

  @override
  String get saveAsTemplateSubtitle =>
      'Использовать эту сессию как шаблон для будущих сессий';

  @override
  String get templateName => 'Название Шаблона';

  @override
  String get templateNameHelper => 'Название для идентификации этого шаблона';

  @override
  String get templateNameRequired => 'Пожалуйста, введите название шаблона';

  @override
  String get defaultSessionTitle => 'Название Сессии по Умолчанию';

  @override
  String get defaultSessionTitleHelper =>
      'Название, используемое при создании сессий из этого шаблона';

  @override
  String get sessionTitleRequired => 'Пожалуйста, введите название сессии';

  @override
  String get createTemplate => 'Создать Шаблон';

  @override
  String get editTemplate => 'Редактировать Шаблон';

  @override
  String get create => 'Создать';

  @override
  String get templateNameDialogTitle => 'Название Шаблона';

  @override
  String get templateNameDialogHelper =>
      'Дайте этому шаблону название для легкой идентификации';

  @override
  String get templateManagement => 'Управление Шаблонами';

  @override
  String get noTemplatesYet => 'Пока нет шаблонов';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Создайте сессию и отметьте «Сохранить как шаблон»';

  @override
  String get deleteTemplate => 'Удалить Шаблон';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Вы уверены, что хотите удалить «$title»?';
  }

  @override
  String session(String title) {
    return 'Сессия: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Сохранить как шаблон';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Шаблон «$name» успешно сохранен';
  }

  @override
  String get debug => 'ОТЛАДКА';

  @override
  String get debugDateSimulation => 'Симуляция Даты Отладки';

  @override
  String get setCustomDate => 'Установить Пользовательскую Дату';

  @override
  String get clear => 'Очистить';

  @override
  String now(String date) {
    return 'Сейчас: $date';
  }

  @override
  String get today => 'Сегодня';

  @override
  String get yesterday => 'Вчера';

  @override
  String get tomorrow => 'Завтра';

  @override
  String daysAgo(int count) {
    return '$count дней назад';
  }

  @override
  String daysLater(int count) {
    return 'Через $count дней';
  }

  @override
  String get notificationSettings => 'Настройки уведомлений';

  @override
  String get notificationTiming => 'Время уведомлений';

  @override
  String get notificationTimingDescription =>
      'Выберите, когда получать уведомления перед началом каждой сессии';

  @override
  String get atEventStart => 'При начале события';

  @override
  String beforeEventStart(String timing) {
    return '$timing до начала события';
  }

  @override
  String get notificationTimingUpdated => 'Время уведомлений обновлено';

  @override
  String get aboutNotifications => 'О уведомлениях';

  @override
  String get notificationInfo =>
      'Вы будете получать уведомления перед началом каждой запланированной сессии. Уведомления автоматически планируются при создании или обновлении сессий, а все существующие сессии планируются при запуске приложения.';

  @override
  String get rescheduleNotifications => 'Переназначить уведомления';

  @override
  String get rescheduleNotificationsDescription =>
      'Вручную переназначьте уведомления для всех существующих будущих сессий. Это полезно, если вы только что включили уведомления или хотите убедиться, что все события имеют запланированные уведомления.';

  @override
  String get rescheduleNow => 'Переназначить сейчас';

  @override
  String get rescheduling => 'Переназначение...';

  @override
  String notificationsRescheduled(int count) {
    return 'Уведомления переназначены для $count будущей сессии(й)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Ошибка при переназначении уведомлений: $error';
  }

  @override
  String get permissionsRequired => 'Требуются разрешения на уведомления';

  @override
  String get permissionsRequiredDescription =>
      'Пожалуйста, предоставьте разрешения на уведомления, чтобы получать напоминания о ваших сессиях. Нажмите кнопку ниже, чтобы запросить разрешения.';

  @override
  String get requestPermissions => 'Запросить разрешения';

  @override
  String get permissionsGranted => 'Разрешения на уведомления предоставлены!';

  @override
  String get permissionsDenied =>
      'Разрешения на уведомления были отклонены. Пожалуйста, включите их в настройках.';

  @override
  String get timing0Min => '0 мин';

  @override
  String get timing1Min => '1 мин';

  @override
  String get timing5Mins => '5 мин';

  @override
  String get timing30Mins => '30 мин';

  @override
  String get timing1Hour => '1 час';

  @override
  String get timing6Hours => '6 часов';

  @override
  String timingMinutes(int count) {
    return '$count мин';
  }

  @override
  String timingHours(int count) {
    return '$count час';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count часов';
  }

  @override
  String get testNotifications => 'Тестовые уведомления';

  @override
  String get testNotificationsDescription =>
      'Отправить тестовое уведомление через 2 секунды, чтобы проверить, работают ли уведомления.';

  @override
  String get sendTestNotification => 'Отправить тестовое уведомление';

  @override
  String get testNotificationScheduled =>
      'Тестовое уведомление запланировано! Проверьте через 2 секунды.';

  @override
  String get testNotificationTitle => 'Тестовое уведомление';

  @override
  String get testNotificationBody =>
      'Если вы видите это, уведомления работают!';

  @override
  String get scheduledTestNotificationTitle =>
      'Запланированное тестовое уведомление';

  @override
  String get scheduledTestNotificationBody =>
      'Это было запланировано 2 секунды назад';

  @override
  String startsAt(String time) {
    return 'Начинается в $time';
  }

  @override
  String get themeSettings => 'Настройки темы';

  @override
  String get selectTheme => 'Выбрать тему';

  @override
  String get selectThemeDescription =>
      'Выберите цветовую тему для приложения. Тема будет применена во всем приложении.';

  @override
  String get themeChanged => 'Тема успешно изменена!';

  @override
  String get aboutTheme => 'О темах';

  @override
  String get themeInfo =>
      'Изменение темы обновит цвета во всем приложении, включая кнопки, панели приложения и другие элементы интерфейса. Ваши настройки темы будут сохранены и применены автоматически при перезапуске приложения.';

  @override
  String get enableNotifications => 'Включить уведомления';

  @override
  String get enableNotificationsDescription =>
      'Включите или отключите уведомления. Когда отключено, уведомления для ваших сессий отправляться не будут.';

  @override
  String get notificationsEnabled => 'Уведомления включены';

  @override
  String get notificationsDisabled => 'Уведомления отключены';
}
