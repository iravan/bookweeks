// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '주간 예약';

  @override
  String get earlierWeeks => '이전 주';

  @override
  String get older => '더 이전';

  @override
  String get selectWeek => '주 선택';

  @override
  String get mon => '월';

  @override
  String get tue => '화';

  @override
  String get wed => '수';

  @override
  String get thu => '목';

  @override
  String get fri => '금';

  @override
  String get sat => '토';

  @override
  String get sun => '일';

  @override
  String get noSessionsScheduled => '예정된 세션이 없습니다';

  @override
  String get tapToAddSession => '+ 버튼을 탭하여 세션 추가';

  @override
  String student(int count) {
    return '학생';
  }

  @override
  String students(int count) {
    return '학생';
  }

  @override
  String get deleteSession => '세션 삭제';

  @override
  String deleteSessionConfirm(String title) {
    return '「$title」을(를) 삭제하시겠습니까?';
  }

  @override
  String get cancel => '취소';

  @override
  String get delete => '삭제';

  @override
  String get createSession => '세션 만들기';

  @override
  String get editSession => '세션 편집';

  @override
  String get title => '제목';

  @override
  String get titleRequired => '제목을 입력하세요';

  @override
  String get startTime => '시작 시간';

  @override
  String get endTime => '종료 시간';

  @override
  String get endTimeAfterStart => '종료 시간은 시작 시간보다 늦어야 합니다';

  @override
  String get descriptionOptional => '설명 (선택사항)';

  @override
  String get save => '저장';

  @override
  String get add => '추가';

  @override
  String get edit => '편집';

  @override
  String get allEvents => '모든 이벤트';

  @override
  String get manageTemplates => '템플릿 관리';

  @override
  String get exportData => '데이터 내보내기';

  @override
  String get importData => '데이터 가져오기';

  @override
  String get saveExportFile => '내보내기 파일 저장';

  @override
  String exportSuccessful(String path) {
    return '내보내기 성공！\n저장 위치：$path';
  }

  @override
  String exportFailed(String error) {
    return '내보내기 실패：$error';
  }

  @override
  String get importSuccessful => '가져오기 성공';

  @override
  String get importFailed => '가져오기 실패';

  @override
  String get errorReadingFile => '파일 읽기 오류';

  @override
  String error(String error) {
    return '오류：$error';
  }

  @override
  String get ok => '확인';

  @override
  String get searchEvents => '이벤트 검색...';

  @override
  String get noEventsScheduled => '예정된 이벤트가 없습니다';

  @override
  String get noEventsFound => '이벤트를 찾을 수 없습니다';

  @override
  String get createEventsFromCalendar => '캘린더에서 이벤트 만들기';

  @override
  String get studentsJoiningThisSession => '이 세션에 참여하는 학생';

  @override
  String get addMember => '멤버 추가';

  @override
  String get noStudentsAddedYet => '아직 학생이 추가되지 않았습니다';

  @override
  String get tapToAddMember => '+를 탭하여 멤버 추가';

  @override
  String get allMembers => '모든 멤버';

  @override
  String get addToSession => '세션에 추가';

  @override
  String get removeFromSession => '세션에서 제거';

  @override
  String get name => '이름';

  @override
  String get nameRequired => '이름을 입력하세요';

  @override
  String get nicknameOptional => '별명 (선택사항)';

  @override
  String get ageOptional => '나이 (선택사항)';

  @override
  String get ageInvalid => '유효한 나이를 입력하세요';

  @override
  String get phoneNumberOptional => '전화번호 (선택사항)';

  @override
  String get phoneNumberHint => '예：+82 10-1234-5678';

  @override
  String get addMemberTitle => '멤버 추가';

  @override
  String get editMemberTitle => '멤버 편집';

  @override
  String get member => '멤버';

  @override
  String nameLabel(String name) {
    return '이름：$name';
  }

  @override
  String ageLabel(int age) {
    return '나이：$age';
  }

  @override
  String phoneLabel(String phone) {
    return '전화：$phone';
  }

  @override
  String get templateOptional => '템플릿 (선택사항)';

  @override
  String get none => '없음';

  @override
  String get saveAsTemplate => '템플릿으로 저장';

  @override
  String get saveAsTemplateSubtitle => '이 세션을 향후 세션의 템플릿으로 사용';

  @override
  String get templateName => '템플릿 이름';

  @override
  String get templateNameHelper => '이 템플릿을 식별하기 위한 이름';

  @override
  String get templateNameRequired => '템플릿 이름을 입력하세요';

  @override
  String get defaultSessionTitle => '기본 세션 제목';

  @override
  String get defaultSessionTitleHelper => '이 템플릿에서 세션을 만들 때 사용되는 제목';

  @override
  String get sessionTitleRequired => '세션 제목을 입력하세요';

  @override
  String get createTemplate => '템플릿 만들기';

  @override
  String get editTemplate => '템플릿 편집';

  @override
  String get create => '만들기';

  @override
  String get templateNameDialogTitle => '템플릿 이름';

  @override
  String get templateNameDialogHelper => '이 템플릿에 이름을 지정하여 쉽게 식별할 수 있도록 합니다';

  @override
  String get templateManagement => '템플릿 관리';

  @override
  String get noTemplatesYet => '아직 템플릿이 없습니다';

  @override
  String get createSessionAndSaveAsTemplate => '세션을 만들고 「템플릿으로 저장」을 선택하세요';

  @override
  String get deleteTemplate => '템플릿 삭제';

  @override
  String deleteTemplateConfirm(String title) {
    return '「$title」을(를) 삭제하시겠습니까?';
  }

  @override
  String session(String title) {
    return '세션：$title';
  }

  @override
  String get saveAsTemplateTooltip => '템플릿으로 저장';

  @override
  String templateSavedSuccessfully(String name) {
    return '템플릿 「$name」이(가) 성공적으로 저장되었습니다';
  }

  @override
  String get debug => '디버그';

  @override
  String get debugDateSimulation => '디버그 날짜 시뮬레이션';

  @override
  String get setCustomDate => '사용자 지정 날짜 설정';

  @override
  String get clear => '지우기';

  @override
  String now(String date) {
    return '현재：$date';
  }

  @override
  String get today => '오늘';

  @override
  String get yesterday => '어제';

  @override
  String get tomorrow => '내일';

  @override
  String daysAgo(int count) {
    return '$count일 전';
  }

  @override
  String daysLater(int count) {
    return '$count일 후';
  }

  @override
  String get notificationSettings => '알림 설정';

  @override
  String get notificationTiming => '알림 시간';

  @override
  String get notificationTimingDescription => '각 세션이 시작되기 전 알림을 받을 시점을 선택하세요';

  @override
  String get atEventStart => '이벤트 시작 시';

  @override
  String beforeEventStart(String timing) {
    return '이벤트 시작 $timing 전';
  }

  @override
  String get notificationTimingUpdated => '알림 시간이 업데이트되었습니다';

  @override
  String get aboutNotifications => '알림 정보';

  @override
  String get notificationInfo =>
      '예정된 각 세션 시작 전에 알림을 받게 됩니다. 세션을 생성하거나 업데이트할 때 알림이 자동으로 예약되며, 앱 시작 시 모든 기존 세션이 예약됩니다.';

  @override
  String get rescheduleNotifications => '알림 재예약';

  @override
  String get rescheduleNotificationsDescription =>
      '모든 기존 향후 세션의 알림을 수동으로 재예약합니다. 알림을 방금 활성화했거나 모든 이벤트에 알림이 예약되어 있는지 확인하려는 경우 유용합니다.';

  @override
  String get rescheduleNow => '지금 재예약';

  @override
  String get rescheduling => '재예약 중...';

  @override
  String notificationsRescheduled(int count) {
    return '$count개의 향후 세션에 대한 알림을 재예약했습니다';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return '알림 재예약 중 오류 발생: $error';
  }

  @override
  String get permissionsRequired => '알림 권한 필요';

  @override
  String get permissionsRequiredDescription =>
      '세션 알림을 받으려면 알림 권한을 부여하세요. 아래 버튼을 탭하여 권한을 요청하세요.';

  @override
  String get requestPermissions => '권한 요청';

  @override
  String get permissionsGranted => '알림 권한이 부여되었습니다!';

  @override
  String get permissionsDenied => '알림 권한이 거부되었습니다. 설정에서 활성화하세요.';

  @override
  String get timing0Min => '0분';

  @override
  String get timing1Min => '1분';

  @override
  String get timing5Mins => '5분';

  @override
  String get timing30Mins => '30분';

  @override
  String get timing1Hour => '1시간';

  @override
  String get timing6Hours => '6시간';

  @override
  String timingMinutes(int count) {
    return '$count분';
  }

  @override
  String timingHours(int count) {
    return '$count시간';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count시간';
  }

  @override
  String get testNotifications => '테스트 알림';

  @override
  String get testNotificationsDescription =>
      '2초 후 테스트 알림을 보내 알림이 제대로 작동하는지 확인합니다.';

  @override
  String get sendTestNotification => '테스트 알림 보내기';

  @override
  String get testNotificationScheduled => '테스트 알림이 예약되었습니다! 2초 후에 확인하세요.';

  @override
  String get testNotificationTitle => '테스트 알림';

  @override
  String get testNotificationBody => '이 메시지가 보이면 알림이 정상적으로 작동하고 있습니다!';

  @override
  String get scheduledTestNotificationTitle => '예약된 테스트 알림';

  @override
  String get scheduledTestNotificationBody => '이것은 2초 전에 예약되었습니다';

  @override
  String startsAt(String time) {
    return '$time에 시작';
  }

  @override
  String get themeSettings => '테마 설정';

  @override
  String get selectTheme => '테마 선택';

  @override
  String get selectThemeDescription => '앱의 색상 테마를 선택하세요. 테마는 전체 앱에 적용됩니다.';

  @override
  String get themeChanged => '테마가 성공적으로 변경되었습니다！';

  @override
  String get aboutTheme => '테마 정보';

  @override
  String get themeInfo =>
      '테마를 변경하면 버튼, 앱 바 및 기타 UI 요소를 포함하여 앱 전체의 색상이 업데이트됩니다. 테마 설정은 저장되며 앱을 다시 시작하면 자동으로 적용됩니다.';

  @override
  String get enableNotifications => '알림 사용';

  @override
  String get enableNotificationsDescription =>
      '알림을 켜거나 끕니다. 비활성화되면 세션에 대한 알림이 전송되지 않습니다.';

  @override
  String get notificationsEnabled => '알림이 활성화되었습니다';

  @override
  String get notificationsDisabled => '알림이 비활성화되었습니다';

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
