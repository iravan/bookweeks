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
}
