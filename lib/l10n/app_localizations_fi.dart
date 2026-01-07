// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Varaa Viikot';

  @override
  String get selectWeek => 'Valitse Viikko';

  @override
  String get mon => 'Ma';

  @override
  String get tue => 'Ti';

  @override
  String get wed => 'Ke';

  @override
  String get thu => 'To';

  @override
  String get fri => 'Pe';

  @override
  String get sat => 'La';

  @override
  String get sun => 'Su';

  @override
  String get noSessionsScheduled => 'Ei ajoitettuja istuntoja';

  @override
  String get tapToAddSession => 'Napauta + -painiketta lisätäksesi istunnon';

  @override
  String student(int count) {
    return 'opiskelija';
  }

  @override
  String students(int count) {
    return 'opiskelijaa';
  }

  @override
  String get deleteSession => 'Poista Istunto';

  @override
  String deleteSessionConfirm(String title) {
    return 'Haluatko varmasti poistaa \"$title\"?';
  }

  @override
  String get cancel => 'Peruuta';

  @override
  String get delete => 'Poista';

  @override
  String get createSession => 'Luo Istunto';

  @override
  String get editSession => 'Muokkaa Istuntoa';

  @override
  String get title => 'Otsikko';

  @override
  String get titleRequired => 'Anna otsikko';

  @override
  String get startTime => 'Aloitusaika';

  @override
  String get endTime => 'Lopetusaika';

  @override
  String get endTimeAfterStart => 'Lopetusaika on oltava aloitusajan jälkeen';

  @override
  String get descriptionOptional => 'Kuvaus (valinnainen)';

  @override
  String get save => 'Tallenna';

  @override
  String get add => 'Lisää';

  @override
  String get edit => 'Muokkaa';

  @override
  String get allEvents => 'Kaikki Tapahtumat';

  @override
  String get manageTemplates => 'Hallitse Mallipohjia';

  @override
  String get exportData => 'Vie Tiedot';

  @override
  String get importData => 'Tuo Tiedot';

  @override
  String get saveExportFile => 'Tallenna Vie-tiedosto';

  @override
  String exportSuccessful(String path) {
    return 'Vienti onnistui!\nTallennettu: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Vienti epäonnistui: $error';
  }

  @override
  String get importSuccessful => 'Tuonti Onnistui';

  @override
  String get importFailed => 'Tuonti Epäonnistui';

  @override
  String get errorReadingFile => 'Virhe tiedoston lukemisessa';

  @override
  String error(String error) {
    return 'Virhe: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Etsi tapahtumia...';

  @override
  String get noEventsScheduled => 'Ei ajoitettuja tapahtumia';

  @override
  String get noEventsFound => 'Tapahtumia ei löytynyt';

  @override
  String get createEventsFromCalendar => 'Luo tapahtumia kalenterista';

  @override
  String get studentsJoiningThisSession =>
      'Tähän Istuntoon Osallistuvat Opiskelijat';

  @override
  String get addMember => 'Lisää Jäsen';

  @override
  String get noStudentsAddedYet => 'Opiskelijoita ei ole vielä lisätty';

  @override
  String get tapToAddMember => 'Napauta + lisätäksesi jäsenen';

  @override
  String get allMembers => 'Kaikki Jäsenet';

  @override
  String get addToSession => 'Lisää istuntoon';

  @override
  String get removeFromSession => 'Poista istunnosta';

  @override
  String get name => 'Nimi';

  @override
  String get nameRequired => 'Anna nimi';

  @override
  String get nicknameOptional => 'Lempinimi (valinnainen)';

  @override
  String get ageOptional => 'Ikä (valinnainen)';

  @override
  String get ageInvalid => 'Anna kelvollinen ikä';

  @override
  String get phoneNumberOptional => 'Puhelinnumero (valinnainen)';

  @override
  String get phoneNumberHint => 'esim. +358 12 345 6789';

  @override
  String get addMemberTitle => 'Lisää Jäsen';

  @override
  String get editMemberTitle => 'Muokkaa Jäsentä';

  @override
  String get member => 'Jäsen';

  @override
  String nameLabel(String name) {
    return 'Nimi: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Ikä: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Puhelin: $phone';
  }

  @override
  String get templateOptional => 'Mallipohja (valinnainen)';

  @override
  String get none => 'Ei mitään';

  @override
  String get saveAsTemplate => 'Tallenna mallipohjaksi';

  @override
  String get saveAsTemplateSubtitle =>
      'Käytä tätä istuntoa mallipohjana tuleville istunnoille';

  @override
  String get templateName => 'Mallipohjan Nimi';

  @override
  String get templateNameHelper => 'Nimi tämän mallipohjan tunnistamiseen';

  @override
  String get templateNameRequired => 'Anna mallipohjan nimi';

  @override
  String get defaultSessionTitle => 'Oletusistunnon Otsikko';

  @override
  String get defaultSessionTitleHelper =>
      'Otsikko, jota käytetään tämän mallipohjan perusteella luotavissa istunnoissa';

  @override
  String get sessionTitleRequired => 'Anna istunnon otsikko';

  @override
  String get createTemplate => 'Luo Mallipohja';

  @override
  String get editTemplate => 'Muokkaa Mallipohjaa';

  @override
  String get create => 'Luo';

  @override
  String get templateNameDialogTitle => 'Mallipohjan Nimi';

  @override
  String get templateNameDialogHelper =>
      'Anna tälle mallipohjalle nimi helpon tunnistamisen vuoksi';

  @override
  String get templateManagement => 'Mallipohjien Hallinta';

  @override
  String get noTemplatesYet => 'Ei vielä mallipohjia';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Luo istunto ja valitse \"Tallenna mallipohjaksi\"';

  @override
  String get deleteTemplate => 'Poista Mallipohja';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Haluatko varmasti poistaa \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Istunto: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Tallenna Mallipohjaksi';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Mallipohja \"$name\" tallennettu onnistuneesti';
  }

  @override
  String get debug => 'VIRHEENKORJAUS';

  @override
  String get debugDateSimulation => 'Virheenkorjauksen Päivämäärän Simulointi';

  @override
  String get setCustomDate => 'Aseta Mukautettu Päivämäärä';

  @override
  String get clear => 'Tyhjennä';

  @override
  String now(String date) {
    return 'Nyt: $date';
  }

  @override
  String get today => 'Tänään';

  @override
  String get yesterday => 'Eilen';

  @override
  String get tomorrow => 'Huomenna';

  @override
  String daysAgo(int count) {
    return '$count päivää sitten';
  }

  @override
  String daysLater(int count) {
    return '$count päivän kuluttua';
  }
}
