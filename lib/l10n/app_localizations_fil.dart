// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'Mag-book ng Linggo';

  @override
  String get selectWeek => 'Pumili ng Linggo';

  @override
  String get mon => 'Lun';

  @override
  String get tue => 'Mar';

  @override
  String get wed => 'Miy';

  @override
  String get thu => 'Huw';

  @override
  String get fri => 'Biy';

  @override
  String get sat => 'Sab';

  @override
  String get sun => 'Lin';

  @override
  String get noSessionsScheduled => 'Walang naka-iskedyul na sesyon';

  @override
  String get tapToAddSession => 'I-tap ang + button upang magdagdag ng sesyon';

  @override
  String student(int count) {
    return 'estudyante';
  }

  @override
  String students(int count) {
    return 'mga estudyante';
  }

  @override
  String get deleteSession => 'Tanggalin ang Sesyon';

  @override
  String deleteSessionConfirm(String title) {
    return 'Sigurado ka bang gusto mong tanggalin ang \"$title\"?';
  }

  @override
  String get cancel => 'Kanselahin';

  @override
  String get delete => 'Tanggalin';

  @override
  String get createSession => 'Gumawa ng Sesyon';

  @override
  String get editSession => 'I-edit ang Sesyon';

  @override
  String get title => 'Pamagat';

  @override
  String get titleRequired => 'Pakipasok ang pamagat';

  @override
  String get startTime => 'Oras ng Simula';

  @override
  String get endTime => 'Oras ng Pagtatapos';

  @override
  String get endTimeAfterStart =>
      'Ang oras ng pagtatapos ay dapat na pagkatapos ng oras ng simula';

  @override
  String get descriptionOptional => 'Paglalarawan (opsyonal)';

  @override
  String get save => 'I-save';

  @override
  String get add => 'Magdagdag';

  @override
  String get edit => 'I-edit';

  @override
  String get allEvents => 'Lahat ng Mga Kaganapan';

  @override
  String get manageTemplates => 'Pamahalaan ang Mga Template';

  @override
  String get exportData => 'I-export ang Data';

  @override
  String get importData => 'I-import ang Data';

  @override
  String get saveExportFile => 'I-save ang Export File';

  @override
  String exportSuccessful(String path) {
    return 'Matagumpay ang export!\nNai-save sa: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Nabigo ang export: $error';
  }

  @override
  String get importSuccessful => 'Matagumpay ang Import';

  @override
  String get importFailed => 'Nabigo ang Import';

  @override
  String get errorReadingFile => 'Error sa pagbabasa ng file';

  @override
  String error(String error) {
    return 'Error: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Maghanap ng mga kaganapan...';

  @override
  String get noEventsScheduled => 'Walang naka-iskedyul na kaganapan';

  @override
  String get noEventsFound => 'Walang nahanap na kaganapan';

  @override
  String get createEventsFromCalendar =>
      'Gumawa ng mga kaganapan mula sa kalendaryo';

  @override
  String get studentsJoiningThisSession =>
      'Mga Estudyanteng Sumasali sa Sesyong Ito';

  @override
  String get addMember => 'Magdagdag ng Miyembro';

  @override
  String get noStudentsAddedYet => 'Wala pang naidagdag na estudyante';

  @override
  String get tapToAddMember => 'I-tap ang + upang magdagdag ng miyembro';

  @override
  String get allMembers => 'Lahat ng Mga Miyembro';

  @override
  String get addToSession => 'Idagdag sa sesyon';

  @override
  String get removeFromSession => 'Tanggalin sa sesyon';

  @override
  String get name => 'Pangalan';

  @override
  String get nameRequired => 'Pakipasok ang pangalan';

  @override
  String get nicknameOptional => 'Palayaw (opsyonal)';

  @override
  String get ageOptional => 'Edad (opsyonal)';

  @override
  String get ageInvalid => 'Pakipasok ang wastong edad';

  @override
  String get phoneNumberOptional => 'Numero ng Telepono (opsyonal)';

  @override
  String get phoneNumberHint => 'hal. +63 912 345 6789';

  @override
  String get addMemberTitle => 'Magdagdag ng Miyembro';

  @override
  String get editMemberTitle => 'I-edit ang Miyembro';

  @override
  String get member => 'Miyembro';

  @override
  String nameLabel(String name) {
    return 'Pangalan: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Edad: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Telepono: $phone';
  }

  @override
  String get templateOptional => 'Template (opsyonal)';

  @override
  String get none => 'Wala';

  @override
  String get saveAsTemplate => 'I-save bilang template';

  @override
  String get saveAsTemplateSubtitle =>
      'Gamitin ang sesyong ito bilang template para sa mga susunod na sesyon';

  @override
  String get templateName => 'Pangalan ng Template';

  @override
  String get templateNameHelper =>
      'Pangalan upang makilala ang template na ito';

  @override
  String get templateNameRequired => 'Pakipasok ang pangalan ng template';

  @override
  String get defaultSessionTitle => 'Default na Pamagat ng Sesyon';

  @override
  String get defaultSessionTitleHelper =>
      'Pamagat na ginagamit kapag gumagawa ng mga sesyon mula sa template na ito';

  @override
  String get sessionTitleRequired => 'Pakipasok ang pamagat ng sesyon';

  @override
  String get createTemplate => 'Gumawa ng Template';

  @override
  String get editTemplate => 'I-edit ang Template';

  @override
  String get create => 'Gumawa';

  @override
  String get templateNameDialogTitle => 'Pangalan ng Template';

  @override
  String get templateNameDialogHelper =>
      'Bigyan ng pangalan ang template na ito para sa madaling pagkakakilanlan';

  @override
  String get templateManagement => 'Pamamahala ng Template';

  @override
  String get noTemplatesYet => 'Wala pang mga template';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Gumawa ng sesyon at i-check ang \"I-save bilang template\"';

  @override
  String get deleteTemplate => 'Tanggalin ang Template';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Sigurado ka bang gusto mong tanggalin ang \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Sesyon: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'I-save bilang Template';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Matagumpay na nai-save ang template \"$name\"';
  }

  @override
  String get debug => 'DEBUG';

  @override
  String get debugDateSimulation => 'Debug Date Simulation';

  @override
  String get setCustomDate => 'Itakda ang Custom Date';

  @override
  String get clear => 'Linisin';

  @override
  String now(String date) {
    return 'Ngayon: $date';
  }

  @override
  String get today => 'Ngayon';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get tomorrow => 'Bukas';

  @override
  String daysAgo(int count) {
    return '$count araw na ang nakalipas';
  }

  @override
  String daysLater(int count) {
    return '$count araw mula ngayon';
  }
}
