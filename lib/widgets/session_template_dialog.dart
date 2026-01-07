import 'package:flutter/material.dart';
import 'package:bookweeks/l10n/app_localizations.dart';
import '../models/session_template.dart';

class SessionTemplateDialog extends StatefulWidget {
  final SessionTemplate? existingTemplate;

  const SessionTemplateDialog({
    super.key,
    this.existingTemplate,
  });

  @override
  State<SessionTemplateDialog> createState() => _SessionTemplateDialogState();
}

class _SessionTemplateDialogState extends State<SessionTemplateDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late TimeOfDay _startTime;
  late TimeOfDay _endTime;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(
      text: widget.existingTemplate?.name ?? '',
    );
    _titleController = TextEditingController(
      text: widget.existingTemplate?.title ?? '',
    );
    _descriptionController = TextEditingController(
      text: widget.existingTemplate?.description ?? '',
    );
    _startTime = widget.existingTemplate != null
        ? TimeOfDay(
            hour: widget.existingTemplate!.startHour,
            minute: widget.existingTemplate!.startMinute,
          )
        : const TimeOfDay(hour: 9, minute: 0);
    _endTime = widget.existingTemplate != null
        ? TimeOfDay(
            hour: widget.existingTemplate!.endHour,
            minute: widget.existingTemplate!.endMinute,
          )
        : const TimeOfDay(hour: 10, minute: 0);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _selectStartTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _startTime,
    );
    if (picked != null) {
      setState(() {
        _startTime = picked;
        // Auto-adjust end time if it's before start time
        if (_endTime.hour < _startTime.hour ||
            (_endTime.hour == _startTime.hour &&
                _endTime.minute <= _startTime.minute)) {
          _endTime = TimeOfDay(
            hour: _startTime.hour + 1,
            minute: _startTime.minute,
          );
        }
      });
    }
  }

  Future<void> _selectEndTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _endTime,
    );
    if (picked != null) {
      final startMinutes = _startTime.hour * 60 + _startTime.minute;
      final endMinutes = picked.hour * 60 + picked.minute;
      if (endMinutes > startMinutes) {
        setState(() {
          _endTime = picked;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.endTimeAfterStart)),
        );
      }
    }
  }

  void _saveTemplate() {
    if (_formKey.currentState!.validate()) {
      final template = SessionTemplate(
        id: widget.existingTemplate?.id ??
            DateTime.now().millisecondsSinceEpoch.toString(),
        name: _nameController.text.trim(),
        title: _titleController.text.trim(),
        startHour: _startTime.hour,
        startMinute: _startTime.minute,
        endHour: _endTime.hour,
        endMinute: _endTime.minute,
        description: _descriptionController.text.trim().isEmpty
            ? null
            : _descriptionController.text.trim(),
        studentIds: widget.existingTemplate?.studentIds,
        createdAt: widget.existingTemplate?.createdAt,
      );
      Navigator.of(context).pop(template);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
        widget.existingTemplate == null
            ? AppLocalizations.of(context)!.createTemplate
            : AppLocalizations.of(context)!.editTemplate,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.templateName,
                  border: const OutlineInputBorder(),
                  helperText: AppLocalizations.of(context)!.templateNameHelper,
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return AppLocalizations.of(context)!.templateNameRequired;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.defaultSessionTitle,
                  border: const OutlineInputBorder(),
                  helperText: AppLocalizations.of(context)!.defaultSessionTitleHelper,
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return AppLocalizations.of(context)!.sessionTitleRequired;
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
                          _startTime.format(context),
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
                          _endTime.format(context),
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
          onPressed: _saveTemplate,
          child: Text(widget.existingTemplate == null 
              ? AppLocalizations.of(context)!.create 
              : AppLocalizations.of(context)!.save),
        ),
      ],
    );
  }
}

