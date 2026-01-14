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
}
