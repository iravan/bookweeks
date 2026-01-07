// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'અઠવાડિયા બુકિંગ';

  @override
  String get selectWeek => 'અઠવાડિયો પસંદ કરો';

  @override
  String get mon => 'સોમ';

  @override
  String get tue => 'મંગળ';

  @override
  String get wed => 'બુધ';

  @override
  String get thu => 'ગુરુ';

  @override
  String get fri => 'શુક્ર';

  @override
  String get sat => 'શનિ';

  @override
  String get sun => 'રવિ';

  @override
  String get noSessionsScheduled => 'કોઈ સત્ર શેડ્યૂલ નથી';

  @override
  String get tapToAddSession => 'સત્ર ઉમેરવા માટે + બટન ટેપ કરો';

  @override
  String student(int count) {
    return 'વિદ્યાર્થી';
  }

  @override
  String students(int count) {
    return 'વિદ્યાર્થીઓ';
  }

  @override
  String get deleteSession => 'સત્ર કાઢી નાખો';

  @override
  String deleteSessionConfirm(String title) {
    return 'શું તમે ખરેખર \"$title\" કાઢી નાખવા માંગો છો?';
  }

  @override
  String get cancel => 'રદ કરો';

  @override
  String get delete => 'કાઢી નાખો';

  @override
  String get createSession => 'સત્ર બનાવો';

  @override
  String get editSession => 'સત્ર સંપાદિત કરો';

  @override
  String get title => 'શીર્ષક';

  @override
  String get titleRequired => 'કૃપા કરીને શીર્ષક દાખલ કરો';

  @override
  String get startTime => 'શરૂઆતનો સમય';

  @override
  String get endTime => 'સમાપ્તિનો સમય';

  @override
  String get endTimeAfterStart => 'સમાપ્તિનો સમય શરૂઆતના સમય પછી હોવો જોઈએ';

  @override
  String get descriptionOptional => 'વર્ણન (વૈકલ્પિક)';

  @override
  String get save => 'સાચવો';

  @override
  String get add => 'ઉમેરો';

  @override
  String get edit => 'સંપાદિત કરો';

  @override
  String get allEvents => 'બધા ઇવેન્ટ્સ';

  @override
  String get manageTemplates => 'ટેમ્પ્લેટ્સ મેનેજ કરો';

  @override
  String get exportData => 'ડેટા એક્સપોર્ટ કરો';

  @override
  String get importData => 'ડેટા ઇમ્પોર્ટ કરો';

  @override
  String get saveExportFile => 'એક્સપોર્ટ ફાઇલ સાચવો';

  @override
  String exportSuccessful(String path) {
    return 'એક્સપોર્ટ સફળ!\nસાચવ્યું: $path';
  }

  @override
  String exportFailed(String error) {
    return 'એક્સપોર્ટ નિષ્ફળ: $error';
  }

  @override
  String get importSuccessful => 'ઇમ્પોર્ટ સફળ';

  @override
  String get importFailed => 'ઇમ્પોર્ટ નિષ્ફળ';

  @override
  String get errorReadingFile => 'ફાઇલ વાંચવામાં ભૂલ';

  @override
  String error(String error) {
    return 'ભૂલ: $error';
  }

  @override
  String get ok => 'ઠીક છે';

  @override
  String get searchEvents => 'ઇવેન્ટ્સ શોધો...';

  @override
  String get noEventsScheduled => 'કોઈ ઇવેન્ટ્સ શેડ્યૂલ નથી';

  @override
  String get noEventsFound => 'ઇવેન્ટ્સ મળ્યા નથી';

  @override
  String get createEventsFromCalendar => 'કેલેન્ડરમાંથી ઇવેન્ટ્સ બનાવો';

  @override
  String get studentsJoiningThisSession => 'આ સત્રમાં જોડાતા વિદ્યાર્થીઓ';

  @override
  String get addMember => 'સભ્ય ઉમેરો';

  @override
  String get noStudentsAddedYet => 'હજુ સુધી કોઈ વિદ્યાર્થીઓ ઉમેરાયા નથી';

  @override
  String get tapToAddMember => '+ ટેપ કરીને સભ્ય ઉમેરો';

  @override
  String get allMembers => 'બધા સભ્યો';

  @override
  String get addToSession => 'સત્રમાં ઉમેરો';

  @override
  String get removeFromSession => 'સત્રમાંથી કાઢો';

  @override
  String get name => 'નામ';

  @override
  String get nameRequired => 'કૃપા કરીને નામ દાખલ કરો';

  @override
  String get nicknameOptional => 'ઉપનામ (વૈકલ્પિક)';

  @override
  String get ageOptional => 'ઉંમર (વૈકલ્પિક)';

  @override
  String get ageInvalid => 'કૃપા કરીને માન્ય ઉંમર દાખલ કરો';

  @override
  String get phoneNumberOptional => 'ફોન નંબર (વૈકલ્પિક)';

  @override
  String get phoneNumberHint => 'ઉદા: +91 98765 43210';

  @override
  String get addMemberTitle => 'સભ્ય ઉમેરો';

  @override
  String get editMemberTitle => 'સભ્ય સંપાદિત કરો';

  @override
  String get member => 'સભ્ય';

  @override
  String nameLabel(String name) {
    return 'નામ: $name';
  }

  @override
  String ageLabel(int age) {
    return 'ઉંમર: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'ફોન: $phone';
  }

  @override
  String get templateOptional => 'ટેમ્પ્લેટ (વૈકલ્પિક)';

  @override
  String get none => 'કંઈ નહીં';

  @override
  String get saveAsTemplate => 'ટેમ્પ્લેટ તરીકે સાચવો';

  @override
  String get saveAsTemplateSubtitle =>
      'ભવિષ્યના સત્રો માટે આ સત્રને ટેમ્પ્લેટ તરીકે વાપરો';

  @override
  String get templateName => 'ટેમ્પ્લેટ નામ';

  @override
  String get templateNameHelper => 'આ ટેમ્પ્લેટને ઓળખવા માટે નામ';

  @override
  String get templateNameRequired => 'કૃપા કરીને ટેમ્પ્લેટ નામ દાખલ કરો';

  @override
  String get defaultSessionTitle => 'ડિફૉલ્ટ સત્ર શીર્ષક';

  @override
  String get defaultSessionTitleHelper =>
      'આ ટેમ્પ્લેટમાંથી સત્ર બનાવતી વખતે વપરાયેલું શીર્ષક';

  @override
  String get sessionTitleRequired => 'કૃપા કરીને સત્ર શીર્ષક દાખલ કરો';

  @override
  String get createTemplate => 'ટેમ્પ્લેટ બનાવો';

  @override
  String get editTemplate => 'ટેમ્પ્લેટ સંપાદિત કરો';

  @override
  String get create => 'બનાવો';

  @override
  String get templateNameDialogTitle => 'ટેમ્પ્લેટ નામ';

  @override
  String get templateNameDialogHelper => 'સરળ ઓળખ માટે આ ટેમ્પ્લેટને નામ આપો';

  @override
  String get templateManagement => 'ટેમ્પ્લેટ મેનેજમેન્ટ';

  @override
  String get noTemplatesYet => 'હજુ સુધી કોઈ ટેમ્પ્લેટ્સ નથી';

  @override
  String get createSessionAndSaveAsTemplate =>
      'સત્ર બનાવો અને \"ટેમ્પ્લેટ તરીકે સાચવો\" પસંદ કરો';

  @override
  String get deleteTemplate => 'ટેમ્પ્લેટ કાઢી નાખો';

  @override
  String deleteTemplateConfirm(String title) {
    return 'શું તમે ખરેખર \"$title\" કાઢી નાખવા માંગો છો?';
  }

  @override
  String session(String title) {
    return 'સત્ર: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'ટેમ્પ્લેટ તરીકે સાચવો';

  @override
  String templateSavedSuccessfully(String name) {
    return 'ટેમ્પ્લેટ \"$name\" સફળતાપૂર્વક સાચવ્યું';
  }

  @override
  String get debug => 'ડીબગ';

  @override
  String get debugDateSimulation => 'ડીબગ તારીખ સિમ્યુલેશન';

  @override
  String get setCustomDate => 'કસ્ટમ તારીખ સેટ કરો';

  @override
  String get clear => 'સાફ કરો';

  @override
  String now(String date) {
    return 'હવે: $date';
  }

  @override
  String get today => 'આજે';

  @override
  String get yesterday => 'ગઈકાલે';

  @override
  String get tomorrow => 'આવતીકાલે';

  @override
  String daysAgo(int count) {
    return '$count દિવસ પહેલાં';
  }

  @override
  String daysLater(int count) {
    return '$count દિવસ પછી';
  }
}
