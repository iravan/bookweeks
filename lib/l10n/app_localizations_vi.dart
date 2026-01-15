// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Đặt Tuần';

  @override
  String get selectWeek => 'Chọn Tuần';

  @override
  String get mon => 'T2';

  @override
  String get tue => 'T3';

  @override
  String get wed => 'T4';

  @override
  String get thu => 'T5';

  @override
  String get fri => 'T6';

  @override
  String get sat => 'T7';

  @override
  String get sun => 'CN';

  @override
  String get noSessionsScheduled => 'Không có phiên nào được lên lịch';

  @override
  String get tapToAddSession => 'Nhấn nút + để thêm phiên';

  @override
  String student(int count) {
    return 'học sinh';
  }

  @override
  String students(int count) {
    return 'học sinh';
  }

  @override
  String get deleteSession => 'Xóa Phiên';

  @override
  String deleteSessionConfirm(String title) {
    return 'Bạn có chắc chắn muốn xóa \"$title\"?';
  }

  @override
  String get cancel => 'Hủy';

  @override
  String get delete => 'Xóa';

  @override
  String get createSession => 'Tạo Phiên';

  @override
  String get editSession => 'Chỉnh Sửa Phiên';

  @override
  String get title => 'Tiêu đề';

  @override
  String get titleRequired => 'Vui lòng nhập tiêu đề';

  @override
  String get startTime => 'Thời Gian Bắt Đầu';

  @override
  String get endTime => 'Thời Gian Kết Thúc';

  @override
  String get endTimeAfterStart =>
      'Thời gian kết thúc phải sau thời gian bắt đầu';

  @override
  String get descriptionOptional => 'Mô tả (tùy chọn)';

  @override
  String get save => 'Lưu';

  @override
  String get add => 'Thêm';

  @override
  String get edit => 'Chỉnh Sửa';

  @override
  String get allEvents => 'Tất Cả Sự Kiện';

  @override
  String get manageTemplates => 'Quản Lý Mẫu';

  @override
  String get exportData => 'Xuất Dữ Liệu';

  @override
  String get importData => 'Nhập Dữ Liệu';

  @override
  String get saveExportFile => 'Lưu Tệp Xuất';

  @override
  String exportSuccessful(String path) {
    return 'Xuất thành công!\nĐã lưu vào: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Xuất thất bại: $error';
  }

  @override
  String get importSuccessful => 'Nhập Thành Công';

  @override
  String get importFailed => 'Nhập Thất Bại';

  @override
  String get errorReadingFile => 'Lỗi đọc tệp';

  @override
  String error(String error) {
    return 'Lỗi: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Tìm kiếm sự kiện...';

  @override
  String get noEventsScheduled => 'Không có sự kiện nào được lên lịch';

  @override
  String get noEventsFound => 'Không tìm thấy sự kiện';

  @override
  String get createEventsFromCalendar => 'Tạo sự kiện từ lịch';

  @override
  String get studentsJoiningThisSession => 'Học Sinh Tham Gia Phiên Này';

  @override
  String get addMember => 'Thêm Thành Viên';

  @override
  String get noStudentsAddedYet => 'Chưa có học sinh nào được thêm';

  @override
  String get tapToAddMember => 'Nhấn + để thêm thành viên';

  @override
  String get allMembers => 'Tất Cả Thành Viên';

  @override
  String get addToSession => 'Thêm vào phiên';

  @override
  String get removeFromSession => 'Xóa khỏi phiên';

  @override
  String get name => 'Tên';

  @override
  String get nameRequired => 'Vui lòng nhập tên';

  @override
  String get nicknameOptional => 'Biệt danh (tùy chọn)';

  @override
  String get ageOptional => 'Tuổi (tùy chọn)';

  @override
  String get ageInvalid => 'Vui lòng nhập tuổi hợp lệ';

  @override
  String get phoneNumberOptional => 'Số Điện Thoại (tùy chọn)';

  @override
  String get phoneNumberHint => 'vd: +84 123 456 789';

  @override
  String get addMemberTitle => 'Thêm Thành Viên';

  @override
  String get editMemberTitle => 'Chỉnh Sửa Thành Viên';

  @override
  String get member => 'Thành Viên';

  @override
  String nameLabel(String name) {
    return 'Tên: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Tuổi: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Điện thoại: $phone';
  }

  @override
  String get templateOptional => 'Mẫu (tùy chọn)';

  @override
  String get none => 'Không';

  @override
  String get saveAsTemplate => 'Lưu làm mẫu';

  @override
  String get saveAsTemplateSubtitle =>
      'Sử dụng phiên này làm mẫu cho các phiên sau';

  @override
  String get templateName => 'Tên Mẫu';

  @override
  String get templateNameHelper => 'Tên để nhận dạng mẫu này';

  @override
  String get templateNameRequired => 'Vui lòng nhập tên mẫu';

  @override
  String get defaultSessionTitle => 'Tiêu Đề Phiên Mặc Định';

  @override
  String get defaultSessionTitleHelper =>
      'Tiêu đề được sử dụng khi tạo phiên từ mẫu này';

  @override
  String get sessionTitleRequired => 'Vui lòng nhập tiêu đề phiên';

  @override
  String get createTemplate => 'Tạo Mẫu';

  @override
  String get editTemplate => 'Chỉnh Sửa Mẫu';

  @override
  String get create => 'Tạo';

  @override
  String get templateNameDialogTitle => 'Tên Mẫu';

  @override
  String get templateNameDialogHelper => 'Đặt tên cho mẫu này để dễ nhận dạng';

  @override
  String get templateManagement => 'Quản Lý Mẫu';

  @override
  String get noTemplatesYet => 'Chưa có mẫu nào';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Tạo một phiên và chọn \"Lưu làm mẫu\"';

  @override
  String get deleteTemplate => 'Xóa Mẫu';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Bạn có chắc chắn muốn xóa \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Phiên: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Lưu làm Mẫu';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Mẫu \"$name\" đã được lưu thành công';
  }

  @override
  String get debug => 'GỠ LỖI';

  @override
  String get debugDateSimulation => 'Mô Phỏng Ngày Gỡ Lỗi';

  @override
  String get setCustomDate => 'Đặt Ngày Tùy Chỉnh';

  @override
  String get clear => 'Xóa';

  @override
  String now(String date) {
    return 'Bây giờ: $date';
  }

  @override
  String get today => 'Hôm nay';

  @override
  String get yesterday => 'Hôm qua';

  @override
  String get tomorrow => 'Ngày mai';

  @override
  String daysAgo(int count) {
    return '$count ngày trước';
  }

  @override
  String daysLater(int count) {
    return '$count ngày sau';
  }

  @override
  String get notificationSettings => 'Cài đặt thông báo';

  @override
  String get notificationTiming => 'Thời gian thông báo';

  @override
  String get notificationTimingDescription =>
      'Chọn khi nào nhận thông báo trước khi mỗi phiên bắt đầu';

  @override
  String get atEventStart => 'Khi sự kiện bắt đầu';

  @override
  String beforeEventStart(String timing) {
    return '$timing trước khi sự kiện bắt đầu';
  }

  @override
  String get notificationTimingUpdated => 'Thời gian thông báo đã cập nhật';

  @override
  String get aboutNotifications => 'Về thông báo';

  @override
  String get notificationInfo =>
      'Bạn sẽ nhận thông báo trước khi mỗi phiên đã lên lịch bắt đầu. Thông báo được lên lịch tự động khi bạn tạo hoặc cập nhật phiên, và tất cả các phiên hiện có được lên lịch khi ứng dụng khởi động.';

  @override
  String get rescheduleNotifications => 'Lên lịch lại thông báo';

  @override
  String get rescheduleNotificationsDescription =>
      'Lên lịch lại thủ công các thông báo cho tất cả các phiên tương lai hiện có. Hữu ích nếu bạn vừa bật thông báo hoặc muốn đảm bảo tất cả các sự kiện đều có thông báo đã lên lịch.';

  @override
  String get rescheduleNow => 'Lên lịch lại ngay';

  @override
  String get rescheduling => 'Đang lên lịch lại...';

  @override
  String notificationsRescheduled(int count) {
    return 'Thông báo đã được lên lịch lại cho $count phiên tương lai';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Lỗi khi lên lịch lại thông báo: $error';
  }

  @override
  String get permissionsRequired => 'Cần quyền thông báo';

  @override
  String get permissionsRequiredDescription =>
      'Vui lòng cấp quyền thông báo để nhận nhắc nhở cho các phiên của bạn. Nhấn nút bên dưới để yêu cầu quyền.';

  @override
  String get requestPermissions => 'Yêu cầu quyền';

  @override
  String get permissionsGranted => 'Đã cấp quyền thông báo!';

  @override
  String get permissionsDenied =>
      'Quyền thông báo đã bị từ chối. Vui lòng bật chúng trong Cài đặt.';

  @override
  String get timing0Min => '0 phút';

  @override
  String get timing1Min => '1 phút';

  @override
  String get timing5Mins => '5 phút';

  @override
  String get timing30Mins => '30 phút';

  @override
  String get timing1Hour => '1 giờ';

  @override
  String get timing6Hours => '6 giờ';

  @override
  String timingMinutes(int count) {
    return '$count phút';
  }

  @override
  String timingHours(int count) {
    return '$count giờ';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count giờ';
  }

  @override
  String get testNotifications => 'Thông báo thử nghiệm';

  @override
  String get testNotificationsDescription =>
      'Gửi thông báo thử nghiệm sau 2 giây để xác minh thông báo có hoạt động không.';

  @override
  String get sendTestNotification => 'Gửi thông báo thử nghiệm';

  @override
  String get testNotificationScheduled =>
      'Thông báo thử nghiệm đã được lên lịch! Kiểm tra sau 2 giây.';

  @override
  String get testNotificationTitle => 'Thông báo thử nghiệm';

  @override
  String get testNotificationBody =>
      'Nếu bạn thấy điều này, thông báo đang hoạt động!';

  @override
  String get scheduledTestNotificationTitle =>
      'Thông báo thử nghiệm đã lên lịch';

  @override
  String get scheduledTestNotificationBody =>
      'Điều này đã được lên lịch cách đây 2 giây';

  @override
  String startsAt(String time) {
    return 'Bắt đầu lúc $time';
  }

  @override
  String get themeSettings => 'Cài đặt giao diện';

  @override
  String get selectTheme => 'Chọn giao diện';

  @override
  String get selectThemeDescription =>
      'Chọn một chủ đề màu cho ứng dụng. Chủ đề sẽ được áp dụng cho toàn bộ ứng dụng.';

  @override
  String get themeChanged => 'Đã thay đổi giao diện thành công!';

  @override
  String get aboutTheme => 'Về giao diện';

  @override
  String get themeInfo =>
      'Thay đổi giao diện sẽ cập nhật màu sắc trong toàn bộ ứng dụng, bao gồm nút, thanh ứng dụng và các phần tử giao diện khác. Tùy chọn giao diện của bạn sẽ được lưu và tự động áp dụng khi bạn khởi động lại ứng dụng.';

  @override
  String get enableNotifications => 'Bật thông báo';

  @override
  String get enableNotificationsDescription =>
      'Bật hoặc tắt thông báo. Khi tắt, sẽ không gửi thông báo cho các phiên của bạn.';

  @override
  String get notificationsEnabled => 'Đã bật thông báo';

  @override
  String get notificationsDisabled => 'Đã tắt thông báo';
}
