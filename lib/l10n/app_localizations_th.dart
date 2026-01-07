// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'จองสัปดาห์';

  @override
  String get selectWeek => 'เลือกสัปดาห์';

  @override
  String get mon => 'จันทร์';

  @override
  String get tue => 'อังคาร';

  @override
  String get wed => 'พุธ';

  @override
  String get thu => 'พฤหัสบดี';

  @override
  String get fri => 'ศุกร์';

  @override
  String get sat => 'เสาร์';

  @override
  String get sun => 'อาทิตย์';

  @override
  String get noSessionsScheduled => 'ไม่มีเซสชันที่กำหนดไว้';

  @override
  String get tapToAddSession => 'แตะปุ่ม + เพื่อเพิ่มเซสชัน';

  @override
  String student(int count) {
    return 'นักเรียน';
  }

  @override
  String students(int count) {
    return 'นักเรียน';
  }

  @override
  String get deleteSession => 'ลบเซสชัน';

  @override
  String deleteSessionConfirm(String title) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$title\"?';
  }

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get delete => 'ลบ';

  @override
  String get createSession => 'สร้างเซสชัน';

  @override
  String get editSession => 'แก้ไขเซสชัน';

  @override
  String get title => 'หัวข้อ';

  @override
  String get titleRequired => 'กรุณากรอกหัวข้อ';

  @override
  String get startTime => 'เวลาเริ่มต้น';

  @override
  String get endTime => 'เวลาสิ้นสุด';

  @override
  String get endTimeAfterStart => 'เวลาสิ้นสุดต้องอยู่หลังเวลาเริ่มต้น';

  @override
  String get descriptionOptional => 'คำอธิบาย (ไม่บังคับ)';

  @override
  String get save => 'บันทึก';

  @override
  String get add => 'เพิ่ม';

  @override
  String get edit => 'แก้ไข';

  @override
  String get allEvents => 'กิจกรรมทั้งหมด';

  @override
  String get manageTemplates => 'จัดการเทมเพลต';

  @override
  String get exportData => 'ส่งออกข้อมูล';

  @override
  String get importData => 'นำเข้าข้อมูล';

  @override
  String get saveExportFile => 'บันทึกไฟล์ส่งออก';

  @override
  String exportSuccessful(String path) {
    return 'ส่งออกสำเร็จ!\nบันทึกไว้ที่: $path';
  }

  @override
  String exportFailed(String error) {
    return 'ส่งออกล้มเหลว: $error';
  }

  @override
  String get importSuccessful => 'นำเข้าสำเร็จ';

  @override
  String get importFailed => 'นำเข้าล้มเหลว';

  @override
  String get errorReadingFile => 'เกิดข้อผิดพลาดในการอ่านไฟล์';

  @override
  String error(String error) {
    return 'ข้อผิดพลาด: $error';
  }

  @override
  String get ok => 'ตกลง';

  @override
  String get searchEvents => 'ค้นหากิจกรรม...';

  @override
  String get noEventsScheduled => 'ไม่มีกิจกรรมที่กำหนดไว้';

  @override
  String get noEventsFound => 'ไม่พบกิจกรรม';

  @override
  String get createEventsFromCalendar => 'สร้างกิจกรรมจากปฏิทิน';

  @override
  String get studentsJoiningThisSession => 'นักเรียนที่เข้าร่วมเซสชันนี้';

  @override
  String get addMember => 'เพิ่มสมาชิก';

  @override
  String get noStudentsAddedYet => 'ยังไม่ได้เพิ่มนักเรียน';

  @override
  String get tapToAddMember => 'แตะ + เพื่อเพิ่มสมาชิก';

  @override
  String get allMembers => 'สมาชิกทั้งหมด';

  @override
  String get addToSession => 'เพิ่มในเซสชัน';

  @override
  String get removeFromSession => 'ลบออกจากเซสชัน';

  @override
  String get name => 'ชื่อ';

  @override
  String get nameRequired => 'กรุณากรอกชื่อ';

  @override
  String get nicknameOptional => 'ชื่อเล่น (ไม่บังคับ)';

  @override
  String get ageOptional => 'อายุ (ไม่บังคับ)';

  @override
  String get ageInvalid => 'กรุณากรอกอายุที่ถูกต้อง';

  @override
  String get phoneNumberOptional => 'หมายเลขโทรศัพท์ (ไม่บังคับ)';

  @override
  String get phoneNumberHint => 'เช่น: +66 81 234 5678';

  @override
  String get addMemberTitle => 'เพิ่มสมาชิก';

  @override
  String get editMemberTitle => 'แก้ไขสมาชิก';

  @override
  String get member => 'สมาชิก';

  @override
  String nameLabel(String name) {
    return 'ชื่อ: $name';
  }

  @override
  String ageLabel(int age) {
    return 'อายุ: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'โทรศัพท์: $phone';
  }

  @override
  String get templateOptional => 'เทมเพลต (ไม่บังคับ)';

  @override
  String get none => 'ไม่มี';

  @override
  String get saveAsTemplate => 'บันทึกเป็นเทมเพลต';

  @override
  String get saveAsTemplateSubtitle =>
      'ใช้เซสชันนี้เป็นเทมเพลตสำหรับเซสชันในอนาคต';

  @override
  String get templateName => 'ชื่อเทมเพลต';

  @override
  String get templateNameHelper => 'ชื่อสำหรับระบุเทมเพลตนี้';

  @override
  String get templateNameRequired => 'กรุณากรอกชื่อเทมเพลต';

  @override
  String get defaultSessionTitle => 'หัวข้อเซสชันเริ่มต้น';

  @override
  String get defaultSessionTitleHelper =>
      'หัวข้อที่ใช้เมื่อสร้างเซสชันจากเทมเพลตนี้';

  @override
  String get sessionTitleRequired => 'กรุณากรอกหัวข้อเซสชัน';

  @override
  String get createTemplate => 'สร้างเทมเพลต';

  @override
  String get editTemplate => 'แก้ไขเทมเพลต';

  @override
  String get create => 'สร้าง';

  @override
  String get templateNameDialogTitle => 'ชื่อเทมเพลต';

  @override
  String get templateNameDialogHelper =>
      'ตั้งชื่อเทมเพลตนี้เพื่อให้ระบุได้ง่าย';

  @override
  String get templateManagement => 'จัดการเทมเพลต';

  @override
  String get noTemplatesYet => 'ยังไม่มีเทมเพลต';

  @override
  String get createSessionAndSaveAsTemplate =>
      'สร้างเซสชันและเลือก \"บันทึกเป็นเทมเพลต\"';

  @override
  String get deleteTemplate => 'ลบเทมเพลต';

  @override
  String deleteTemplateConfirm(String title) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$title\"?';
  }

  @override
  String session(String title) {
    return 'เซสชัน: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'บันทึกเป็นเทมเพลต';

  @override
  String templateSavedSuccessfully(String name) {
    return 'เทมเพลต \"$name\" บันทึกสำเร็จ';
  }

  @override
  String get debug => 'ดีบัก';

  @override
  String get debugDateSimulation => 'จำลองวันที่ดีบัก';

  @override
  String get setCustomDate => 'ตั้งค่าวันที่กำหนดเอง';

  @override
  String get clear => 'ล้าง';

  @override
  String now(String date) {
    return 'ตอนนี้: $date';
  }

  @override
  String get today => 'วันนี้';

  @override
  String get yesterday => 'เมื่อวาน';

  @override
  String get tomorrow => 'พรุ่งนี้';

  @override
  String daysAgo(int count) {
    return '$count วันที่แล้ว';
  }

  @override
  String daysLater(int count) {
    return '$count วันต่อมา';
  }
}
