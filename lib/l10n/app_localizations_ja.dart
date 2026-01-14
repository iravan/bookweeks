// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => '週次予約';

  @override
  String get selectWeek => '週を選択';

  @override
  String get mon => '月';

  @override
  String get tue => '火';

  @override
  String get wed => '水';

  @override
  String get thu => '木';

  @override
  String get fri => '金';

  @override
  String get sat => '土';

  @override
  String get sun => '日';

  @override
  String get noSessionsScheduled => '予定されたセッションがありません';

  @override
  String get tapToAddSession => '+ ボタンをタップしてセッションを追加';

  @override
  String student(int count) {
    return '学生';
  }

  @override
  String students(int count) {
    return '学生';
  }

  @override
  String get deleteSession => 'セッションを削除';

  @override
  String deleteSessionConfirm(String title) {
    return '「$title」を削除してもよろしいですか？';
  }

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get createSession => 'セッションを作成';

  @override
  String get editSession => 'セッションを編集';

  @override
  String get title => 'タイトル';

  @override
  String get titleRequired => 'タイトルを入力してください';

  @override
  String get startTime => '開始時間';

  @override
  String get endTime => '終了時間';

  @override
  String get endTimeAfterStart => '終了時間は開始時間より後である必要があります';

  @override
  String get descriptionOptional => '説明（任意）';

  @override
  String get save => '保存';

  @override
  String get add => '追加';

  @override
  String get edit => '編集';

  @override
  String get allEvents => 'すべてのイベント';

  @override
  String get manageTemplates => 'テンプレートを管理';

  @override
  String get exportData => 'データをエクスポート';

  @override
  String get importData => 'データをインポート';

  @override
  String get saveExportFile => 'エクスポートファイルを保存';

  @override
  String exportSuccessful(String path) {
    return 'エクスポート成功！\n保存先：$path';
  }

  @override
  String exportFailed(String error) {
    return 'エクスポート失敗：$error';
  }

  @override
  String get importSuccessful => 'インポート成功';

  @override
  String get importFailed => 'インポート失敗';

  @override
  String get errorReadingFile => 'ファイルの読み取りエラー';

  @override
  String error(String error) {
    return 'エラー：$error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'イベントを検索...';

  @override
  String get noEventsScheduled => '予定されたイベントがありません';

  @override
  String get noEventsFound => 'イベントが見つかりません';

  @override
  String get createEventsFromCalendar => 'カレンダーからイベントを作成';

  @override
  String get studentsJoiningThisSession => 'このセッションに参加する学生';

  @override
  String get addMember => 'メンバーを追加';

  @override
  String get noStudentsAddedYet => 'まだ学生が追加されていません';

  @override
  String get tapToAddMember => '+ をタップしてメンバーを追加';

  @override
  String get allMembers => 'すべてのメンバー';

  @override
  String get addToSession => 'セッションに追加';

  @override
  String get removeFromSession => 'セッションから削除';

  @override
  String get name => '名前';

  @override
  String get nameRequired => '名前を入力してください';

  @override
  String get nicknameOptional => 'ニックネーム（任意）';

  @override
  String get ageOptional => '年齢（任意）';

  @override
  String get ageInvalid => '有効な年齢を入力してください';

  @override
  String get phoneNumberOptional => '電話番号（任意）';

  @override
  String get phoneNumberHint => '例：+81 90-1234-5678';

  @override
  String get addMemberTitle => 'メンバーを追加';

  @override
  String get editMemberTitle => 'メンバーを編集';

  @override
  String get member => 'メンバー';

  @override
  String nameLabel(String name) {
    return '名前：$name';
  }

  @override
  String ageLabel(int age) {
    return '年齢：$age';
  }

  @override
  String phoneLabel(String phone) {
    return '電話：$phone';
  }

  @override
  String get templateOptional => 'テンプレート（任意）';

  @override
  String get none => 'なし';

  @override
  String get saveAsTemplate => 'テンプレートとして保存';

  @override
  String get saveAsTemplateSubtitle => 'このセッションを今後のセッションのテンプレートとして使用';

  @override
  String get templateName => 'テンプレート名';

  @override
  String get templateNameHelper => 'このテンプレートを識別するための名前';

  @override
  String get templateNameRequired => 'テンプレート名を入力してください';

  @override
  String get defaultSessionTitle => 'デフォルトセッションタイトル';

  @override
  String get defaultSessionTitleHelper => 'このテンプレートからセッションを作成する際に使用されるタイトル';

  @override
  String get sessionTitleRequired => 'セッションタイトルを入力してください';

  @override
  String get createTemplate => 'テンプレートを作成';

  @override
  String get editTemplate => 'テンプレートを編集';

  @override
  String get create => '作成';

  @override
  String get templateNameDialogTitle => 'テンプレート名';

  @override
  String get templateNameDialogHelper => 'このテンプレートに名前を付けて識別しやすくします';

  @override
  String get templateManagement => 'テンプレート管理';

  @override
  String get noTemplatesYet => 'まだテンプレートがありません';

  @override
  String get createSessionAndSaveAsTemplate =>
      'セッションを作成し、「テンプレートとして保存」にチェックを入れます';

  @override
  String get deleteTemplate => 'テンプレートを削除';

  @override
  String deleteTemplateConfirm(String title) {
    return '「$title」を削除してもよろしいですか？';
  }

  @override
  String session(String title) {
    return 'セッション：$title';
  }

  @override
  String get saveAsTemplateTooltip => 'テンプレートとして保存';

  @override
  String templateSavedSuccessfully(String name) {
    return 'テンプレート「$name」が正常に保存されました';
  }

  @override
  String get debug => 'デバッグ';

  @override
  String get debugDateSimulation => 'デバッグ日付シミュレーション';

  @override
  String get setCustomDate => 'カスタム日付を設定';

  @override
  String get clear => 'クリア';

  @override
  String now(String date) {
    return '現在：$date';
  }

  @override
  String get today => '今日';

  @override
  String get yesterday => '昨日';

  @override
  String get tomorrow => '明日';

  @override
  String daysAgo(int count) {
    return '$count 日前';
  }

  @override
  String daysLater(int count) {
    return '$count 日後';
  }

  @override
  String get notificationSettings => '通知設定';

  @override
  String get notificationTiming => '通知タイミング';

  @override
  String get notificationTimingDescription => '各セッション開始前に通知を受信するタイミングを選択';

  @override
  String get atEventStart => 'イベント開始時';

  @override
  String beforeEventStart(String timing) {
    return 'イベント開始の $timing 前';
  }

  @override
  String get notificationTimingUpdated => '通知タイミングを更新しました';

  @override
  String get aboutNotifications => '通知について';

  @override
  String get notificationInfo =>
      '予定された各セッション開始前に通知を受信します。セッションの作成または更新時に通知が自動的にスケジュールされ、アプリ起動時に既存のすべてのセッションがスケジュールされます。';

  @override
  String get rescheduleNotifications => '通知の再スケジュール';

  @override
  String get rescheduleNotificationsDescription =>
      '既存のすべての将来のセッションの通知を手動で再スケジュールします。通知を有効にしたばかりの場合や、すべてのイベントに通知がスケジュールされていることを確認したい場合に便利です。';

  @override
  String get rescheduleNow => '今すぐ再スケジュール';

  @override
  String get rescheduling => '再スケジュール中...';

  @override
  String notificationsRescheduled(int count) {
    return '$count 件の将来のセッションの通知を再スケジュールしました';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return '通知の再スケジュール中にエラーが発生しました：$error';
  }

  @override
  String get permissionsRequired => '通知権限が必要です';

  @override
  String get permissionsRequiredDescription =>
      'セッションのリマインダーを受信するには、通知権限を付与してください。下のボタンをタップして権限をリクエストします。';

  @override
  String get requestPermissions => '権限をリクエスト';

  @override
  String get permissionsGranted => '通知権限が付与されました！';

  @override
  String get permissionsDenied => '通知権限が拒否されました。設定で有効にしてください。';

  @override
  String get timing0Min => '0分';

  @override
  String get timing1Min => '1分';

  @override
  String get timing5Mins => '5分';

  @override
  String get timing30Mins => '30分';

  @override
  String get timing1Hour => '1時間';

  @override
  String get timing6Hours => '6時間';

  @override
  String timingMinutes(int count) {
    return '$count分';
  }

  @override
  String timingHours(int count) {
    return '$count時間';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count時間';
  }

  @override
  String get testNotifications => 'テスト通知';

  @override
  String get testNotificationsDescription =>
      '2秒後にテスト通知を送信して、通知が正常に動作しているか確認します。';

  @override
  String get sendTestNotification => 'テスト通知を送信';

  @override
  String get testNotificationScheduled => 'テスト通知がスケジュールされました！2秒後に確認してください。';

  @override
  String get testNotificationTitle => 'テスト通知';

  @override
  String get testNotificationBody => 'これが表示されれば、通知は正常に動作しています！';

  @override
  String get scheduledTestNotificationTitle => 'スケジュールされたテスト通知';

  @override
  String get scheduledTestNotificationBody => 'これは2秒前にスケジュールされました';

  @override
  String startsAt(String time) {
    return '$timeに開始';
  }
}
