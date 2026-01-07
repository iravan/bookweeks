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
}
