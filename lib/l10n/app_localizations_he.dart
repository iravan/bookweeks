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
  String get earlierWeeks => 'שבועות קודמים';

  @override
  String get older => 'ישן יותר';

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

  @override
  String get notificationSettings => 'הגדרות התראות';

  @override
  String get notificationTiming => 'זמן התראות';

  @override
  String get notificationTimingDescription =>
      'בחר מתי לקבל התראות לפני תחילת כל מפגש';

  @override
  String get atEventStart => 'בתחילת האירוע';

  @override
  String beforeEventStart(String timing) {
    return '$timing לפני תחילת האירוע';
  }

  @override
  String get notificationTimingUpdated => 'זמן ההתראות עודכן';

  @override
  String get aboutNotifications => 'על התראות';

  @override
  String get notificationInfo =>
      'תקבל התראות לפני תחילת כל מפגש מתוזמן. התראות מתוזמנות אוטומטית בעת יצירה או עדכון מפגשים, וכל המפגשים הקיימים מתוזמנים בעת הפעלת האפליקציה.';

  @override
  String get rescheduleNotifications => 'תזמן מחדש התראות';

  @override
  String get rescheduleNotificationsDescription =>
      'תזמן מחדש ידנית התראות עבור כל המפגשים העתידיים הקיימים. שימושי אם הרגע הפעלת התראות או רוצה להבטיח שלכל האירועים יש התראות מתוזמנות.';

  @override
  String get rescheduleNow => 'תזמן מחדש עכשיו';

  @override
  String get rescheduling => 'מתזמן מחדש...';

  @override
  String notificationsRescheduled(int count) {
    return 'התראות מתוזמנות מחדש עבור $count מפגש(ים) עתידי(ים)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'שגיאה בתזמון מחדש של התראות: $error';
  }

  @override
  String get permissionsRequired => 'נדרשות הרשאות התראות';

  @override
  String get permissionsRequiredDescription =>
      'אנא הענק הרשאות התראות כדי לקבל תזכורות עבור המפגשים שלך. לחץ על הכפתור למטה כדי לבקש הרשאות.';

  @override
  String get requestPermissions => 'בקש הרשאות';

  @override
  String get permissionsGranted => 'הרשאות התראות הוענקו!';

  @override
  String get permissionsDenied => 'הרשאות התראות נדחו. אנא הפעל אותן בהגדרות.';

  @override
  String get timing0Min => '0 דקות';

  @override
  String get timing1Min => '1 דקה';

  @override
  String get timing5Mins => '5 דקות';

  @override
  String get timing30Mins => '30 דקות';

  @override
  String get timing1Hour => '1 שעה';

  @override
  String get timing6Hours => '6 שעות';

  @override
  String timingMinutes(int count) {
    return '$count דקות';
  }

  @override
  String timingHours(int count) {
    return '$count שעה';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count שעות';
  }

  @override
  String get testNotifications => 'התראות בדיקה';

  @override
  String get testNotificationsDescription =>
      'שלח התראת בדיקה תוך 2 שניות כדי לאמת שההתראות פועלות.';

  @override
  String get sendTestNotification => 'שלח התראת בדיקה';

  @override
  String get testNotificationScheduled =>
      'התראת בדיקה נקבעה! בדוק תוך 2 שניות.';

  @override
  String get testNotificationTitle => 'התראת בדיקה';

  @override
  String get testNotificationBody => 'אם אתה רואה את זה, ההתראות פועלות!';

  @override
  String get scheduledTestNotificationTitle => 'התראת בדיקה מתוזמנת';

  @override
  String get scheduledTestNotificationBody => 'זה נקבע לפני 2 שניות';

  @override
  String startsAt(String time) {
    return 'מתחיל ב-$time';
  }

  @override
  String get themeSettings => 'הגדרות ערכת נושא';

  @override
  String get selectTheme => 'בחר ערכת נושא';

  @override
  String get selectThemeDescription =>
      'בחר ערכת נושא צבעים לאפליקציה. הערכת נושא תוחל על כל האפליקציה.';

  @override
  String get themeChanged => 'ערכת הנושא שונתה בהצלחה!';

  @override
  String get aboutTheme => 'על ערכות נושא';

  @override
  String get themeInfo =>
      'שינוי ערכת הנושא יעדכן את הצבעים בכל האפליקציה, כולל כפתורים, פסי אפליקציה ואלמנטי ממשק משתמש אחרים. העדפת הערכת הנושא שלך תישמר ותוחל אוטומטית בעת הפעלה מחדש של האפליקציה.';

  @override
  String get enableNotifications => 'הפעל התראות';

  @override
  String get enableNotificationsDescription =>
      'הפעל או בטל התראות. כאשר הן מושבתות, לא יישלחו התראות עבור המפגשים שלך.';

  @override
  String get notificationsEnabled => 'התראות הופעלו';

  @override
  String get notificationsDisabled => 'התראות הושבתו';

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
