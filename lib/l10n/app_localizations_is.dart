// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appTitle => 'Bóka Vikur';

  @override
  String get selectWeek => 'Veldu Viku';

  @override
  String get mon => 'Mán';

  @override
  String get tue => 'Þri';

  @override
  String get wed => 'Mið';

  @override
  String get thu => 'Fim';

  @override
  String get fri => 'Fös';

  @override
  String get sat => 'Lau';

  @override
  String get sun => 'Sun';

  @override
  String get noSessionsScheduled => 'Engar fundir áætlaðir';

  @override
  String get tapToAddSession => 'Smelltu á + hnappinn til að bæta við fundi';

  @override
  String student(int count) {
    return 'nemandi';
  }

  @override
  String students(int count) {
    return 'nemendur';
  }

  @override
  String get deleteSession => 'Eyða Fundi';

  @override
  String deleteSessionConfirm(String title) {
    return 'Ertu viss um að þú viljir eyða \"$title\"?';
  }

  @override
  String get cancel => 'Hætta við';

  @override
  String get delete => 'Eyða';

  @override
  String get createSession => 'Búa til Fund';

  @override
  String get editSession => 'Breyta Fundi';

  @override
  String get title => 'Titill';

  @override
  String get titleRequired => 'Vinsamlegast sláðu inn titil';

  @override
  String get startTime => 'Upphafstími';

  @override
  String get endTime => 'Lokatími';

  @override
  String get endTimeAfterStart =>
      'Lokatíminn verður að vera eftir upphafstímann';

  @override
  String get descriptionOptional => 'Lýsing (valfrjálst)';

  @override
  String get save => 'Vista';

  @override
  String get add => 'Bæta við';

  @override
  String get edit => 'Breyta';

  @override
  String get allEvents => 'Allir Viðburðir';

  @override
  String get manageTemplates => 'Stjórna Sniðmátum';

  @override
  String get exportData => 'Flytja út Gögn';

  @override
  String get importData => 'Flytja inn Gögn';

  @override
  String get saveExportFile => 'Vista Útflutningsskrá';

  @override
  String exportSuccessful(String path) {
    return 'Útflutningur tókst!\nVistað í: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Útflutningur mistókst: $error';
  }

  @override
  String get importSuccessful => 'Innflutningur Tókst';

  @override
  String get importFailed => 'Innflutningur Mistókst';

  @override
  String get errorReadingFile => 'Villa við að lesa skrá';

  @override
  String error(String error) {
    return 'Villa: $error';
  }

  @override
  String get ok => 'Í lagi';

  @override
  String get searchEvents => 'Leita að viðburðum...';

  @override
  String get noEventsScheduled => 'Engir viðburðir áætlaðir';

  @override
  String get noEventsFound => 'Engir viðburðir fundust';

  @override
  String get createEventsFromCalendar => 'Búa til viðburði úr dagatali';

  @override
  String get studentsJoiningThisSession =>
      'Nemendur sem Taka Þátt í Þessum Fundi';

  @override
  String get addMember => 'Bæta við Meðlimi';

  @override
  String get noStudentsAddedYet => 'Engir nemendur hafa verið bættir við enn';

  @override
  String get tapToAddMember => 'Smelltu á + til að bæta við meðlimi';

  @override
  String get allMembers => 'Allir Meðlimir';

  @override
  String get addToSession => 'Bæta við fundi';

  @override
  String get removeFromSession => 'Fjarlægja úr fundi';

  @override
  String get name => 'Nafn';

  @override
  String get nameRequired => 'Vinsamlegast sláðu inn nafn';

  @override
  String get nicknameOptional => 'Gælunafn (valfrjálst)';

  @override
  String get ageOptional => 'Aldur (valfrjálst)';

  @override
  String get ageInvalid => 'Vinsamlegast sláðu inn gildan aldur';

  @override
  String get phoneNumberOptional => 'Símanúmer (valfrjálst)';

  @override
  String get phoneNumberHint => 't.d. +354 123 4567';

  @override
  String get addMemberTitle => 'Bæta við Meðlimi';

  @override
  String get editMemberTitle => 'Breyta Meðlimi';

  @override
  String get member => 'Meðlimur';

  @override
  String nameLabel(String name) {
    return 'Nafn: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Aldur: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Sími: $phone';
  }

  @override
  String get templateOptional => 'Sniðmát (valfrjálst)';

  @override
  String get none => 'Ekkert';

  @override
  String get saveAsTemplate => 'Vista sem sniðmát';

  @override
  String get saveAsTemplateSubtitle =>
      'Nota þennan fund sem sniðmát fyrir framtíðarfundi';

  @override
  String get templateName => 'Heiti Sniðmáts';

  @override
  String get templateNameHelper => 'Heiti til að auðkenna þetta sniðmát';

  @override
  String get templateNameRequired => 'Vinsamlegast sláðu inn heiti sniðmáts';

  @override
  String get defaultSessionTitle => 'Sjálfgefinn Titill Fundar';

  @override
  String get defaultSessionTitleHelper =>
      'Titill sem notaður er þegar fundir eru búnir til úr þessu sniðmáti';

  @override
  String get sessionTitleRequired => 'Vinsamlegast sláðu inn titil fundar';

  @override
  String get createTemplate => 'Búa til Sniðmát';

  @override
  String get editTemplate => 'Breyta Sniðmáti';

  @override
  String get create => 'Búa til';

  @override
  String get templateNameDialogTitle => 'Heiti Sniðmáts';

  @override
  String get templateNameDialogHelper =>
      'Gefðu þessu sniðmáti nafn til auðkenningar';

  @override
  String get templateManagement => 'Stjórnun Sniðmáta';

  @override
  String get noTemplatesYet => 'Engin sniðmát enn';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Búðu til fund og merktu \"Vista sem sniðmát\"';

  @override
  String get deleteTemplate => 'Eyða Sniðmáti';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Ertu viss um að þú viljir eyða \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Fundur: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Vista sem Sniðmát';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Sniðmátið \"$name\" var vistað með góðum árangri';
  }

  @override
  String get debug => 'VILLULEIT';

  @override
  String get debugDateSimulation => 'Dagsetningarsimulering fyrir Villuleit';

  @override
  String get setCustomDate => 'Setja Sérsniðna Dagsetningu';

  @override
  String get clear => 'Hreinsa';

  @override
  String now(String date) {
    return 'Núna: $date';
  }

  @override
  String get today => 'Í dag';

  @override
  String get yesterday => 'Í gær';

  @override
  String get tomorrow => 'Á morgun';

  @override
  String daysAgo(int count) {
    return 'fyrir $count dögum';
  }

  @override
  String daysLater(int count) {
    return 'eftir $count daga';
  }
}
