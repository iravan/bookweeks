import 'package:flutter/material.dart';
import 'package:bookweeks/l10n/app_localizations.dart';
import '../models/session.dart';
import '../models/session_template.dart';
import '../services/session_template_service.dart';
import 'template_name_dialog.dart';

class SessionDialog extends StatefulWidget {
  final DateTime selectedDate;
  final Session? existingSession;

  const SessionDialog({
    super.key,
    required this.selectedDate,
    this.existingSession,
  });

  @override
  State<SessionDialog> createState() => _SessionDialogState();
}

class _SessionDialogState extends State<SessionDialog> {
  final _formKey = GlobalKey<FormState>();
  final _templateService = SessionTemplateService();
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late DateTime _startTime;
  late DateTime _endTime;
  SessionTemplate? _selectedTemplate;
  List<SessionTemplate> _templates = [];
  bool _isLoading = true;
  bool _saveAsTemplate = false; // Default to unchecked
  List<String> _studentIds = []; // Track student IDs from template

  @override
  void initState() {
    super.initState();
    // Initialize controllers with empty/default values first
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    _startTime = DateTime(
      widget.selectedDate.year,
      widget.selectedDate.month,
      widget.selectedDate.day,
      9,
    );
    _endTime = _startTime.add(const Duration(hours: 1));
    _loadTemplates();
  }

  Future<void> _loadTemplates() async {
    await _templateService.initialize();
    setState(() {
      _templates = _templateService.getAllTemplates();
      if (widget.existingSession == null && _templates.isNotEmpty) {
        // Use last created template as default
        _selectedTemplate = _templateService.getLastTemplate();
        if (_selectedTemplate != null) {
          _applyTemplate(_selectedTemplate!);
        }
      } else {
        _initializeFromSession();
      }
      _isLoading = false;
    });
  }

  void _initializeFromSession() {
    _titleController.text = widget.existingSession?.title ?? '';
    _descriptionController.text = widget.existingSession?.description ?? '';
    
    if (widget.existingSession != null) {
      _startTime = widget.existingSession!.startTime;
      _endTime = widget.existingSession!.endTime;
      _studentIds = List<String>.from(widget.existingSession!.studentIds);
    } else {
      // Default to 9 AM on selected date
      _startTime = DateTime(
        widget.selectedDate.year,
        widget.selectedDate.month,
        widget.selectedDate.day,
        9,
      );
      _endTime = _startTime.add(const Duration(hours: 1));
      _studentIds = [];
    }
  }

