// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get appTitle => 'ការកក់សប្តាហ៍';

  @override
  String get selectWeek => 'ជ្រើសរើសសប្តាហ៍';

  @override
  String get mon => 'ច័ន្ទ';

  @override
  String get tue => 'អង្គារ';

  @override
  String get wed => 'ពុធ';

  @override
  String get thu => 'ព្រហស្បតិ៍';

  @override
  String get fri => 'សុក្រ';

  @override
  String get sat => 'សៅរ៍';

  @override
  String get sun => 'អាទិត្យ';

  @override
  String get noSessionsScheduled => 'មិនមានសម័យប្រជុំត្រូវបានកំណត់ពេល';

  @override
  String get tapToAddSession => 'ចុចប៊ូតុង + ដើម្បីបន្ថែមសម័យប្រជុំ';

  @override
  String student(int count) {
    return 'សិស្ស';
  }

  @override
  String students(int count) {
    return 'សិស្ស';
  }

  @override
  String get deleteSession => 'លុបសម័យប្រជុំ';

  @override
  String deleteSessionConfirm(String title) {
    return 'តើអ្នកប្រាកដថាចង់លុប \"$title\" ឬ?';
  }

  @override
  String get cancel => 'បោះបង់';

  @override
  String get delete => 'លុប';

  @override
  String get createSession => 'បង្កើតសម័យប្រជុំ';

  @override
  String get editSession => 'កែសម្រួលសម័យប្រជុំ';

  @override
  String get title => 'ចំណងជើង';

  @override
  String get titleRequired => 'សូមបញ្ចូលចំណងជើង';

  @override
  String get startTime => 'ពេលវេលាចាប់ផ្តើម';

  @override
  String get endTime => 'ពេលវេលាបញ្ចប់';

  @override
  String get endTimeAfterStart => 'ពេលវេលាបញ្ចប់ត្រូវតែក្រោយពេលវេលាចាប់ផ្តើម';

  @override
  String get descriptionOptional => 'ការពិពណ៌នា (ជម្រើស)';

  @override
  String get save => 'រក្សាទុក';

  @override
  String get add => 'បន្ថែម';

  @override
  String get edit => 'កែសម្រួល';

  @override
  String get allEvents => 'ព្រឹត្តិការណ៍ទាំងអស់';

  @override
  String get manageTemplates => 'គ្រប់គ្រងពុម្ព';

  @override
  String get exportData => 'នាំចេញទិន្នន័យ';

  @override
  String get importData => 'នាំចូលទិន្នន័យ';

  @override
  String get saveExportFile => 'រក្សាទុកឯកសារនាំចេញ';

  @override
  String exportSuccessful(String path) {
    return 'នាំចេញជោគជ័យ!\nបានរក្សាទុកទៅ: $path';
  }

  @override
  String exportFailed(String error) {
    return 'នាំចេញបរាជ័យ: $error';
  }

  @override
  String get importSuccessful => 'នាំចូលជោគជ័យ';

  @override
  String get importFailed => 'នាំចូលបរាជ័យ';

  @override
  String get errorReadingFile => 'កំហុសក្នុងការអានឯកសារ';

  @override
  String error(String error) {
    return 'កំហុស: $error';
  }

  @override
  String get ok => 'យល់ព្រម';

  @override
  String get searchEvents => 'ស្វែងរកព្រឹត្តិការណ៍...';

  @override
  String get noEventsScheduled => 'មិនមានព្រឹត្តិការណ៍ត្រូវបានកំណត់ពេល';

  @override
  String get noEventsFound => 'រកមិនឃើញព្រឹត្តិការណ៍';

  @override
  String get createEventsFromCalendar => 'បង្កើតព្រឹត្តិការណ៍ពីប្រតិទិន';

  @override
  String get studentsJoiningThisSession => 'សិស្សដែលចូលរួមសម័យប្រជុំនេះ';

  @override
  String get addMember => 'បន្ថែមសមាជិក';

  @override
  String get noStudentsAddedYet => 'មិនទាន់មានសិស្សត្រូវបានបន្ថែម';

  @override
  String get tapToAddMember => 'ចុច + ដើម្បីបន្ថែមសមាជិក';

  @override
  String get allMembers => 'សមាជិកទាំងអស់';

  @override
  String get addToSession => 'បន្ថែមទៅសម័យប្រជុំ';

  @override
  String get removeFromSession => 'ដកចេញពីសម័យប្រជុំ';

  @override
  String get name => 'ឈ្មោះ';

  @override
  String get nameRequired => 'សូមបញ្ចូលឈ្មោះ';

  @override
  String get nicknameOptional => 'ឈ្មោះហៅក្រៅ (ជម្រើស)';

  @override
  String get ageOptional => 'អាយុ (ជម្រើស)';

  @override
  String get ageInvalid => 'សូមបញ្ចូលអាយុដែលត្រឹមត្រូវ';

  @override
  String get phoneNumberOptional => 'លេខទូរស័ព្ទ (ជម្រើស)';

  @override
  String get phoneNumberHint => 'ឧ. +855 12 345 678';

  @override
  String get addMemberTitle => 'បន្ថែមសមាជិក';

  @override
  String get editMemberTitle => 'កែសម្រួលសមាជិក';

  @override
  String get member => 'សមាជិក';

  @override
  String nameLabel(String name) {
    return 'ឈ្មោះ: $name';
  }

  @override
  String ageLabel(int age) {
    return 'អាយុ: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'ទូរស័ព្ទ: $phone';
  }

  @override
  String get templateOptional => 'ពុម្ព (ជម្រើស)';

  @override
  String get none => 'គ្មាន';

  @override
  String get saveAsTemplate => 'រក្សាទុកជាពុម្ព';

  @override
  String get saveAsTemplateSubtitle =>
      'ប្រើប្រាស់សម័យប្រជុំនេះជាពុម្ពសម្រាប់សម័យប្រជុំនាពេលអនាគត';

  @override
  String get templateName => 'ឈ្មោះពុម្ព';

  @override
  String get templateNameHelper => 'ឈ្មោះដើម្បីកំណត់អត្តសញ្ញាណពុម្ពនេះ';

  @override
  String get templateNameRequired => 'សូមបញ្ចូលឈ្មោះពុម្ព';

  @override
  String get defaultSessionTitle => 'ចំណងជើងសម័យប្រជុំលំនាំដើម';

  @override
  String get defaultSessionTitleHelper =>
      'ចំណងជើងដែលប្រើប្រាស់នៅពេលបង្កើតសម័យប្រជុំពីពុម្ពនេះ';

  @override
  String get sessionTitleRequired => 'សូមបញ្ចូលចំណងជើងសម័យប្រជុំ';

  @override
  String get createTemplate => 'បង្កើតពុម្ព';

  @override
  String get editTemplate => 'កែសម្រួលពុម្ព';

  @override
  String get create => 'បង្កើត';

  @override
  String get templateNameDialogTitle => 'ឈ្មោះពុម្ព';

  @override
  String get templateNameDialogHelper =>
      'ផ្តល់ឈ្មោះឱ្យពុម្ពនេះសម្រាប់ការកំណត់អត្តសញ្ញាណងាយស្រួល';

  @override
  String get templateManagement => 'គ្រប់គ្រងពុម្ព';

  @override
  String get noTemplatesYet => 'មិនទាន់មានពុម្ព';

  @override
  String get createSessionAndSaveAsTemplate =>
      'បង្កើតសម័យប្រជុំមួយហើយជ្រើសរើស \"រក្សាទុកជាពុម្ព\"';

  @override
  String get deleteTemplate => 'លុបពុម្ព';

  @override
  String deleteTemplateConfirm(String title) {
    return 'តើអ្នកប្រាកដថាចង់លុប \"$title\" ឬ?';
  }

  @override
  String session(String title) {
    return 'សម័យប្រជុំ: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'រក្សាទុកជាពុម្ព';

  @override
  String templateSavedSuccessfully(String name) {
    return 'ពុម្ព \"$name\" ត្រូវបានរក្សាទុកដោយជោគជ័យ';
  }

  @override
  String get debug => 'កំហុស';

  @override
  String get debugDateSimulation => 'ការធ្វើត្រាប់តាមកាលបរិច្ឆេទកំហុស';

  @override
  String get setCustomDate => 'កំណត់កាលបរិច្ឆេទផ្ទាល់';

  @override
  String get clear => 'សម្អាត';

  @override
  String now(String date) {
    return 'ឥឡូវនេះ: $date';
  }

  @override
  String get today => 'ថ្ងៃនេះ';

  @override
  String get yesterday => 'ម្សិលមិញ';

  @override
  String get tomorrow => 'ស្អែក';

  @override
  String daysAgo(int count) {
    return '$count ថ្ងៃមុន';
  }

  @override
  String daysLater(int count) {
    return '$count ថ្ងៃក្រោយ';
  }

  @override
  String get notificationSettings => 'ការកំណត់ការជូនដំណឹង';

  @override
  String get notificationTiming => 'ពេលវេលាការជូនដំណឹង';

  @override
  String get notificationTimingDescription =>
      'ជ្រើសរើសពេលវេលាទទួលការជូនដំណឹងមុនពេលដែលសម័យនីមួយៗចាប់ផ្តើម';

  @override
  String get atEventStart => 'នៅពេលចាប់ផ្តើមព្រឹត្តិការណ៍';

  @override
  String beforeEventStart(String timing) {
    return '$timing មុនពេលចាប់ផ្តើមព្រឹត្តិការណ៍';
  }

  @override
  String get notificationTimingUpdated =>
      'ពេលវេលាការជូនដំណឹងត្រូវបានធ្វើបច្ចុប្បន្នភាព';

  @override
  String get aboutNotifications => 'អំពីការជូនដំណឹង';

  @override
  String get notificationInfo =>
      'អ្នកនឹងទទួលការជូនដំណឹងមុនពេលដែលសម័យដែលបានកំណត់ពេលវេលានីមួយៗចាប់ផ្តើម។ ការជូនដំណឹងត្រូវបានកំណត់ពេលវេលាដោយស្វ័យប្រវត្តិនៅពេលដែលអ្នកបង្កើត ឬធ្វើបច្ចុប្បន្នភាពសម័យ ហើយសម័យទាំងអស់ដែលមានស្រាប់ត្រូវបានកំណត់ពេលវេលានៅពេលដែលកម្មវិធីចាប់ផ្តើម។';

  @override
  String get rescheduleNotifications => 'កំណត់ពេលវេលាការជូនដំណឹងឡើងវិញ';

  @override
  String get rescheduleNotificationsDescription =>
      'កំណត់ពេលវេលាការជូនដំណឹងឡើងវិញដោយដៃសម្រាប់សម័យអនាគតទាំងអស់ដែលមានស្រាប់។ នេះមានប្រយោជន៍ប្រសិនបើអ្នកទើបតែបើកការជូនដំណឹង ឬចង់ធានាថាព្រឹត្តិការណ៍ទាំងអស់មានការជូនដំណឹងដែលបានកំណត់ពេលវេលា។';

  @override
  String get rescheduleNow => 'កំណត់ពេលវេលាឡើងវិញឥឡូវនេះ';

  @override
  String get rescheduling => 'កំពុងកំណត់ពេលវេលាឡើងវិញ...';

  @override
  String notificationsRescheduled(int count) {
    return 'ការជូនដំណឹងត្រូវបានកំណត់ពេលវេលាឡើងវិញសម្រាប់ $count សម័យអនាគត';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'កំហុសក្នុងការកំណត់ពេលវេលាការជូនដំណឹងឡើងវិញ: $error';
  }

  @override
  String get permissionsRequired => 'ត្រូវការការអនុញ្ញាតការជូនដំណឹង';

  @override
  String get permissionsRequiredDescription =>
      'សូមផ្តល់ការអនុញ្ញាតការជូនដំណឹងដើម្បីទទួលការរំលឹកសម្រាប់សម័យរបស់អ្នក។ ចុចប៊ូតុងខាងក្រោមដើម្បីស្នើសុំការអនុញ្ញាត។';

  @override
  String get requestPermissions => 'ស្នើសុំការអនុញ្ញាត';

  @override
  String get permissionsGranted => 'ការអនុញ្ញាតការជូនដំណឹងត្រូវបានផ្តល់ឱ្យ!';

  @override
  String get permissionsDenied =>
      'ការអនុញ្ញាតការជូនដំណឹងត្រូវបានបដិសេធ។ សូមបើកវានៅក្នុងការកំណត់។';

  @override
  String get timing0Min => '0 នាទី';

  @override
  String get timing1Min => '1 នាទី';

  @override
  String get timing5Mins => '5 នាទី';

  @override
  String get timing30Mins => '30 នាទី';

  @override
  String get timing1Hour => '1 ម៉ោង';

  @override
  String get timing6Hours => '6 ម៉ោង';

  @override
  String timingMinutes(int count) {
    return '$count នាទី';
  }

  @override
  String timingHours(int count) {
    return '$count ម៉ោង';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count ម៉ោង';
  }

  @override
  String get testNotifications => 'ការជូនដំណឹងសាកល្បង';

  @override
  String get testNotificationsDescription =>
      'ផ្ញើការជូនដំណឹងសាកល្បងក្នុងរយៈពេល 2 វិនាទីដើម្បីផ្ទៀងផ្ទាត់ថាការជូនដំណឹងកំពុងដំណើរការ។';

  @override
  String get sendTestNotification => 'ផ្ញើការជូនដំណឹងសាកល្បង';

  @override
  String get testNotificationScheduled =>
      'ការជូនដំណឹងសាកល្បងត្រូវបានកំណត់ពេលវេលា! ពិនិត្យក្នុងរយៈពេល 2 វិនាទី។';

  @override
  String get testNotificationTitle => 'ការជូនដំណឹងសាកល្បង';

  @override
  String get testNotificationBody =>
      'ប្រសិនបើអ្នកឃើញនេះ ការជូនដំណឹងកំពុងដំណើរការ!';

  @override
  String get scheduledTestNotificationTitle =>
      'ការជូនដំណឹងសាកល្បងដែលបានកំណត់ពេលវេលា';

  @override
  String get scheduledTestNotificationBody =>
      'នេះត្រូវបានកំណត់ពេលវេលា 2 វិនាទីមុន';

  @override
  String startsAt(String time) {
    return 'ចាប់ផ្តើមនៅ $time';
  }

  @override
  String get themeSettings => 'ការកំណត់រចនាប័ទ្ម';

  @override
  String get selectTheme => 'ជ្រើសរចនាប័ទ្ម';

  @override
  String get selectThemeDescription =>
      'ជ្រើសរចនាប័ទ្មពណ៌សម្រាប់កម្មវិធី។ រចនាប័ទ្មនឹងត្រូវបានអនុវត្តនៅទូទាំងកម្មវិធីទាំងមូល។';

  @override
  String get themeChanged => 'រចនាប័ទ្មត្រូវបានផ្លាស់ប្តូរដោយជោគជ័យ!';

  @override
  String get aboutTheme => 'អំពីរចនាប័ទ្ម';

  @override
  String get themeInfo =>
      'ការផ្លាស់ប្តូររចនាប័ទ្មនឹងធ្វើបច្ចុប្បន្នភាពពណ៌នៅទូទាំងកម្មវិធី រួមមានប៊ូតុង របារកម្មវិធី និងធាតុ UI ផ្សេងៗ។ ចំណូលចិត្តរចនាប័ទ្មរបស់អ្នកនឹងត្រូវបានរក្សាទុក និងអនុវត្តដោយស្វ័យប្រវត្តិនៅពេលអ្នកចាប់ផ្តើមកម្មវិធីឡើងវិញ។';

  @override
  String get enableNotifications => 'បើកការជូនដំណឹង';

  @override
  String get enableNotificationsDescription =>
      'បើក ឬបិទការជូនដំណឹង។ នៅពេលបិទ ការជូនដំណឹងនឹងមិនត្រូវបានផ្ញើសម្រាប់សម័យរបស់អ្នកទេ។';

  @override
  String get notificationsEnabled => 'ការជូនដំណឹងត្រូវបានបើក';

  @override
  String get notificationsDisabled => 'ការជូនដំណឹងត្រូវបានបិទ';
}
