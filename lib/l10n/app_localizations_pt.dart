// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Reservar Semanas';

  @override
  String get selectWeek => 'Selecionar Semana';

  @override
  String get mon => 'Seg';

  @override
  String get tue => 'Ter';

  @override
  String get wed => 'Qua';

  @override
  String get thu => 'Qui';

  @override
  String get fri => 'Sex';

  @override
  String get sat => 'Sáb';

  @override
  String get sun => 'Dom';

  @override
  String get noSessionsScheduled => 'Nenhuma sessão agendada';

  @override
  String get tapToAddSession => 'Toque no botão + para adicionar uma sessão';

  @override
  String student(int count) {
    return 'estudante';
  }

  @override
  String students(int count) {
    return 'estudantes';
  }

  @override
  String get deleteSession => 'Eliminar Sessão';

  @override
  String deleteSessionConfirm(String title) {
    return 'Tem a certeza de que deseja eliminar \"$title\"?';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get createSession => 'Criar Sessão';

  @override
  String get editSession => 'Editar Sessão';

  @override
  String get title => 'Título';

  @override
  String get titleRequired => 'Por favor, introduza um título';

  @override
  String get startTime => 'Hora de Início';

  @override
  String get endTime => 'Hora de Fim';

  @override
  String get endTimeAfterStart =>
      'A hora de fim deve ser após a hora de início';

  @override
  String get descriptionOptional => 'Descrição (opcional)';

  @override
  String get save => 'Guardar';

  @override
  String get add => 'Adicionar';

  @override
  String get edit => 'Editar';

  @override
  String get allEvents => 'Todos os Eventos';

  @override
  String get manageTemplates => 'Gerir Modelos';

  @override
  String get exportData => 'Exportar Dados';

  @override
  String get importData => 'Importar Dados';

  @override
  String get saveExportFile => 'Guardar Ficheiro de Exportação';

  @override
  String exportSuccessful(String path) {
    return 'Exportação bem-sucedida!\nGuardado em: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Exportação falhada: $error';
  }

  @override
  String get importSuccessful => 'Importação Bem-Sucedida';

  @override
  String get importFailed => 'Importação Falhada';

  @override
  String get errorReadingFile => 'Erro ao ler ficheiro';

  @override
  String error(String error) {
    return 'Erro: $error';
  }

  @override
  String get ok => 'OK';

  @override
  String get searchEvents => 'Pesquisar eventos...';

  @override
  String get noEventsScheduled => 'Nenhum evento agendado';

  @override
  String get noEventsFound => 'Nenhum evento encontrado';

  @override
  String get createEventsFromCalendar => 'Criar eventos a partir do calendário';

  @override
  String get studentsJoiningThisSession =>
      'Estudantes a Participar Nesta Sessão';

  @override
  String get addMember => 'Adicionar Membro';

  @override
  String get noStudentsAddedYet => 'Ainda não foram adicionados estudantes';

  @override
  String get tapToAddMember => 'Toque em + para adicionar um membro';

  @override
  String get allMembers => 'Todos os Membros';

  @override
  String get addToSession => 'Adicionar à sessão';

  @override
  String get removeFromSession => 'Remover da sessão';

  @override
  String get name => 'Nome';

  @override
  String get nameRequired => 'Por favor, introduza um nome';

  @override
  String get nicknameOptional => 'Alcunha (opcional)';

  @override
  String get ageOptional => 'Idade (opcional)';

  @override
  String get ageInvalid => 'Por favor, introduza uma idade válida';

  @override
  String get phoneNumberOptional => 'Número de Telefone (opcional)';

  @override
  String get phoneNumberHint => 'ex: +351 912 345 678';

  @override
  String get addMemberTitle => 'Adicionar Membro';

  @override
  String get editMemberTitle => 'Editar Membro';

  @override
  String get member => 'Membro';

  @override
  String nameLabel(String name) {
    return 'Nome: $name';
  }

  @override
  String ageLabel(int age) {
    return 'Idade: $age';
  }

  @override
  String phoneLabel(String phone) {
    return 'Telefone: $phone';
  }

  @override
  String get templateOptional => 'Modelo (opcional)';

  @override
  String get none => 'Nenhum';

  @override
  String get saveAsTemplate => 'Guardar como modelo';

  @override
  String get saveAsTemplateSubtitle =>
      'Usar esta sessão como modelo para sessões futuras';

  @override
  String get templateName => 'Nome do Modelo';

  @override
  String get templateNameHelper => 'Nome para identificar este modelo';

  @override
  String get templateNameRequired => 'Por favor, introduza um nome de modelo';

  @override
  String get defaultSessionTitle => 'Título de Sessão Padrão';

  @override
  String get defaultSessionTitleHelper =>
      'Título usado ao criar sessões a partir deste modelo';

  @override
  String get sessionTitleRequired => 'Por favor, introduza um título de sessão';

  @override
  String get createTemplate => 'Criar Modelo';

  @override
  String get editTemplate => 'Editar Modelo';

  @override
  String get create => 'Criar';

  @override
  String get templateNameDialogTitle => 'Nome do Modelo';

  @override
  String get templateNameDialogHelper =>
      'Dê um nome a este modelo para fácil identificação';

  @override
  String get templateManagement => 'Gestão de Modelos';

  @override
  String get noTemplatesYet => 'Ainda não há modelos';

  @override
  String get createSessionAndSaveAsTemplate =>
      'Crie uma sessão e selecione \"Guardar como modelo\"';

  @override
  String get deleteTemplate => 'Eliminar Modelo';

  @override
  String deleteTemplateConfirm(String title) {
    return 'Tem a certeza de que deseja eliminar \"$title\"?';
  }

  @override
  String session(String title) {
    return 'Sessão: $title';
  }

  @override
  String get saveAsTemplateTooltip => 'Guardar como Modelo';

  @override
  String templateSavedSuccessfully(String name) {
    return 'Modelo \"$name\" guardado com sucesso';
  }

  @override
  String get debug => 'DEPURAÇÃO';

  @override
  String get debugDateSimulation => 'Simulação de Data de Depuração';

  @override
  String get setCustomDate => 'Definir Data Personalizada';

  @override
  String get clear => 'Limpar';

  @override
  String now(String date) {
    return 'Agora: $date';
  }

  @override
  String get today => 'Hoje';

  @override
  String get yesterday => 'Ontem';

  @override
  String get tomorrow => 'Amanhã';

  @override
  String daysAgo(int count) {
    return 'há $count dias';
  }

  @override
  String daysLater(int count) {
    return 'daqui a $count dias';
  }

  @override
  String get notificationSettings => 'Configurações de notificações';

  @override
  String get notificationTiming => 'Horário das notificações';

  @override
  String get notificationTimingDescription =>
      'Escolha quando receber notificações antes do início de cada sessão';

  @override
  String get atEventStart => 'No início do evento';

  @override
  String beforeEventStart(String timing) {
    return '$timing antes do início do evento';
  }

  @override
  String get notificationTimingUpdated => 'Horário das notificações atualizado';

  @override
  String get aboutNotifications => 'Sobre notificações';

  @override
  String get notificationInfo =>
      'Você receberá notificações antes do início de cada sessão agendada. As notificações são agendadas automaticamente quando você cria ou atualiza sessões, e todas as sessões existentes são agendadas quando o aplicativo é iniciado.';

  @override
  String get rescheduleNotifications => 'Reagendar notificações';

  @override
  String get rescheduleNotificationsDescription =>
      'Reagende manualmente as notificações para todas as sessões futuras existentes. Útil se você acabou de habilitar notificações ou deseja garantir que todos os eventos tenham notificações agendadas.';

  @override
  String get rescheduleNow => 'Reagendar agora';

  @override
  String get rescheduling => 'Reagendando...';

  @override
  String notificationsRescheduled(int count) {
    return 'Notificações reagendadas para $count sessão(ões) futura(s)';
  }

  @override
  String errorReschedulingNotifications(String error) {
    return 'Erro ao reagendar notificações: $error';
  }

  @override
  String get permissionsRequired => 'Permissões de notificação necessárias';

  @override
  String get permissionsRequiredDescription =>
      'Por favor, conceda permissões de notificação para receber lembretes para suas sessões. Toque no botão abaixo para solicitar permissões.';

  @override
  String get requestPermissions => 'Solicitar permissões';

  @override
  String get permissionsGranted => 'Permissões de notificação concedidas!';

  @override
  String get permissionsDenied =>
      'As permissões de notificação foram negadas. Por favor, habilite-as nas Configurações.';

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
  String get testNotifications => 'Notificações de teste';

  @override
  String get testNotificationsDescription =>
      'Enviar uma notificação de teste em 2 segundos para verificar se as notificações estão funcionando.';

  @override
  String get sendTestNotification => 'Enviar notificação de teste';

  @override
  String get testNotificationScheduled =>
      'Notificação de teste agendada! Verifique em 2 segundos.';

  @override
  String get testNotificationTitle => 'Notificação de teste';

  @override
  String get testNotificationBody =>
      'Se você vir isso, as notificações estão funcionando!';

  @override
  String get scheduledTestNotificationTitle => 'Notificação de teste agendada';

  @override
  String get scheduledTestNotificationBody => 'Isso foi agendado há 2 segundos';

  @override
  String startsAt(String time) {
    return 'Começa às $time';
  }

  @override
  String get themeSettings => 'Configurações do tema';

  @override
  String get selectTheme => 'Selecionar tema';

  @override
  String get selectThemeDescription =>
      'Escolha um tema de cores para o aplicativo. O tema será aplicado em todo o aplicativo.';

  @override
  String get themeChanged => 'Tema alterado com sucesso!';

  @override
  String get aboutTheme => 'Sobre os temas';

  @override
  String get themeInfo =>
      'Alterar o tema atualizará as cores em todo o aplicativo, incluindo botões, barras de aplicativo e outros elementos da interface. Sua preferência de tema será salva e aplicada automaticamente quando você reiniciar o aplicativo.';

  @override
  String get enableNotifications => 'Ativar notificações';

  @override
  String get enableNotificationsDescription =>
      'Ative ou desative as notificações. Quando desativadas, nenhuma notificação será enviada para suas sessões.';

  @override
  String get notificationsEnabled => 'Notificações ativadas';

  @override
  String get notificationsDisabled => 'Notificações desativadas';
}
