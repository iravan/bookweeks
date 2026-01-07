// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'הזמנת שבועות';

  @override
  String get selectWeek => 'בחר שבוע';

  @override
  String get mon => 'ב׳';

  @override
  String get tue => 'ג׳';

  @override
  String get wed => 'ד׳';

  @override
  String get thu => 'ה׳';

  @override
  String get fri => 'ו׳';

  @override
  String get sat => 'ש׳';

  @override
  String get sun => 'א׳';

  @override
  String get noSessionsScheduled => 'אין מפגשים מתוזמנים';

  @override
  String get tapToAddSession => 'הקש על כפתור + כדי להוסיף מפגש';

  @override
  String student(int count) {
    return 'תלמיד';
  }

  @override
  String students(int count) {
    return 'תלמידים';
  }

  @override
  String get deleteSession => 'מחק מפגש';

  @override
  String deleteSessionConfirm(String title) {
    return 'האם אתה בטוח שברצונך למחוק את \"$title\"?';
  }

  @override
  String get cancel => 'ביטול';

  @override
  String get delete => 'מחק';

  @override
  String get createSession => 'צור מפגש';

  @override
  String get editSession => 'ערוך מפגש';

  @override
  String get title => 'כותרת';

  @override
  String get titleRequired => 'אנא הזן כותרת';

  @override
  String get startTime => 'שעת התחלה';

  @override
  String get endTime => 'שעת סיום';

  @override
  String get endTimeAfterStart => 'שעת הסיום חייבת להיות אחרי שעת ההתחלה';

  @override
  String get descriptionOptional => 'תיאור (אופציונלי)';

  @override
  String get save => 'שמור';

  @override
  String get add => 'הוסף';

  @override
  String get edit => 'ערוך';

  @override
  String get allEvents => 'כל האירועים';

  @override
  String get manageTemplates => 'נהל תבניות';

  @override
  String get exportData => 'ייצא נתונים';

  @override
  String get importData => 'ייבא נתונים';

  @override
  String get saveExportFile => 'שמור קובץ ייצוא';

  @override
  String exportSuccessful(String path) {
    return 'הייצוא הצליח!\nנשמר ב: $path';
  }

  @override
  String exportFailed(String error) {
    return 'הייצוא נכשל: $error';
  }

  @override
  String get importSuccessful => 'הייבוא הצליח';

  @override
  String get importFailed => 'הייבוא נכשל';

  @override
  String get errorReadingFile => 'שגיאה בקריאת הקובץ';

  @override
  String error(String error) {
    return 'שגיאה: $error';
  }

  @override
  String get ok => 'אישור';

  @override
  String get searchEvents => 'חפש אירועים...';

  @override
  String get noEventsScheduled => 'אין אירועים מתוזמנים';

  @override
  String get noEventsFound => 'לא נמצאו אירועים';

  @override
  String get createEventsFromCalendar => 'צור אירועים מהלוח שנה';

  @override
  String get studentsJoiningThisSession => 'תלמידים המצטרפים למפגש זה';

  @override
  String get addMember => 'הוסף חבר';

  @override
  String get noStudentsAddedYet => 'עדיין לא נוספו תלמידים';

  @override
  String get tapToAddMember => 'הקש + כדי להוסיף חבר';

  @override
  String get allMembers => 'כל החברים';

  @override
  String get addToSession => 'הוסף למפגש';

  @override
  String get removeFromSession => 'הסר מהמפגש';

  @override
  String get name => 'שם';

  @override
  String get nameRequired => 'אנא הזן שם';

  @override
  String get nicknameOptional => 'כינוי (אופציונלי)';

  @override
  String get ageOptional => 'גיל (אופציונלי)';

  @override
  String get ageInvalid => 'אנא הזן גיל תקין';

  @override
  String get phoneNumberOptional => 'מספר טלפון (אופציונלי)';

  @override
  String get phoneNumberHint => 'לדוגמה: +972 50 123 4567';

  @override
  String get addMemberTitle => 'הוסף חבר';

  @override
  String get editMemberTitle => 'ערוך חבר';

  @override
  String get member => 'חבר';

  @override
  String nameLabel(String name) {
    return 'שם: $name';
  }

  @override
  String ageLabel(int age) {
    return 'גיל: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'טלפון: $phone';
  }

  @override
  String get templateOptional => 'תבנית (אופציונלי)';

  @override
  String get none => 'אין';

  @override
  String get saveAsTemplate => 'שמור כתבנית';

  @override
  String get saveAsTemplateSubtitle => 'השתמש במפגש זה כתבנית למפגשים עתידיים';

  @override
  String get templateName => 'שם התבנית';

  @override
  String get templateNameHelper => 'שם לזיהוי תבנית זו';

  @override
  String get templateNameRequired => 'אנא הזן שם תבנית';

  @override
  String get defaultSessionTitle => 'כותרת מפגש ברירת מחדל';

  @override
  String get defaultSessionTitleHelper =>
      'כותרת המשמשת בעת יצירת מפגשים מתבנית זו';

  @override
  String get sessionTitleRequired => 'אנא הזן כותרת מפגש';

  @override
  String get createTemplate => 'צור תבנית';

  @override
  String get editTemplate => 'ערוך תבנית';

  @override
  String get create => 'צור';

  @override
  String get templateNameDialogTitle => 'שם התבנית';

  @override
  String get templateNameDialogHelper => 'תן לתבנית זו שם לזיהוי קל';

  @override
  String get templateManagement => 'ניהול תבניות';

  @override
  String get noTemplatesYet => 'עדיין אין תבניות';

  @override
  String get createSessionAndSaveAsTemplate => 'צור מפגש וסמן \"שמור כתבנית\"';

  @override
  String get deleteTemplate => 'מחק תבנית';

  @override
  String deleteTemplateConfirm(String title) {
    return 'האם אתה בטוח שברצונך למחוק את \"$title\"?';
  }

  @override
  String session(String title) {
    return 'מפגש: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'שמור כתבנית';

  @override
  String templateSavedSuccessfully(String name) {
    return 'התבנית \"$name\" נשמרה בהצלחה';
  }

  @override
  String get debug => 'דיבוג';

  @override
  String get debugDateSimulation => 'סימולציית תאריך דיבוג';

  @override
  String get setCustomDate => 'הגדר תאריך מותאם אישית';

  @override
  String get clear => 'נקה';

  @override
  String now(String date) {
    return 'עכשיו: $date';
  }

  @override
  String get today => 'היום';

  @override
  String get yesterday => 'אתמול';

  @override
  String get tomorrow => 'מחר';

  @override
  String daysAgo(int count) {
    return 'לפני $count ימים';
  }

  @override
  String daysLater(int count) {
    return 'בעוד $count ימים';
  }
}
