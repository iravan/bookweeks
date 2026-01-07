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
}
