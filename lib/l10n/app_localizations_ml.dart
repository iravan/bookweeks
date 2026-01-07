// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'വാരങ്ങൾ ബുക്കിംഗ്';

  @override
  String get selectWeek => 'വാരം തിരഞ്ഞെടുക്കുക';

  @override
  String get mon => 'തിങ്കൾ';

  @override
  String get tue => 'ചൊവ്വ';

  @override
  String get wed => 'ബുധൻ';

  @override
  String get thu => 'വ്യാഴം';

  @override
  String get fri => 'വെള്ളി';

  @override
  String get sat => 'ശനി';

  @override
  String get sun => 'ഞായർ';

  @override
  String get noSessionsScheduled => 'സെഷനുകൾ ഷെഡ്യൂൾ ചെയ്തിട്ടില്ല';

  @override
  String get tapToAddSession => 'സെഷൻ ചേർക്കാൻ + ബട്ടൺ ടാപ്പ് ചെയ്യുക';

  @override
  String student(int count) {
    return 'വിദ്യാർത്ഥി';
  }

  @override
  String students(int count) {
    return 'വിദ്യാർത്ഥികൾ';
  }

  @override
  String get deleteSession => 'സെഷൻ ഇല്ലാതാക്കുക';

  @override
  String deleteSessionConfirm(String title) {
    return '\"$title\" ഇല്ലാതാക്കാൻ നിങ്ങൾ ഉറപ്പാണോ?';
  }

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get delete => 'ഇല്ലാതാക്കുക';

  @override
  String get createSession => 'സെഷൻ സൃഷ്ടിക്കുക';

  @override
  String get editSession => 'സെഷൻ എഡിറ്റ് ചെയ്യുക';

  @override
  String get title => 'തലക്കെട്ട്';

  @override
  String get titleRequired => 'ദയവായി ഒരു തലക്കെട്ട് നൽകുക';

  @override
  String get startTime => 'ആരംഭ സമയം';

  @override
  String get endTime => 'അവസാന സമയം';

  @override
  String get endTimeAfterStart => 'അവസാന സമയം ആരംഭ സമയത്തിന് ശേഷം ആയിരിക്കണം';

  @override
  String get descriptionOptional => 'വിവരണം (ഓപ്ഷണൽ)';

  @override
  String get save => 'സേവ് ചെയ്യുക';

  @override
  String get add => 'ചേർക്കുക';

  @override
  String get edit => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String get allEvents => 'എല്ലാ ഇവന്റുകളും';

  @override
  String get manageTemplates => 'ടെംപ്ലേറ്റുകൾ മാനേജ് ചെയ്യുക';

  @override
  String get exportData => 'ഡാറ്റ എക്സ്പോർട്ട് ചെയ്യുക';

  @override
  String get importData => 'ഡാറ്റ ഇംപോർട്ട് ചെയ്യുക';

  @override
  String get saveExportFile => 'എക്സ്പോർട്ട് ഫയൽ സേവ് ചെയ്യുക';

  @override
  String exportSuccessful(String path) {
    return 'എക്സ്പോർട്ട് വിജയകരമാണ്!\nസേവ് ചെയ്തു: $path';
  }

  @override
  String exportFailed(String error) {
    return 'എക്സ്പോർട്ട് പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get importSuccessful => 'ഇംപോർട്ട് വിജയകരമാണ്';

  @override
  String get importFailed => 'ഇംപോർട്ട് പരാജയപ്പെട്ടു';

  @override
  String get errorReadingFile => 'ഫയൽ വായിക്കുന്നതിൽ പിശക്';

  @override
  String error(String error) {
    return 'പിശക്: $error';
  }

  @override
  String get ok => 'ശരി';

  @override
  String get searchEvents => 'ഇവന്റുകൾ തിരയുക...';

  @override
  String get noEventsScheduled => 'ഇവന്റുകൾ ഷെഡ്യൂൾ ചെയ്തിട്ടില്ല';

  @override
  String get noEventsFound => 'ഇവന്റുകൾ കണ്ടെത്തിയില്ല';

  @override
  String get createEventsFromCalendar => 'കലണ്ടറിൽ നിന്ന് ഇവന്റുകൾ സൃഷ്ടിക്കുക';

  @override
  String get studentsJoiningThisSession => 'ഈ സെഷനിൽ ചേരുന്ന വിദ്യാർത്ഥികൾ';

  @override
  String get addMember => 'മെംബർ ചേർക്കുക';

  @override
  String get noStudentsAddedYet => 'ഇതുവരെ വിദ്യാർത്ഥികൾ ചേർത്തിട്ടില്ല';

  @override
  String get tapToAddMember => '+ ടാപ്പ് ചെയ്ത് മെംബർ ചേർക്കുക';

  @override
  String get allMembers => 'എല്ലാ മെംബർമാരും';

  @override
  String get addToSession => 'സെഷനിലേക്ക് ചേർക്കുക';

  @override
  String get removeFromSession => 'സെഷനിൽ നിന്ന് നീക്കം ചെയ്യുക';

  @override
  String get name => 'പേര്';

  @override
  String get nameRequired => 'ദയവായി ഒരു പേര് നൽകുക';

  @override
  String get nicknameOptional => 'വിളിപ്പേര് (ഓപ്ഷണൽ)';

  @override
  String get ageOptional => 'വയസ്സ് (ഓപ്ഷണൽ)';

  @override
  String get ageInvalid => 'ദയവായി സാധുവായ വയസ്സ് നൽകുക';

  @override
  String get phoneNumberOptional => 'ഫോൺ നമ്പർ (ഓപ്ഷണൽ)';

  @override
  String get phoneNumberHint => 'ഉദാ: +91 98765 43210';

  @override
  String get addMemberTitle => 'മെംബർ ചേർക്കുക';

  @override
  String get editMemberTitle => 'മെംബർ എഡിറ്റ് ചെയ്യുക';

  @override
  String get member => 'മെംബർ';

  @override
  String nameLabel(String name) {
    return 'പേര്: $name';
  }

  @override
  String ageLabel(int age) {
    return 'വയസ്സ്: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'ഫോൺ: $phone';
  }

  @override
  String get templateOptional => 'ടെംപ്ലേറ്റ് (ഓപ്ഷണൽ)';

  @override
  String get none => 'ഒന്നുമില്ല';

  @override
  String get saveAsTemplate => 'ടെംപ്ലേറ്റായി സേവ് ചെയ്യുക';

  @override
  String get saveAsTemplateSubtitle =>
      'ഭാവി സെഷനുകൾക്കായി ഈ സെഷൻ ടെംപ്ലേറ്റായി ഉപയോഗിക്കുക';

  @override
  String get templateName => 'ടെംപ്ലേറ്റ് പേര്';

  @override
  String get templateNameHelper => 'ഈ ടെംപ്ലേറ്റ് തിരിച്ചറിയാൻ പേര്';

  @override
  String get templateNameRequired => 'ദയവായി ടെംപ്ലേറ്റ് പേര് നൽകുക';

  @override
  String get defaultSessionTitle => 'ഡിഫോൾട്ട് സെഷൻ തലക്കെട്ട്';

  @override
  String get defaultSessionTitleHelper =>
      'ഈ ടെംപ്ലേറ്റിൽ നിന്ന് സെഷനുകൾ സൃഷ്ടിക്കുമ്പോൾ ഉപയോഗിക്കുന്ന തലക്കെട്ട്';

  @override
  String get sessionTitleRequired => 'ദയവായി സെഷൻ തലക്കെട്ട് നൽകുക';

  @override
  String get createTemplate => 'ടെംപ്ലേറ്റ് സൃഷ്ടിക്കുക';

  @override
  String get editTemplate => 'ടെംപ്ലേറ്റ് എഡിറ്റ് ചെയ്യുക';

  @override
  String get create => 'സൃഷ്ടിക്കുക';

  @override
  String get templateNameDialogTitle => 'ടെംപ്ലേറ്റ് പേര്';

  @override
  String get templateNameDialogHelper =>
      'എളുപ്പത്തിൽ തിരിച്ചറിയാൻ ഈ ടെംപ്ലേറ്റിന് ഒരു പേര് നൽകുക';

  @override
  String get templateManagement => 'ടെംപ്ലേറ്റ് മാനേജ്മെന്റ്';

  @override
  String get noTemplatesYet => 'ഇതുവരെ ടെംപ്ലേറ്റുകൾ ഇല്ല';

  @override
  String get createSessionAndSaveAsTemplate =>
      'ഒരു സെഷൻ സൃഷ്ടിക്കുകയും \"ടെംപ്ലേറ്റായി സേവ് ചെയ്യുക\" തിരഞ്ഞെടുക്കുകയും ചെയ്യുക';

  @override
  String get deleteTemplate => 'ടെംപ്ലേറ്റ് ഇല്ലാതാക്കുക';

  @override
  String deleteTemplateConfirm(String title) {
    return '\"$title\" ഇല്ലാതാക്കാൻ നിങ്ങൾ ഉറപ്പാണോ?';
  }

  @override
  String session(String title) {
    return 'സെഷൻ: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'ടെംപ്ലേറ്റായി സേവ് ചെയ്യുക';

  @override
  String templateSavedSuccessfully(String name) {
    return 'ടെംപ്ലേറ്റ് \"$name\" വിജയകരമായി സേവ് ചെയ്തു';
  }

  @override
  String get debug => 'ഡീബഗ്';

  @override
  String get debugDateSimulation => 'ഡീബഗ് തീയതി സിമുലേഷൻ';

  @override
  String get setCustomDate => 'കസ്റ്റം തീയതി സെറ്റ് ചെയ്യുക';

  @override
  String get clear => 'മായ്ക്കുക';

  @override
  String now(String date) {
    return 'ഇപ്പോൾ: $date';
  }

  @override
  String get today => 'ഇന്ന്';

  @override
  String get yesterday => 'ഇന്നലെ';

  @override
  String get tomorrow => 'നാളെ';

  @override
  String daysAgo(int count) {
    return '$count ദിവസങ്ങൾക്ക് മുമ്പ്';
  }

  @override
  String daysLater(int count) {
    return '$count ദിവസങ്ങൾക്ക് ശേഷം';
  }
}