  void _applyTemplate(SessionTemplate template) {
    _titleController.text = template.title;
    _descriptionController.text = template.description ?? '';
    _startTime = DateTime(
      widget.selectedDate.year,
      widget.selectedDate.month,
      widget.selectedDate.day,
      template.startHour,
      template.startMinute,
    );
    _endTime = DateTime(
      widget.selectedDate.year,
      widget.selectedDate.month,
      widget.selectedDate.day,
      template.endHour,
      template.endMinute,
    );
    // Add all students from template
    _studentIds = List<String>.from(template.studentIds);
    _selectedTemplate = template;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  DateTime get _baseDate {
    // Use the session's date if editing, otherwise use selectedDate
    return widget.existingSession?.startTime ?? widget.selectedDate;
  }

  Future<void> _selectStartTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_startTime),
    );
    if (picked != null) {
      setState(() {
        _startTime = DateTime(
          _baseDate.year,
          _baseDate.month,
          _baseDate.day,
          picked.hour,
          picked.minute,
        );
        // Auto-adjust end time if it's before start time
        if (_endTime.isBefore(_startTime) || _endTime == _startTime) {
          _endTime = _startTime.add(const Duration(hours: 1));
        }
      });
    }
  }

  Future<void> _selectEndTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_endTime),
    );
    if (picked != null) {
      final newEndTime = DateTime(
        _baseDate.year,
        _baseDate.month,
        _baseDate.day,
        picked.hour,
        picked.minute,
      );
      if (newEndTime.isAfter(_startTime)) {
        setState(() {
          _endTime = newEndTime;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.endTimeAfterStart)),
        );
      }
    }
  }

  void _saveSession() async {
    if (_formKey.currentState!.validate()) {
      final session = Session(
        id: widget.existingSession?.id ?? DateTime.now().millisecondsSinceEpoch.toString(),
        title: _titleController.text.trim(),
        startTime: _startTime,
        endTime: _endTime,
        description: _descriptionController.text.trim().isEmpty
            ? null
            : _descriptionController.text.trim(),
        studentIds: widget.existingSession != null
            ? widget.existingSession!.studentIds
            : _studentIds, // Use template student IDs for new sessions
      );
      
      // Save as template if creating new session and checkbox is checked
      if (widget.existingSession == null && _saveAsTemplate) {
        // Prompt for template name
        final templateName = await showDialog<String>(
          context: context,
          builder: (context) => TemplateNameDialog(
            defaultName: session.title,
          ),
        );
        
        if (templateName != null && templateName.trim().isNotEmpty) {
          final template = SessionTemplate.fromSession(session, templateName.trim());
          await _templateService.addTemplate(template);
        }
      }
      
      Navigator.of(context).pop(session);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
        widget.existingSession == null 
            ? AppLocalizations.of(context)!.createSession 
            : AppLocalizations.of(context)!.editSession,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      content: _isLoading
          ? const SizedBox(
              height: 100,
              child: Center(child: CircularProgressIndicator()),
            )
          : Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Template selector (only show when creating new session)
                    if (widget.existingSession == null && _templates.isNotEmpty)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DropdownButtonFormField<SessionTemplate>(
                            value: _selectedTemplate,
                            decoration: InputDecoration(
                              labelText: AppLocalizations.of(context)!.templateOptional,
                              border: const OutlineInputBorder(),
                            ),
                            items: [
                              DropdownMenuItem<SessionTemplate>(
                                value: null,
                                child: Text(AppLocalizations.of(context)!.none),
                              ),
                              ..._templates.map((template) {
                                return DropdownMenuItem<SessionTemplate>(
                                  value: template,
                                  child: Text(template.name),
                                );
                              }),
                            ],
                            onChanged: (template) {
                              if (template != null) {
                                setState(() {
                                  _applyTemplate(template);
                                });
                              } else {
                                setState(() {
                                  _selectedTemplate = null;
                                  _studentIds = []; // Clear student IDs when deselecting template
                                  _initializeFromSession();
                                });
                              }
                            },
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.title,
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return AppLocalizations.of(context)!.titleRequired;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: _selectStartTime,
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.startTime,
                          border: const OutlineInputBorder(),
                        ),
                        child: Text(
                          '${_startTime.hour.toString().padLeft(2, '0')}:${_startTime.minute.toString().padLeft(2, '0')}',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: InkWell(
                      onTap: _selectEndTime,
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.endTime,
                          border: const OutlineInputBorder(),
                        ),
                        child: Text(
                          '${_endTime.hour.toString().padLeft(2, '0')}:${_endTime.minute.toString().padLeft(2, '0')}',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.descriptionOptional,
                  border: const OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              // Save as template checkbox (only show when creating new session and no template is selected)
              if (widget.existingSession == null && _selectedTemplate == null)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: CheckboxListTile(
                    value: _saveAsTemplate,
                    onChanged: (value) {
                      setState(() {
                        _saveAsTemplate = value ?? false;
                      });
                    },
                    title: Text(AppLocalizations.of(context)!.saveAsTemplate),
                    subtitle: Text(AppLocalizations.of(context)!.saveAsTemplateSubtitle),
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(AppLocalizations.of(context)!.cancel),
        ),
        ElevatedButton(
          onPressed: _saveSession,
          child: Text(AppLocalizations.of(context)!.save),
        ),
      ],
    );
  }
}

