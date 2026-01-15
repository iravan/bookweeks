// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '週次預約';

  @override
  String get selectWeek => '選擇週次';

  @override
  String get mon => '週一';

  @override
  String get tue => '週二';

  @override
  String get wed => '週三';

  @override
  String get thu => '週四';

  @override
  String get fri => '週五';

  @override
  String get sat => '週六';

  @override
  String get sun => '週日';

  @override
  String get noSessionsScheduled => '沒有排定的課程';

  @override
  String get tapToAddSession => '點擊 + 按鈕新增課程';

  @override
  String student(int count) {
    return '學生';
  }

  @override
  String students(int count) {
    return '學生';
  }

  @override
  String get deleteSession => '刪除課程';

  @override
  String deleteSessionConfirm(String title) {
    return '確定要刪除「$title」嗎？';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '刪除';

  @override
  String get createSession => '建立課程';

  @override
  String get editSession => '編輯課程';

  @override
  String get title => '標題';

  @override
  String get titleRequired => '請輸入標題';

  @override
  String get startTime => '開始時間';

  @override
  String get endTime => '結束時間';

  @override
  String get endTimeAfterStart => '結束時間必須晚於開始時間';

  @override
  String get descriptionOptional => '描述（選填）';

  @override
  String get save => '儲存';

  @override
  String get add => '新增';

  @override
  String get edit => '編輯';

  @override
  String get allEvents => '所有活動';

  @override
  String get manageTemplates => '管理範本';

  @override
  String get exportData => '匯出資料';

  @override
  String get importData => '匯入資料';

  @override
  String get saveExportFile => '儲存匯出檔案';

  @override
  String exportSuccessful(String path) {
    return '匯出成功！\n已儲存至：$path';
  }

  @override
  String exportFailed(String error) {
    return '匯出失敗：$error';
  }

  @override
  String get importSuccessful => '匯入成功';

  @override
  String get importFailed => '匯入失敗';

  @override
  String get errorReadingFile => '讀取檔案時發生錯誤';

  @override
  String error(String error) {
    return '錯誤：$error';
  }

  @override
  String get ok => '確定';

  @override
  String get searchEvents => '搜尋活動...';

  @override
  String get noEventsScheduled => '沒有排定的活動';

  @override
  String get noEventsFound => '找不到活動';

  @override
  String get createEventsFromCalendar => '從日曆建立活動';

  @override
  String get studentsJoiningThisSession => '參加此課程的學生';

  @override
  String get addMember => '新增成員';

  @override
  String get noStudentsAddedYet => '尚未新增學生';

  @override
  String get tapToAddMember => '點擊 + 新增成員';

  @override
  String get allMembers => '所有成員';

  @override
  String get addToSession => '加入課程';

  @override
  String get removeFromSession => '從課程移除';

  @override
  String get name => '姓名';

  @override
  String get nameRequired => '請輸入姓名';

  @override
  String get nicknameOptional => '暱稱（選填）';

  @override
  String get ageOptional => '年齡（選填）';

  @override
  String get ageInvalid => '請輸入有效的年齡';

  @override
  String get phoneNumberOptional => '電話號碼（選填）';

  @override
  String get phoneNumberHint => '例如：+886 912 345 678';

  @override
  String get addMemberTitle => '新增成員';

  @override
  String get editMemberTitle => '編輯成員';

  @override
  String get member => '成員';

  @override
  String nameLabel(String name) {
    return '姓名：$name';
  }

  @override
  String ageLabel(int age) {
    return '年齡：$age';
  }

  @override
  String phoneLabel(String phone) {
    return '電話：$phone';
  }

  @override
  String get templateOptional => '範本（選填）';

  @override
  String get none => '無';

  @override
  String get saveAsTemplate => '儲存為範本';

  @override
  String get saveAsTemplateSubtitle => '將此課程作為未來課程的範本';

  @override
  String get templateName => '範本名稱';

  @override
  String get templateNameHelper => '用於識別此範本的名稱';

  @override
  String get templateNameRequired => '請輸入範本名稱';

  @override
  String get defaultSessionTitle => '預設課程標題';

  @override
  String get defaultSessionTitleHelper => '使用此範本建立課程時使用的標題';

  @override
  String get sessionTitleRequired => '請輸入課程標題';

  @override
  String get createTemplate => '建立範本';

  @override
  String get editTemplate => '編輯範本';

  @override
  String get create => '建立';

  @override
  String get templateNameDialogTitle => '範本名稱';

  @override
  String get templateNameDialogHelper => '為此範本命名以便識別';

  @override
  String get templateManagement => '範本管理';

  @override
  String get noTemplatesYet => '尚無範本';

  @override
  String get createSessionAndSaveAsTemplate => '建立課程並勾選「儲存為範本」';

  @override
  String get deleteTemplate => '刪除範本';

  @override
  String deleteTemplateConfirm(String title) {
    return '確定要刪除「$title」嗎？';
  }

  @override
  String session(String title) {
    return '課程：$title';
  }

  @override
  String get saveAsTemplateTooltip => '儲存為範本';

  @override
  String templateSavedSuccessfully(String name) {
    return '範本「$name」已成功儲存';
  }

  @override
  String get debug => '除錯';

  @override
  String get debugDateSimulation => '除錯日期模擬';

  @override
  String get setCustomDate => '設定自訂日期';

  @override
  String get clear => '清除';

  @override
  String now(String date) {
    return '現在：$date';
  }

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get tomorrow => '明天';

  @override
  String daysAgo(int count) {
    return '$count 天前';
  }

  @override
  String daysLater(int count) {
    return '$count 天後';
  }

  @override
  String get notificationSettings => '通知设置';

  @override
  String get notificationTiming => '通知时间';

  @override
  String get notificationTimingDescription => '选择在每次课程开始前何时接收通知';

  @override
  String get atEventStart => '课程开始时';

  @override
  String beforeEventStart(String timing) {
    return '$timing 前';
  }

  @override
  String get notificationTimingUpdated => '通知时间已更新';

  @override
  String get aboutNotifications => '关于通知';

  @override
  String get notificationInfo =>
      '您将在每次预定的课程开始前收到通知。创建或更新课程时会自动安排通知，应用启动时会为所有现有课程安排通知。';

  @override
  String get rescheduleNotifications => '重新安排通知';

  @override
  String get rescheduleNotificationsDescription =>
      '手动为所有现有未来课程重新安排通知。如果您刚刚启用通知或想确保所有活动都已安排通知，这很有用。';

  @override
  String get rescheduleNow => '立即重新安排';

  @override
  String get rescheduling => '重新安排中...';

  @override
  String notificationsRescheduled(int count) {
    return '已为 $count 个未来课程重新安排通知';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return '重新安排通知时出错：$error';
  }

  @override
  String get permissionsRequired => '需要通知权限';

  @override
  String get permissionsRequiredDescription => '请授予通知权限以接收课程提醒。点击下面的按钮请求权限。';

  @override
  String get requestPermissions => '请求权限';

  @override
  String get permissionsGranted => '通知权限已授予！';

  @override
  String get permissionsDenied => '通知权限被拒绝。请在设置中启用。';

  @override
  String get timing0Min => '0 分钟';

  @override
  String get timing1Min => '1 分钟';

  @override
  String get timing5Mins => '5 分钟';

  @override
  String get timing30Mins => '30 分钟';

  @override
  String get timing1Hour => '1 小时';

  @override
  String get timing6Hours => '6 小时';

  @override
  String timingMinutes(int count) {
    return '$count 分钟';
  }

  @override
  String timingHours(int count) {
    return '$count 小时';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count 小时';
  }

  @override
  String get testNotifications => '测试通知';

  @override
  String get testNotificationsDescription => '在2秒后发送测试通知以验证通知功能是否正常工作。';

  @override
  String get sendTestNotification => '发送测试通知';

  @override
  String get testNotificationScheduled => '测试通知已安排！2秒后查看。';

  @override
  String get testNotificationTitle => '测试通知';

  @override
  String get testNotificationBody => '如果您看到这条消息，通知功能正常工作！';

  @override
  String get scheduledTestNotificationTitle => '已安排的测试通知';

  @override
  String get scheduledTestNotificationBody => '这是在2秒前安排的';

  @override
  String startsAt(String time) {
    return '开始时间：$time';
  }

  @override
  String get themeSettings => '主题设置';

  @override
  String get selectTheme => '选择主题';

  @override
  String get selectThemeDescription => '为应用选择颜色主题。主题将应用于整个应用程序。';

  @override
  String get themeChanged => '主题更改成功！';

  @override
  String get aboutTheme => '关于主题';

  @override
  String get themeInfo =>
      '更改主题将更新整个应用中的颜色，包括按钮、应用栏和其他UI元素。您的主题偏好将被保存，并在您重新启动应用时自动应用。';

  @override
  String get enableNotifications => '启用通知';

  @override
  String get enableNotificationsDescription => '开启或关闭通知。关闭后，不会为您的会话发送通知。';

  @override
  String get notificationsEnabled => '通知已启用';

  @override
  String get notificationsDisabled => '通知已禁用';

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

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appTitle => '周次预约';

  @override
  String get selectWeek => '选择周次';

  @override
  String get mon => '周一';

  @override
  String get tue => '周二';

  @override
  String get wed => '周三';

  @override
  String get thu => '周四';

  @override
  String get fri => '周五';

  @override
  String get sat => '周六';

  @override
  String get sun => '周日';

  @override
  String get noSessionsScheduled => '没有安排的课程';

  @override
  String get tapToAddSession => '点击 + 按钮添加课程';

  @override
  String student(int count) {
    return '学生';
  }

  @override
  String students(int count) {
    return '学生';
  }

  @override
  String get deleteSession => '删除课程';

  @override
  String deleteSessionConfirm(String title) {
    return '确定要删除「$title」吗？';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get createSession => '创建课程';

  @override
  String get editSession => '编辑课程';

  @override
  String get title => '标题';

  @override
  String get titleRequired => '请输入标题';

  @override
  String get startTime => '开始时间';

  @override
  String get endTime => '结束时间';

  @override
  String get endTimeAfterStart => '结束时间必须晚于开始时间';

  @override
  String get descriptionOptional => '描述（可选）';

  @override
  String get save => '保存';

  @override
  String get add => '添加';

  @override
  String get edit => '编辑';

  @override
  String get allEvents => '所有活动';

  @override
  String get manageTemplates => '管理模板';

  @override
  String get exportData => '导出数据';

  @override
  String get importData => '导入数据';

  @override
  String get saveExportFile => '保存导出文件';

  @override
  String exportSuccessful(String path) {
    return '导出成功！\n已保存至：$path';
  }

  @override
  String exportFailed(String error) {
    return '导出失败：$error';
  }

  @override
  String get importSuccessful => '导入成功';

  @override
  String get importFailed => '导入失败';

  @override
  String get errorReadingFile => '读取文件时发生错误';

  @override
  String error(String error) {
    return '错误：$error';
  }

  @override
  String get ok => '确定';

  @override
  String get searchEvents => '搜索活动...';

  @override
  String get noEventsScheduled => '没有安排的活动';

  @override
  String get noEventsFound => '找不到活动';

  @override
  String get createEventsFromCalendar => '从日历创建活动';

  @override
  String get studentsJoiningThisSession => '参加此课程的学生';

  @override
  String get addMember => '添加成员';

  @override
  String get noStudentsAddedYet => '尚未添加学生';

  @override
  String get tapToAddMember => '点击 + 添加成员';

  @override
  String get allMembers => '所有成员';

  @override
  String get addToSession => '加入课程';

  @override
  String get removeFromSession => '从课程移除';

  @override
  String get name => '姓名';

  @override
  String get nameRequired => '请输入姓名';

  @override
  String get nicknameOptional => '昵称（可选）';

  @override
  String get ageOptional => '年龄（可选）';

  @override
  String get ageInvalid => '请输入有效的年龄';

  @override
  String get phoneNumberOptional => '电话号码（可选）';

  @override
  String get phoneNumberHint => '例如：+86 138 0013 8000';

  @override
  String get addMemberTitle => '添加成员';

  @override
  String get editMemberTitle => '编辑成员';

  @override
  String get member => '成员';

  @override
  String nameLabel(String name) {
    return '姓名：$name';
  }

  @override
  String ageLabel(int age) {
    return '年龄：$age';
  }

  @override
  String phoneLabel(String phone) {
    return '电话：$phone';
  }

  @override
  String get templateOptional => '模板（可选）';

  @override
  String get none => '无';

  @override
  String get saveAsTemplate => '保存为模板';

  @override
  String get saveAsTemplateSubtitle => '将此课程作为未来课程的模板';

  @override
  String get templateName => '模板名称';

  @override
  String get templateNameHelper => '用于识别此模板的名称';

  @override
  String get templateNameRequired => '请输入模板名称';

  @override
  String get defaultSessionTitle => '默认课程标题';

  @override
  String get defaultSessionTitleHelper => '使用此模板创建课程时使用的标题';

  @override
  String get sessionTitleRequired => '请输入课程标题';

  @override
  String get createTemplate => '创建模板';

  @override
  String get editTemplate => '编辑模板';

  @override
  String get create => '创建';

  @override
  String get templateNameDialogTitle => '模板名称';

  @override
  String get templateNameDialogHelper => '为此模板命名以便识别';

  @override
  String get templateManagement => '模板管理';

  @override
  String get noTemplatesYet => '尚无模板';

  @override
  String get createSessionAndSaveAsTemplate => '创建课程并勾选「保存为模板」';

  @override
  String get deleteTemplate => '删除模板';

  @override
  String deleteTemplateConfirm(String title) {
    return '确定要删除「$title」吗？';
  }

  @override
  String session(String title) {
    return '课程：$title';
  }

  @override
  String get saveAsTemplateTooltip => '保存为模板';

  @override
  String templateSavedSuccessfully(String name) {
    return '模板「$name」已成功保存';
  }

  @override
  String get debug => '调试';

  @override
  String get debugDateSimulation => '调试日期模拟';

  @override
  String get setCustomDate => '设置自定义日期';

  @override
  String get clear => '清除';

  @override
  String now(String date) {
    return '现在：$date';
  }

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get tomorrow => '明天';

  @override
  String daysAgo(int count) {
    return '$count 天前';
  }

  @override
  String daysLater(int count) {
    return '$count 天后';
  }

  @override
  String get notificationSettings => '通知设置';

  @override
  String get notificationTiming => '通知时间';

  @override
  String get notificationTimingDescription => '选择在每次课程开始前何时接收通知';

  @override
  String get atEventStart => '课程开始时';

  @override
  String beforeEventStart(String timing) {
    return '$timing 前';
  }

  @override
  String get notificationTimingUpdated => '通知时间已更新';

  @override
  String get aboutNotifications => '关于通知';

  @override
  String get notificationInfo =>
      '您将在每次预定的课程开始前收到通知。创建或更新课程时会自动安排通知，应用启动时会为所有现有课程安排通知。';

  @override
  String get rescheduleNotifications => '重新安排通知';

  @override
  String get rescheduleNotificationsDescription =>
      '手动为所有现有未来课程重新安排通知。如果您刚刚启用通知或想确保所有活动都已安排通知，这很有用。';

  @override
  String get rescheduleNow => '立即重新安排';

  @override
  String get rescheduling => '重新安排中...';

  @override
  String notificationsRescheduled(int count) {
    return '已为 $count 个未来课程重新安排通知';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return '重新安排通知时出错：$error';
  }

  @override
  String get permissionsRequired => '需要通知权限';

  @override
  String get permissionsRequiredDescription => '请授予通知权限以接收课程提醒。点击下面的按钮请求权限。';

  @override
  String get requestPermissions => '请求权限';

  @override
  String get permissionsGranted => '通知权限已授予！';

  @override
  String get permissionsDenied => '通知权限被拒绝。请在设置中启用。';

  @override
  String get timing0Min => '0 分钟';

  @override
  String get timing1Min => '1 分钟';

  @override
  String get timing5Mins => '5 分钟';

  @override
  String get timing30Mins => '30 分钟';

  @override
  String get timing1Hour => '1 小时';

  @override
  String get timing6Hours => '6 小时';

  @override
  String timingMinutes(int count) {
    return '$count 分钟';
  }

  @override
  String timingHours(int count) {
    return '$count 小时';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count 小时';
  }

  @override
  String get testNotifications => '测试通知';

  @override
  String get testNotificationsDescription => '在2秒后发送测试通知以验证通知功能是否正常工作。';

  @override
  String get sendTestNotification => '发送测试通知';

  @override
  String get testNotificationScheduled => '测试通知已安排！2秒后查看。';

  @override
  String get testNotificationTitle => '测试通知';

  @override
  String get testNotificationBody => '如果您看到这条消息，通知功能正常工作！';

  @override
  String get scheduledTestNotificationTitle => '已安排的测试通知';

  @override
  String get scheduledTestNotificationBody => '这是在2秒前安排的';

  @override
  String startsAt(String time) {
    return '开始时间：$time';
  }

  @override
  String get themeSettings => '主题设置';

  @override
  String get selectTheme => '选择主题';

  @override
  String get selectThemeDescription => '为应用选择颜色主题。主题将应用于整个应用程序。';

  @override
  String get themeChanged => '主题更改成功！';

  @override
  String get aboutTheme => '关于主题';

  @override
  String get themeInfo =>
      '更改主题将更新整个应用中的颜色，包括按钮、应用栏和其他UI元素。您的主题偏好将被保存，并在您重新启动应用时自动应用。';

  @override
  String get enableNotifications => '启用通知';

  @override
  String get enableNotificationsDescription => '开启或关闭通知。关闭后，不会为您的会话发送通知。';

  @override
  String get notificationsEnabled => '通知已启用';

  @override
  String get notificationsDisabled => '通知已禁用';

  @override
  String get help => '帮助';

  @override
  String get gettingStarted => '开始使用';

  @override
  String get gettingStartedDescription =>
      'Book Weeks帮助您管理每周日程和课程。使用顶部的日历在周之间导航，点击任意日期可查看或添加该日期的课程。';

  @override
  String get creatingSessions => '创建课程';

  @override
  String get creatingSessionsDescription =>
      '要创建课程，请点击任意日期的+按钮。您可以设置课程标题、时间、持续时间并添加学生。课程会自动保存并显示在您的日历上。';

  @override
  String get managingStudents => '管理学生';

  @override
  String get managingStudentsDescription =>
      '创建或编辑课程时，可以通过点击学生部分的+按钮来添加学生。您可以添加姓名、昵称、年龄和电话号码。学生可以在多个课程中重复使用。';

  @override
  String get usingTemplates => '使用模板';

  @override
  String get usingTemplatesDescription =>
      '模板允许您快速创建带有预配置学生的课程。从菜单（三个点）→ 管理模板创建模板。创建课程时，您可以选择模板以自动添加其学生。';

  @override
  String get notificationsHelp => '通知';

  @override
  String get notificationsHelpDescription =>
      '您可以在课程开始前接收通知。转到通知设置（铃铛图标）以启用通知、设置时间（提前多少分钟）并测试您的通知设置。当提示时，请确保授予通知权限。';

  @override
  String get exportImport => '导出和导入';

  @override
  String get exportImportDescription =>
      '您可以将数据（课程、学生、模板）导出到YAML文件以进行备份或传输。使用菜单（三个点）→ 导出数据。要导入，请使用同一菜单中的导入数据。这对于备份数据或将其移动到另一台设备很有用。';

  @override
  String get navigationTips => '导航提示';

  @override
  String get navigationTipsDescription =>
      '• 使用周历来在周之间导航\n• 点击日期标签以查看该日期的课程\n• 使用所有事件按钮（日历图标）在列表中查看所有课程\n• 通过顶部栏的图标访问设置：主题（调色板）、事件（日历）、通知（铃铛）和帮助（问号）';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => '週次預約';

  @override
  String get selectWeek => '選擇週次';

  @override
  String get mon => '週一';

  @override
  String get tue => '週二';

  @override
  String get wed => '週三';

  @override
  String get thu => '週四';

  @override
  String get fri => '週五';

  @override
  String get sat => '週六';

  @override
  String get sun => '週日';

  @override
  String get noSessionsScheduled => '沒有排定的課程';

  @override
  String get tapToAddSession => '點擊 + 按鈕新增課程';

  @override
  String student(int count) {
    return '學生';
  }

  @override
  String students(int count) {
    return '學生';
  }

  @override
  String get deleteSession => '刪除課程';

  @override
  String deleteSessionConfirm(String title) {
    return '確定要刪除「$title」嗎？';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '刪除';

  @override
  String get createSession => '建立課程';

  @override
  String get editSession => '編輯課程';

  @override
  String get title => '標題';

  @override
  String get titleRequired => '請輸入標題';

  @override
  String get startTime => '開始時間';

  @override
  String get endTime => '結束時間';

  @override
  String get endTimeAfterStart => '結束時間必須晚於開始時間';

  @override
  String get descriptionOptional => '描述（選填）';

  @override
  String get save => '儲存';

  @override
  String get add => '新增';

  @override
  String get edit => '編輯';

  @override
  String get allEvents => '所有活動';

  @override
  String get manageTemplates => '管理範本';

  @override
  String get exportData => '匯出資料';

  @override
  String get importData => '匯入資料';

  @override
  String get saveExportFile => '儲存匯出檔案';

  @override
  String exportSuccessful(String path) {
    return '匯出成功！\n已儲存至：$path';
  }

  @override
  String exportFailed(String error) {
    return '匯出失敗：$error';
  }

  @override
  String get importSuccessful => '匯入成功';

  @override
  String get importFailed => '匯入失敗';

  @override
  String get errorReadingFile => '讀取檔案時發生錯誤';

  @override
  String error(String error) {
    return '錯誤：$error';
  }

  @override
  String get ok => '確定';

  @override
  String get searchEvents => '搜尋活動...';

  @override
  String get noEventsScheduled => '沒有排定的活動';

  @override
  String get noEventsFound => '找不到活動';

  @override
  String get createEventsFromCalendar => '從日曆建立活動';

  @override
  String get studentsJoiningThisSession => '參加此課程的學生';

  @override
  String get addMember => '新增成員';

  @override
  String get noStudentsAddedYet => '尚未新增學生';

  @override
  String get tapToAddMember => '點擊 + 新增成員';

  @override
  String get allMembers => '所有成員';

  @override
  String get addToSession => '加入課程';

  @override
  String get removeFromSession => '從課程移除';

  @override
  String get name => '姓名';

  @override
  String get nameRequired => '請輸入姓名';

  @override
  String get nicknameOptional => '暱稱（選填）';

  @override
  String get ageOptional => '年齡（選填）';

  @override
  String get ageInvalid => '請輸入有效的年齡';

  @override
  String get phoneNumberOptional => '電話號碼（選填）';

  @override
  String get phoneNumberHint => '例如：+886 912 345 678';

  @override
  String get addMemberTitle => '新增成員';

  @override
  String get editMemberTitle => '編輯成員';

  @override
  String get member => '成員';

  @override
  String nameLabel(String name) {
    return '姓名：$name';
  }

  @override
  String ageLabel(int age) {
    return '年齡：$age';
  }

  @override
  String phoneLabel(String phone) {
    return '電話：$phone';
  }

  @override
  String get templateOptional => '範本（選填）';

  @override
  String get none => '無';

  @override
  String get saveAsTemplate => '儲存為範本';

  @override
  String get saveAsTemplateSubtitle => '將此課程作為未來課程的範本';

  @override
  String get templateName => '範本名稱';

  @override
  String get templateNameHelper => '用於識別此範本的名稱';

  @override
  String get templateNameRequired => '請輸入範本名稱';

  @override
  String get defaultSessionTitle => '預設課程標題';

  @override
  String get defaultSessionTitleHelper => '使用此範本建立課程時使用的標題';

  @override
  String get sessionTitleRequired => '請輸入課程標題';

  @override
  String get createTemplate => '建立範本';

  @override
  String get editTemplate => '編輯範本';

  @override
  String get create => '建立';

  @override
  String get templateNameDialogTitle => '範本名稱';

  @override
  String get templateNameDialogHelper => '為此範本命名以便識別';

  @override
  String get templateManagement => '範本管理';

  @override
  String get noTemplatesYet => '尚無範本';

  @override
  String get createSessionAndSaveAsTemplate => '建立課程並勾選「儲存為範本」';

  @override
  String get deleteTemplate => '刪除範本';

  @override
  String deleteTemplateConfirm(String title) {
    return '確定要刪除「$title」嗎？';
  }

  @override
  String session(String title) {
    return '課程：$title';
  }

  @override
  String get saveAsTemplateTooltip => '儲存為範本';

  @override
  String templateSavedSuccessfully(String name) {
    return '範本「$name」已成功儲存';
  }

  @override
  String get debug => '除錯';

  @override
  String get debugDateSimulation => '除錯日期模擬';

  @override
  String get setCustomDate => '設定自訂日期';

  @override
  String get clear => '清除';

  @override
  String now(String date) {
    return '現在：$date';
  }

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get tomorrow => '明天';

  @override
  String daysAgo(int count) {
    return '$count 天前';
  }

  @override
  String daysLater(int count) {
    return '$count 天後';
  }

  @override
  String get notificationSettings => '通知設定';

  @override
  String get notificationTiming => '通知時間';

  @override
  String get notificationTimingDescription => '選擇在每次課程開始前何時接收通知';

  @override
  String get atEventStart => '課程開始時';

  @override
  String beforeEventStart(String timing) {
    return '$timing 前';
  }

  @override
  String get notificationTimingUpdated => '通知時間已更新';

  @override
  String get aboutNotifications => '關於通知';

  @override
  String get notificationInfo =>
      '您將在每次預定的課程開始前收到通知。建立或更新課程時會自動安排通知，應用程式啟動時會為所有現有課程安排通知。';

  @override
  String get rescheduleNotifications => '重新安排通知';

  @override
  String get rescheduleNotificationsDescription =>
      '手動為所有現有未來課程重新安排通知。如果您剛剛啟用通知或想確保所有活動都已安排通知，這很有用。';

  @override
  String get rescheduleNow => '立即重新安排';

  @override
  String get rescheduling => '重新安排中...';

  @override
  String notificationsRescheduled(int count) {
    return '已為 $count 個未來課程重新安排通知';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return '重新安排通知時發生錯誤：$error';
  }

  @override
  String get permissionsRequired => '需要通知權限';

  @override
  String get permissionsRequiredDescription => '請授予通知權限以接收課程提醒。點擊下面的按鈕請求權限。';

  @override
  String get requestPermissions => '請求權限';

  @override
  String get permissionsGranted => '通知權限已授予！';

  @override
  String get permissionsDenied => '通知權限被拒絕。請在設定中啟用。';

  @override
  String get timing0Min => '0 分鐘';

  @override
  String get timing1Min => '1 分鐘';

  @override
  String get timing5Mins => '5 分鐘';

  @override
  String get timing30Mins => '30 分鐘';

  @override
  String get timing1Hour => '1 小時';

  @override
  String get timing6Hours => '6 小時';

  @override
  String timingMinutes(int count) {
    return '$count 分鐘';
  }

  @override
  String timingHours(int count) {
    return '$count 小時';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count 小時';
  }

  @override
  String get testNotifications => '測試通知';

  @override
  String get testNotificationsDescription => '在2秒後發送測試通知以驗證通知功能是否正常運作。';

  @override
  String get sendTestNotification => '發送測試通知';

  @override
  String get testNotificationScheduled => '測試通知已安排！2秒後查看。';

  @override
  String get testNotificationTitle => '測試通知';

  @override
  String get testNotificationBody => '如果您看到這條訊息，通知功能正常運作！';

  @override
  String get scheduledTestNotificationTitle => '已安排的測試通知';

  @override
  String get scheduledTestNotificationBody => '這是在2秒前安排的';

  @override
  String startsAt(String time) {
    return '開始時間：$time';
  }

  @override
  String get themeSettings => '主題設定';

  @override
  String get selectTheme => '選擇主題';

  @override
  String get selectThemeDescription => '為應用程式選擇顏色主題。主題將應用於整個應用程式。';

  @override
  String get themeChanged => '主題變更成功！';

  @override
  String get aboutTheme => '關於主題';

  @override
  String get themeInfo =>
      '更改主題將更新整個應用程式中的顏色，包括按鈕、應用程式列和其他UI元素。您的主題偏好將被儲存，並在您重新啟動應用程式時自動套用。';

  @override
  String get enableNotifications => '啟用通知';

  @override
  String get enableNotificationsDescription => '開啟或關閉通知。關閉後，不會為您的會話發送通知。';

  @override
  String get notificationsEnabled => '通知已啟用';

  @override
  String get notificationsDisabled => '通知已停用';

  @override
  String get help => '說明';

  @override
  String get gettingStarted => '開始使用';

  @override
  String get gettingStartedDescription =>
      'Book Weeks幫助您管理每週行程和課程。使用頂部的日曆在週之間導航，點擊任意日期可查看或新增該日期的課程。';

  @override
  String get creatingSessions => '建立課程';

  @override
  String get creatingSessionsDescription =>
      '要建立課程，請點擊任意日期的+按鈕。您可以設定課程標題、時間、持續時間並新增學生。課程會自動儲存並顯示在您的日曆上。';

  @override
  String get managingStudents => '管理學生';

  @override
  String get managingStudentsDescription =>
      '建立或編輯課程時，可以透過點擊學生區塊的+按鈕來新增學生。您可以新增姓名、暱稱、年齡和電話號碼。學生可以在多個課程中重複使用。';

  @override
  String get usingTemplates => '使用範本';

  @override
  String get usingTemplatesDescription =>
      '範本允許您快速建立帶有預設學生的課程。從選單（三個點）→ 管理範本來建立範本。建立課程時，您可以選擇範本以自動新增其學生。';

  @override
  String get notificationsHelp => '通知';

  @override
  String get notificationsHelpDescription =>
      '您可以在課程開始前接收通知。前往通知設定（鈴鐺圖示）以啟用通知、設定時間（提前多少分鐘）並測試您的通知設定。當提示時，請確保授予通知權限。';

  @override
  String get exportImport => '匯出和匯入';

  @override
  String get exportImportDescription =>
      '您可以將資料（課程、學生、範本）匯出到YAML檔案以進行備份或傳輸。使用選單（三個點）→ 匯出資料。要匯入，請使用同一選單中的匯入資料。這對於備份資料或將其移動到另一台裝置很有用。';

  @override
  String get navigationTips => '導航提示';

  @override
  String get navigationTipsDescription =>
      '• 使用週曆來在週之間導航\n• 點擊日期標籤以查看該日期的課程\n• 使用所有事件按鈕（日曆圖示）在清單中查看所有課程\n• 透過頂部列的圖示存取設定：主題（調色盤）、事件（日曆）、通知（鈴鐺）和說明（問號）';
}
