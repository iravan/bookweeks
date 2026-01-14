// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Reserva Semanal';

  @override
  String get selectWeek => 'Seleccionar Semana';

  @override
  String get mon => 'Lun';

  @override
  String get tue => 'Mar';

  @override
  String get wed => 'Mié';

  @override
  String get thu => 'Jue';

  @override
  String get fri => 'Vie';

  @override
  String get sat => 'Sáb';

  @override
  String get sun => 'Dom';

  @override
  String get noSessionsScheduled => 'No hay sesiones programadas';

  @override
  String get tapToAddSession => 'Toca el botón + para agregar una sesión';

  @override
  String student(int count) {
    return 'estudiante';
  }

  @override
  String students(int count) {
    return 'estudiantes';
  }

  @override
  String get deleteSession => 'Eliminar Sesión';

  @override
  String deleteSessionConfirm(String title) {
    return '¿Estás seguro de que quieres eliminar «$title»?';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get createSession => 'Crear Sesión';

  @override
  String get editSession => 'Editar Sesión';

  @override
  String get title => 'Título';

  @override
  String get titleRequired => 'Por favor ingresa un título';

  @override
  String get startTime => 'Hora de Inicio';

  @override
  String get endTime => 'Hora de Fin';

  @override
  String get endTimeAfterStart =>
      'La hora de fin debe ser posterior a la hora de inicio';

  @override
  String get descriptionOptional => 'Descripción (opcional)';

  @override
  String get save => 'Guardar';

  @override
  String get add => 'Agregar';

  @override
  String get edit => 'Editar';

  @override
  String get allEvents => 'Todos los Eventos';

  @override
  String get manageTemplates => 'Gestionar Plantillas';

  @override
  String get exportData => 'Exportar Datos';

  @override
  String get importData => 'Importar Datos';

  @override
  String get saveExportFile => 'Guardar Archivo de Exportación';

  @override
  String exportSuccessful(String path) {
    return '¡Exportación exitosa!\nGuardado en: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Error en la exportación: $error';
  }

  @override
  String get importSuccessful => 'Importación Exitosa';

  @override
  String get importFailed => 'Error en la Importación';

  @override
  String get errorReadingFile => 'Error al leer el archivo';

  @override
  String error(String error) {
    return 'Error: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Buscar eventos...';

  @override
  String get noEventsScheduled => 'No hay eventos programados';

  @override
  String get noEventsFound => 'No se encontraron eventos';

  @override
  String get createEventsFromCalendar => 'Crear eventos desde el calendario';

  @override
  String get studentsJoiningThisSession =>
      'Estudiantes que Participan en Esta Sesión';

  @override
  String get addMember => 'Agregar Miembro';

  @override
  String get noStudentsAddedYet => 'Aún no se han agregado estudiantes';

  @override
  String get tapToAddMember => 'Toca + para agregar un miembro';

  @override
  String get allMembers => 'Todos los Miembros';

  @override
  String get addToSession => 'Agregar a la sesión';

  @override
  String get removeFromSession => 'Quitar de la sesión';

  @override
  String get name => 'Nombre';

  @override
  String get nameRequired => 'Por favor ingresa un nombre';

  @override
  String get nicknameOptional => 'Apodo (opcional)';

  @override
  String get ageOptional => 'Edad (opcional)';

  @override
  String get ageInvalid => 'Por favor ingresa una edad válida';

  @override
  String get phoneNumberOptional => 'Número de Teléfono (opcional)';

  @override
  String get phoneNumberHint => 'ej.: +34 612 345 678';

  @override
  String get addMemberTitle => 'Agregar Miembro';

  @override
  String get editMemberTitle => 'Editar Miembro';

  @override
  String get member => 'Miembro';

  @override
  String nameLabel(String name) {
    return 'Nombre: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Edad: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Teléfono: $phone';
  }

  @override
  String get templateOptional => 'Plantilla (opcional)';

  @override
  String get none => 'Ninguno';

  @override
  String get saveAsTemplate => 'Guardar como plantilla';

  @override
  String get saveAsTemplateSubtitle =>
      'Usar esta sesión como plantilla para sesiones futuras';

  @override
  String get templateName => 'Nombre de la Plantilla';

  @override
  String get templateNameHelper => 'Nombre para identificar esta plantilla';

  @override
  String get templateNameRequired => 'Por favor ingresa un nombre de plantilla';

  @override
  String get defaultSessionTitle => 'Título de Sesión por Defecto';

  @override
  String get defaultSessionTitleHelper =>
      'Título usado al crear sesiones desde esta plantilla';

  @override
  String get sessionTitleRequired => 'Por favor ingresa un título de sesión';

  @override
  String get createTemplate => 'Crear Plantilla';

  @override
  String get editTemplate => 'Editar Plantilla';

  @override
  String get create => 'Crear';

  @override
  String get templateNameDialogTitle => 'Nombre de la Plantilla';

  @override
  String get templateNameDialogHelper =>
      'Asigna un nombre a esta plantilla para facilitar su identificación';

  @override
  String get templateManagement => 'Gestión de Plantillas';

  @override
  String get noTemplatesYet => 'Aún no hay plantillas';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Crea una sesión y marca «Guardar como plantilla»';

  @override
  String get deleteTemplate => 'Eliminar Plantilla';

  @override
  String deleteTemplateConfirm(String title) {
    return '¿Estás seguro de que quieres eliminar «$title»?';
  }

  @override
  String session(String title) {
    return 'Sesión: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Guardar como plantilla';

  @override
  String templateSavedSuccessfully(String name) {
    return 'La plantilla «$name» se guardó exitosamente';
  }

  @override
  String get debug => 'DEPURACIÓN';

  @override
  String get debugDateSimulation => 'Simulación de Fecha de Depuración';

  @override
  String get setCustomDate => 'Establecer Fecha Personalizada';

  @override
  String get clear => 'Limpiar';

  @override
  String now(String date) {
    return 'Ahora: $date';
  }

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String get tomorrow => 'Mañana';

  @override
  String daysAgo(int count) {
    return 'Hace $count día';
  }

  @override
  String daysLater(int count) {
    return 'En $count día';
  }

  @override
  String get notificationSettings => 'Configuración de notificaciones';

  @override
  String get notificationTiming => 'Hora de las notificaciones';

  @override
  String get notificationTimingDescription =>
      'Elija cuándo recibir notificaciones antes de que comience cada sesión';

  @override
  String get atEventStart => 'Al inicio del evento';

  @override
  String beforeEventStart(String timing) {
    return '$timing antes del inicio del evento';
  }

  @override
  String get notificationTimingUpdated =>
      'Hora de las notificaciones actualizada';

  @override
  String get aboutNotifications => 'Acerca de las notificaciones';

  @override
  String get notificationInfo =>
      'Recibirá notificaciones antes de que comience cada sesión programada. Las notificaciones se programan automáticamente al crear o actualizar sesiones, y todas las sesiones existentes se programan cuando se inicia la aplicación.';

  @override
  String get rescheduleNotifications => 'Reprogramar notificaciones';

  @override
  String get rescheduleNotificationsDescription =>
      'Reprograme manualmente las notificaciones para todas las sesiones futuras existentes. Útil si acaba de habilitar las notificaciones o desea asegurarse de que todos los eventos tengan notificaciones programadas.';

  @override
  String get rescheduleNow => 'Reprogramar ahora';

  @override
  String get rescheduling => 'Reprogramando...';

  @override
  String notificationsRescheduled(int count) {
    return 'Notificaciones reprogramadas para $count sesión(es) futura(s)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Error al reprogramar notificaciones: $error';
  }

  @override
  String get permissionsRequired => 'Se requieren permisos de notificación';

  @override
  String get permissionsRequiredDescription =>
      'Por favor, otorgue permisos de notificación para recibir recordatorios de sus sesiones. Toque el botón a continuación para solicitar permisos.';

  @override
  String get requestPermissions => 'Solicitar permisos';

  @override
  String get permissionsGranted => '¡Permisos de notificación otorgados!';

  @override
  String get permissionsDenied =>
      'Los permisos de notificación fueron denegados. Por favor, actívelos en Configuración.';

  @override
  String get timing0Min => '0 min';

  @override
  String get timing1Min => '1 min';

  @override
  String get timing5Mins => '5 min';

  @override
  String get timing30Mins => '30 min';

  @override
  String get timing1Hour => '1 hora';

  @override
  String get timing6Hours => '6 horas';

  @override
  String timingMinutes(int count) {
    return '$count min';
  }

  @override
  String timingHours(int count) {
    return '$count hora';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count horas';
  }

  @override
  String get testNotifications => 'Notificaciones de prueba';

  @override
  String get testNotificationsDescription =>
      'Enviar una notificación de prueba en 2 segundos para verificar que las notificaciones funcionan.';

  @override
  String get sendTestNotification => 'Enviar notificación de prueba';

  @override
  String get testNotificationScheduled =>
      '¡Notificación de prueba programada! Verifica en 2 segundos.';

  @override
  String get testNotificationTitle => 'Notificación de prueba';

  @override
  String get testNotificationBody =>
      'Si ves esto, ¡las notificaciones están funcionando!';

  @override
  String get scheduledTestNotificationTitle =>
      'Notificación de prueba programada';

  @override
  String get scheduledTestNotificationBody =>
      'Esto se programó hace 2 segundos';

  @override
  String startsAt(String time) {
    return 'Comienza a las $time';
  }

  @override
  String get themeSettings => 'Configuración del tema';

  @override
  String get selectTheme => 'Seleccionar tema';

  @override
  String get selectThemeDescription =>
      'Elige un tema de color para la aplicación. El tema se aplicará en toda la aplicación.';

  @override
  String get themeChanged => '¡Tema cambiado con éxito!';

  @override
  String get aboutTheme => 'Acerca de los temas';

  @override
  String get themeInfo =>
      'Cambiar el tema actualizará los colores en toda la aplicación, incluyendo botones, barras de aplicación y otros elementos de la interfaz. Tu preferencia de tema se guardará y se aplicará automáticamente cuando reinicies la aplicación.';
}

/// The translations for Spanish Castilian, as used in Mexico (`es_MX`).
class AppLocalizationsEsMx extends AppLocalizationsEs {
  AppLocalizationsEsMx() : super('es_MX');

  @override
  String get appTitle => 'Reservar Semanas';

  @override
  String get selectWeek => 'Seleccionar Semana';

  @override
  String get mon => 'Lun';

  @override
  String get tue => 'Mar';

  @override
  String get wed => 'Mié';

  @override
  String get thu => 'Jue';

  @override
  String get fri => 'Vie';

  @override
  String get sat => 'Sáb';

  @override
  String get sun => 'Dom';

  @override
  String get noSessionsScheduled => 'No hay sesiones programadas';

  @override
  String get tapToAddSession => 'Toca el botón + para agregar una sesión';

  @override
  String student(int count) {
    return 'estudiante';
  }

  @override
  String students(int count) {
    return 'estudiantes';
  }

  @override
  String get deleteSession => 'Eliminar Sesión';

  @override
  String deleteSessionConfirm(String title) {
    return '¿Estás seguro de que quieres eliminar \"$title\"?';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get createSession => 'Crear Sesión';

  @override
  String get editSession => 'Editar Sesión';

  @override
  String get title => 'Título';

  @override
  String get titleRequired => 'Por favor ingresa un título';

  @override
  String get startTime => 'Hora de Inicio';

  @override
  String get endTime => 'Hora de Fin';

  @override
  String get endTimeAfterStart =>
      'La hora de fin debe ser posterior a la hora de inicio';

  @override
  String get descriptionOptional => 'Descripción (opcional)';

  @override
  String get save => 'Guardar';

  @override
  String get add => 'Agregar';

  @override
  String get edit => 'Editar';

  @override
  String get allEvents => 'Todos los Eventos';

  @override
  String get manageTemplates => 'Administrar Plantillas';

  @override
  String get exportData => 'Exportar Datos';

  @override
  String get importData => 'Importar Datos';

  @override
  String get saveExportFile => 'Guardar Archivo de Exportación';

  @override
  String exportSuccessful(String path) {
    return '¡Exportación exitosa!\nGuardado en: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Error en la exportación: $error';
  }

  @override
  String get importSuccessful => 'Importación Exitosa';

  @override
  String get importFailed => 'Error en la Importación';

  @override
  String get errorReadingFile => 'Error al leer el archivo';

  @override
  String error(String error) {
    return 'Error: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Buscar eventos...';

  @override
  String get noEventsScheduled => 'No hay eventos programados';

  @override
  String get noEventsFound => 'No se encontraron eventos';

  @override
  String get createEventsFromCalendar => 'Crear eventos desde el calendario';

  @override
  String get studentsJoiningThisSession =>
      'Estudiantes que Participan en Esta Sesión';

  @override
  String get addMember => 'Agregar Miembro';

  @override
  String get noStudentsAddedYet => 'Aún no se han agregado estudiantes';

  @override
  String get tapToAddMember => 'Toca + para agregar un miembro';

  @override
  String get allMembers => 'Todos los Miembros';

  @override
  String get addToSession => 'Agregar a la sesión';

  @override
  String get removeFromSession => 'Quitar de la sesión';

  @override
  String get name => 'Nombre';

  @override
  String get nameRequired => 'Por favor ingresa un nombre';

  @override
  String get nicknameOptional => 'Apodo (opcional)';

  @override
  String get ageOptional => 'Edad (opcional)';

  @override
  String get ageInvalid => 'Por favor ingresa una edad válida';

  @override
  String get phoneNumberOptional => 'Número de Teléfono (opcional)';

  @override
  String get phoneNumberHint => 'ej.: +52 55 1234 5678';

  @override
  String get addMemberTitle => 'Agregar Miembro';

  @override
  String get editMemberTitle => 'Editar Miembro';

  @override
  String get member => 'Miembro';

  @override
  String nameLabel(String name) {
    return 'Nombre: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Edad: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Teléfono: $phone';
  }

  @override
  String get templateOptional => 'Plantilla (opcional)';

  @override
  String get none => 'Ninguno';

  @override
  String get saveAsTemplate => 'Guardar como plantilla';

  @override
  String get saveAsTemplateSubtitle =>
      'Usar esta sesión como plantilla para sesiones futuras';

  @override
  String get templateName => 'Nombre de la Plantilla';

  @override
  String get templateNameHelper => 'Nombre para identificar esta plantilla';

  @override
  String get templateNameRequired => 'Por favor ingresa un nombre de plantilla';

  @override
  String get defaultSessionTitle => 'Título de Sesión por Defecto';

  @override
  String get defaultSessionTitleHelper =>
      'Título usado al crear sesiones desde esta plantilla';

  @override
  String get sessionTitleRequired => 'Por favor ingresa un título de sesión';

  @override
  String get createTemplate => 'Crear Plantilla';

  @override
  String get editTemplate => 'Editar Plantilla';

  @override
  String get create => 'Crear';

  @override
  String get templateNameDialogTitle => 'Nombre de la Plantilla';

  @override
  String get templateNameDialogHelper =>
      'Asigna un nombre a esta plantilla para facilitar su identificación';

  @override
  String get templateManagement => 'Administración de Plantillas';

  @override
  String get noTemplatesYet => 'Aún no hay plantillas';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Crea una sesión y marca \"Guardar como plantilla\"';

  @override
  String get deleteTemplate => 'Eliminar Plantilla';

  @override
  String deleteTemplateConfirm(String title) {
    return '¿Estás seguro de que quieres eliminar \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Sesión: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Guardar como Plantilla';

  @override
  String templateSavedSuccessfully(String name) {
    return 'La plantilla \"$name\" se guardó exitosamente';
  }

  @override
  String get debug => 'DEPURACIÓN';

  @override
  String get debugDateSimulation => 'Simulación de Fecha de Depuración';

  @override
  String get setCustomDate => 'Establecer Fecha Personalizada';

  @override
  String get clear => 'Limpiar';

  @override
  String now(String date) {
    return 'Ahora: $date';
  }

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String get tomorrow => 'Mañana';

  @override
  String daysAgo(int count) {
    return 'Hace $count días';
  }

  @override
  String daysLater(int count) {
    return 'En $count días';
  }

  @override
  String get notificationSettings => 'Notification Settings';

  @override
  String get notificationTiming => 'Notification Timing';

  @override
  String get notificationTimingDescription =>
      'Choose when to receive notifications before each session starts';

  @override
  String get atEventStart => 'At event start';

  @override
  String beforeEventStart(String timing) {
    return '$timing before event start';
  }

  @override
  String get notificationTimingUpdated => 'Notification timing updated';

  @override
  String get aboutNotifications => 'About Notifications';

  @override
  String get notificationInfo =>
      'You will receive notifications before each scheduled session starts. Notifications are automatically scheduled when you create or update sessions, and all existing sessions are scheduled when the app launches.';

  @override
  String get rescheduleNotifications => 'Reschedule Notifications';

  @override
  String get rescheduleNotificationsDescription =>
      'Manually reschedule notifications for all existing future sessions. This is useful if you have just enabled notifications or want to ensure all events have notifications scheduled.';

  @override
  String get rescheduleNow => 'Reschedule Now';

  @override
  String get rescheduling => 'Rescheduling...';

  @override
  String notificationsRescheduled(int count) {
    return 'Notifications rescheduled for $count future session(s)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Error rescheduling notifications: $error';
  }

  @override
  String get permissionsRequired => 'Notification Permissions Required';

  @override
  String get permissionsRequiredDescription =>
      'Please grant notification permissions to receive reminders for your sessions. Tap the button below to request permissions.';

  @override
  String get requestPermissions => 'Request Permissions';

  @override
  String get permissionsGranted => 'Notification permissions granted!';

  @override
  String get permissionsDenied =>
      'Notification permissions were denied. Please enable them in Settings.';

  @override
  String get timing0Min => '0 min';

  @override
  String get timing1Min => '1 min';

  @override
  String get timing5Mins => '5 mins';

  @override
  String get timing30Mins => '30 mins';

  @override
  String get timing1Hour => '1 hour';

  @override
  String get timing6Hours => '6 hours';

  @override
  String timingMinutes(int count) {
    return '$count mins';
  }

  @override
  String timingHours(int count) {
    return '$count hour';
  }

  @override
  String timingHoursPlural(int count) {
    return '$count hours';
  }

  @override
  String get testNotifications => 'Notificaciones de prueba';

  @override
  String get testNotificationsDescription =>
      'Enviar una notificación de prueba en 2 segundos para verificar que las notificaciones funcionan.';

  @override
  String get sendTestNotification => 'Enviar notificación de prueba';

  @override
  String get testNotificationScheduled =>
      '¡Notificación de prueba programada! Verifica en 2 segundos.';

  @override
  String get testNotificationTitle => 'Notificación de prueba';

  @override
  String get testNotificationBody =>
      'Si ves esto, ¡las notificaciones están funcionando!';

  @override
  String get scheduledTestNotificationTitle =>
      'Notificación de prueba programada';

  @override
  String get scheduledTestNotificationBody =>
      'Esto se programó hace 2 segundos';

  @override
  String startsAt(String time) {
    return 'Comienza a las $time';
  }

  @override
  String get themeSettings => 'Configuración del tema';

  @override
  String get selectTheme => 'Seleccionar tema';

  @override
  String get selectThemeDescription =>
      'Elige un tema de color para la aplicación. El tema se aplicará en toda la aplicación.';

  @override
  String get themeChanged => '¡Tema cambiado con éxito!';

  @override
  String get aboutTheme => 'Acerca de los temas';

  @override
  String get themeInfo =>
      'Cambiar el tema actualizará los colores en toda la aplicación, incluyendo botones, barras de aplicación y otros elementos de la interfaz. Tu preferencia de tema se guardará y se aplicará automáticamente cuando reinicies la aplicación.';
}
