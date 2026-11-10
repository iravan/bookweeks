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
  String get earlierWeeks => 'Semanas anteriores';

  @override
  String get older => 'Anterior';

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
    return 'Error';
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

  @override
  String get enableNotifications => 'Activar notificaciones';

  @override
  String get enableNotificationsDescription =>
      'Activa o desactiva las notificaciones. Cuando están desactivadas, no se enviarán notificaciones para tus sesiones.';

  @override
  String get notificationsEnabled => 'Notificaciones activadas';

  @override
  String get notificationsDisabled => 'Notificaciones desactivadas';

  @override
  String get help => 'Ayuda';

  @override
  String get gettingStarted => 'Primeros pasos';

  @override
  String get gettingStartedDescription =>
      'Book Weeks te ayuda a gestionar tu horario semanal y sesiones. Usa el calendario en la parte superior para navegar entre semanas y toca cualquier día para ver o agregar sesiones para ese día.';

  @override
  String get creatingSessions => 'Crear sesiones';

  @override
  String get creatingSessionsDescription =>
      'Para crear una sesión, toca el botón + en cualquier día. Puedes establecer el título de la sesión, la hora, la duración y agregar estudiantes. Las sesiones se guardan automáticamente y aparecerán en tu calendario.';

  @override
  String get managingStudents => 'Gestionar estudiantes';

  @override
  String get managingStudentsDescription =>
      'Al crear o editar una sesión, puedes agregar estudiantes tocando el botón + en la sección de estudiantes. Puedes agregar nombres, apodos, edades y números de teléfono. Los estudiantes se pueden reutilizar en múltiples sesiones.';

  @override
  String get usingTemplates => 'Usar plantillas';

  @override
  String get usingTemplatesDescription =>
      'Las plantillas te permiten crear rápidamente sesiones con estudiantes preconfigurados. Crea plantillas desde el menú (tres puntos) → Gestionar plantillas. Al crear una sesión, puedes seleccionar una plantilla para agregar automáticamente sus estudiantes.';

  @override
  String get notificationsHelp => 'Notificaciones';

  @override
  String get notificationsHelpDescription =>
      'Puedes recibir notificaciones antes de que comiencen tus sesiones. Ve a Configuración de notificaciones (icono de campana) para activar notificaciones, establecer el momento (cuántos minutos antes) y probar tu configuración de notificaciones. Asegúrate de otorgar permisos de notificación cuando se te solicite.';

  @override
  String get exportImport => 'Exportar e importar';

  @override
  String get exportImportDescription =>
      'Puedes exportar tus datos (sesiones, estudiantes, plantillas) a un archivo YAML para respaldo o transferencia. Usa el menú (tres puntos) → Exportar datos. Para importar, usa Importar datos del mismo menú. Esto es útil para respaldar tus datos o moverlos a otro dispositivo.';

  @override
  String get navigationTips => 'Consejos de navegación';

  @override
  String get navigationTipsDescription =>
      '• Usa el calendario semanal para navegar entre semanas\n• Toca las pestañas de día para ver sesiones de ese día\n• Usa el botón Todos los eventos (icono de calendario) para ver todas las sesiones en una lista\n• Accede a la configuración a través de los iconos en la barra superior: Tema (paleta), Eventos (calendario), Notificaciones (campana) y Ayuda (signo de interrogación)';
}

/// The translations for Spanish Castilian, as used in Mexico (`es_MX`).
class AppLocalizationsEsMx extends AppLocalizationsEs {
  AppLocalizationsEsMx() : super('es_MX');

  @override
  String get appTitle => 'Reservar Semanas';

  @override
  String get earlierWeeks => 'Semanas anteriores';

  @override
  String get older => 'Anterior';

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
    return 'Error';
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
  String get notificationSettings => 'Configuración de notificaciones';

  @override
  String get notificationTiming => 'Hora de las notificaciones';

  @override
  String get notificationTimingDescription =>
      'Elige cuándo recibir notificaciones antes de que comience cada sesión';

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
      'Recibirás notificaciones antes de que comience cada sesión programada. Las notificaciones se programan automáticamente al crear o actualizar sesiones, y todas las sesiones existentes se programan cuando se inicia la aplicación.';

  @override
  String get rescheduleNotifications => 'Reprogramar notificaciones';

  @override
  String get rescheduleNotificationsDescription =>
      'Reprograma manualmente las notificaciones para todas las sesiones futuras existentes. Útil si acabas de habilitar las notificaciones o deseas asegurarte de que todos los eventos tengan notificaciones programadas.';

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
      'Por favor, otorga permisos de notificación para recibir recordatorios de tus sesiones. Toca el botón a continuación para solicitar permisos.';

  @override
  String get requestPermissions => 'Solicitar permisos';

  @override
  String get permissionsGranted => '¡Permisos de notificación otorgados!';

  @override
  String get permissionsDenied =>
      'Los permisos de notificación fueron denegados. Por favor, actívalos en Configuración.';

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

  @override
  String get enableNotifications => 'Activar notificaciones';

  @override
  String get enableNotificationsDescription =>
      'Activa o desactiva las notificaciones. Cuando están desactivadas, no se enviarán notificaciones para tus sesiones.';

  @override
  String get notificationsEnabled => 'Notificaciones activadas';

  @override
  String get notificationsDisabled => 'Notificaciones desactivadas';

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
