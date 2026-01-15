// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Hafta Rezervasyonu';

  @override
  String get selectWeek => 'Hafta Seç';

  @override
  String get mon => 'Pzt';

  @override
  String get tue => 'Sal';

  @override
  String get wed => 'Çar';

  @override
  String get thu => 'Per';

  @override
  String get fri => 'Cum';

  @override
  String get sat => 'Cmt';

  @override
  String get sun => 'Paz';

  @override
  String get noSessionsScheduled => 'Planlanmış oturum yok';

  @override
  String get tapToAddSession => 'Oturum eklemek için + düğmesine dokunun';

  @override
  String student(int count) {
    return 'öğrenci';
  }

  @override
  String students(int count) {
    return 'öğrenci';
  }

  @override
  String get deleteSession => 'Oturumu Sil';

  @override
  String deleteSessionConfirm(String title) {
    return '\"$title\" oturumunu silmek istediğinizden emin misiniz?';
  }

  @override
  String get cancel => 'İptal';

  @override
  String get delete => 'Sil';

  @override
  String get createSession => 'Oturum Oluştur';

  @override
  String get editSession => 'Oturumu Düzenle';

  @override
  String get title => 'Başlık';

  @override
  String get titleRequired => 'Lütfen bir başlık girin';

  @override
  String get startTime => 'Başlangıç Saati';

  @override
  String get endTime => 'Bitiş Saati';

  @override
  String get endTimeAfterStart =>
      'Bitiş saati başlangıç saatinden sonra olmalıdır';

  @override
  String get descriptionOptional => 'Açıklama (isteğe bağlı)';

  @override
  String get save => 'Kaydet';

  @override
  String get add => 'Ekle';

  @override
  String get edit => 'Düzenle';

  @override
  String get allEvents => 'Tüm Etkinlikler';

  @override
  String get manageTemplates => 'Şablonları Yönet';

  @override
  String get exportData => 'Verileri Dışa Aktar';

  @override
  String get importData => 'Verileri İçe Aktar';

  @override
  String get saveExportFile => 'Dışa Aktarma Dosyasını Kaydet';

  @override
  String exportSuccessful(String path) {
    return 'Dışa aktarma başarılı!\nKaydedildi: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Dışa aktarma başarısız: $error';
  }

  @override
  String get importSuccessful => 'İçe Aktarma Başarılı';

  @override
  String get importFailed => 'İçe Aktarma Başarısız';

  @override
  String get errorReadingFile => 'Dosya okuma hatası';

  @override
  String error(String error) {
    return 'Hata: $error';
  }

  @override
  String get ok => 'Tamam';

  @override
  String get searchEvents => 'Etkinlik ara...';

  @override
  String get noEventsScheduled => 'Planlanmış etkinlik yok';

  @override
  String get noEventsFound => 'Etkinlik bulunamadı';

  @override
  String get createEventsFromCalendar => 'Takvimden etkinlik oluştur';

  @override
  String get studentsJoiningThisSession => 'Bu Oturuma Katılan Öğrenciler';

  @override
  String get addMember => 'Üye Ekle';

  @override
  String get noStudentsAddedYet => 'Henüz öğrenci eklenmedi';

  @override
  String get tapToAddMember => 'Üye eklemek için + dokunun';

  @override
  String get allMembers => 'Tüm Üyeler';

  @override
  String get addToSession => 'Oturuma ekle';

  @override
  String get removeFromSession => 'Oturumdan çıkar';

  @override
  String get name => 'İsim';

  @override
  String get nameRequired => 'Lütfen bir isim girin';

  @override
  String get nicknameOptional => 'Takma ad (isteğe bağlı)';

  @override
  String get ageOptional => 'Yaş (isteğe bağlı)';

  @override
  String get ageInvalid => 'Lütfen geçerli bir yaş girin';

  @override
  String get phoneNumberOptional => 'Telefon Numarası (isteğe bağlı)';

  @override
  String get phoneNumberHint => 'örn: +90 212 123 4567';

  @override
  String get addMemberTitle => 'Üye Ekle';

  @override
  String get editMemberTitle => 'Üyeyi Düzenle';

  @override
  String get member => 'Üye';

  @override
  String nameLabel(String name) {
    return 'İsim: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Yaş: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Telefon: $phone';
  }

  @override
  String get templateOptional => 'Şablon (isteğe bağlı)';

  @override
  String get none => 'Yok';

  @override
  String get saveAsTemplate => 'Şablon olarak kaydet';

  @override
  String get saveAsTemplateSubtitle =>
      'Bu oturumu gelecekteki oturumlar için şablon olarak kullan';

  @override
  String get templateName => 'Şablon Adı';

  @override
  String get templateNameHelper => 'Bu şablonu tanımlamak için ad';

  @override
  String get templateNameRequired => 'Lütfen bir şablon adı girin';

  @override
  String get defaultSessionTitle => 'Varsayılan Oturum Başlığı';

  @override
  String get defaultSessionTitleHelper =>
      'Bu şablondan oturum oluştururken kullanılan başlık';

  @override
  String get sessionTitleRequired => 'Lütfen bir oturum başlığı girin';

  @override
  String get createTemplate => 'Şablon Oluştur';

  @override
  String get editTemplate => 'Şablonu Düzenle';

  @override
  String get create => 'Oluştur';

  @override
  String get templateNameDialogTitle => 'Şablon Adı';

  @override
  String get templateNameDialogHelper =>
      'Kolay tanımlama için bu şablona bir ad verin';

  @override
  String get templateManagement => 'Şablon Yönetimi';

  @override
  String get noTemplatesYet => 'Henüz şablon yok';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Bir oturum oluşturun ve \"Şablon olarak kaydet\" seçeneğini işaretleyin';

  @override
  String get deleteTemplate => 'Şablonu Sil';

  @override
  String deleteTemplateConfirm(String title) {
    return '\"$title\" şablonunu silmek istediğinizden emin misiniz?';
  }

  @override
  String session(String title) {
    return 'Oturum: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Şablon Olarak Kaydet';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Şablon \"$name\" başarıyla kaydedildi';
  }

  @override
  String get debug => 'HATA AYIKLAMA';

  @override
  String get debugDateSimulation => 'Hata Ayıklama Tarih Simülasyonu';

  @override
  String get setCustomDate => 'Özel Tarih Ayarla';

  @override
  String get clear => 'Temizle';

  @override
  String now(String date) {
    return 'Şimdi: $date';
  }

  @override
  String get today => 'Bugün';

  @override
  String get yesterday => 'Dün';

  @override
  String get tomorrow => 'Yarın';

  @override
  String daysAgo(int count) {
    return '$count gün önce';
  }

  @override
  String daysLater(int count) {
    return '$count gün sonra';
  }

  @override
  String get notificationSettings => 'Bildirim ayarları';

  @override
  String get notificationTiming => 'Bildirim zamanlaması';

  @override
  String get notificationTimingDescription =>
      'Her oturum başlamadan önce bildirimleri ne zaman almak istediğinizi seçin';

  @override
  String get atEventStart => 'Etkinlik başlangıcında';

  @override
  String beforeEventStart(String timing) {
    return 'Etkinlik başlangıcından $timing önce';
  }

  @override
  String get notificationTimingUpdated => 'Bildirim zamanlaması güncellendi';

  @override
  String get aboutNotifications => 'Bildirimler hakkında';

  @override
  String get notificationInfo =>
      'Her planlanmış oturum başlamadan önce bildirimler alacaksınız. Oturumlar oluşturduğunuzda veya güncellediğinizde bildirimler otomatik olarak planlanır ve uygulama başlatıldığında tüm mevcut oturumlar planlanır.';

  @override
  String get rescheduleNotifications => 'Bildirimleri yeniden planla';

  @override
  String get rescheduleNotificationsDescription =>
      'Tüm mevcut gelecek oturumlar için bildirimleri manuel olarak yeniden planlayın. Bildirimleri yeni etkinleştirdiyseniz veya tüm etkinliklerin planlanmış bildirimlere sahip olduğundan emin olmak istiyorsanız yararlıdır.';

  @override
  String get rescheduleNow => 'Şimdi yeniden planla';

  @override
  String get rescheduling => 'Yeniden planlanıyor...';

  @override
  String notificationsRescheduled(int count) {
    return '$count gelecek oturum için bildirimler yeniden planlandı';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Bildirimleri yeniden planlarken hata: $error';
  }

  @override
  String get permissionsRequired => 'Bildirim izinleri gerekli';

  @override
  String get permissionsRequiredDescription =>
      'Oturumlarınız için hatırlatıcılar almak için lütfen bildirim izinleri verin. İzin istemek için aşağıdaki düğmeye dokunun.';

  @override
  String get requestPermissions => 'İzin iste';

  @override
  String get permissionsGranted => 'Bildirim izinleri verildi!';

  @override
  String get permissionsDenied =>
      'Bildirim izinleri reddedildi. Lütfen Ayarlar\'da etkinleştirin.';

  @override
  String get timing0Min => '0 dk';

  @override
  String get timing1Min => '1 dk';

  @override
  String get timing5Mins => '5 dk';

  @override
  String get timing30Mins => '30 dk';

  @override
  String get timing1Hour => '1 saat';

  @override
  String get timing6Hours => '6 saat';

  @override
  String timingMinutes(int count) {
    return '$count dk';
  }

  @override
  String timingHours(int count) {
    return '$count saat';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count saat';
  }

  @override
  String get testNotifications => 'Test Bildirimleri';

  @override
  String get testNotificationsDescription =>
      'Bildirimlerin çalışıp çalışmadığını doğrulamak için 2 saniye içinde bir test bildirimi gönderin.';

  @override
  String get sendTestNotification => 'Test bildirimi gönder';

  @override
  String get testNotificationScheduled =>
      'Test bildirimi zamanlandı! 2 saniye içinde kontrol edin.';

  @override
  String get testNotificationTitle => 'Test Bildirimi';

  @override
  String get testNotificationBody =>
      'Bunu görüyorsanız, bildirimler çalışıyor!';

  @override
  String get scheduledTestNotificationTitle => 'Zamanlanmış test bildirimi';

  @override
  String get scheduledTestNotificationBody => 'Bu 2 saniye önce zamanlandı';

  @override
  String startsAt(String time) {
    return '$time da başlıyor';
  }

  @override
  String get themeSettings => 'Tema ayarları';

  @override
  String get selectTheme => 'Tema seç';

  @override
  String get selectThemeDescription =>
      'Uygulama için bir renk teması seçin. Tema tüm uygulamaya uygulanacaktır.';

  @override
  String get themeChanged => 'Tema başarıyla değiştirildi!';

  @override
  String get aboutTheme => 'Temalar hakkında';

  @override
  String get themeInfo =>
      'Temayı değiştirmek, uygulama çubukları, düğmeler ve diğer kullanıcı arayüzü öğeleri dahil olmak üzere uygulama genelindeki renkleri güncelleyecektir. Tema tercihiniz kaydedilecek ve uygulamayı yeniden başlattığınızda otomatik olarak uygulanacaktır.';

  @override
  String get enableNotifications => 'Bildirimleri etkinleştir';

  @override
  String get enableNotificationsDescription =>
      'Bildirimleri açın veya kapatın. Devre dışı bırakıldığında, oturumlarınız için bildirim gönderilmeyecektir.';

  @override
  String get notificationsEnabled => 'Bildirimler etkinleştirildi';

  @override
  String get notificationsDisabled => 'Bildirimler devre dışı bırakıldı';
}
