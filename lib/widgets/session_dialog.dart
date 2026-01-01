import 'package:flutter/material.dart';
import '../models/session.dart';

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
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late DateTime _startTime;
  late DateTime _endTime;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.existingSession?.title ?? '');
    _descriptionController = TextEditingController(text: widget.existingSession?.description ?? '');
    
    if (widget.existingSession != null) {
      _startTime = widget.existingSession!.startTime;
      _endTime = widget.existingSession!.endTime;
    } else {
      // Default to 9 AM on selected date
      _startTime = DateTime(
        widget.selectedDate.year,
        widget.selectedDate.month,
        widget.selectedDate.day,
        9,
      );
      _endTime = _startTime.add(const Duration(hours: 1));
    }
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
          const SnackBar(content: Text('End time must be after start time')),
        );
      }
    }
  }

  void _saveSession() {
    if (_formKey.currentState!.validate()) {
      final session = Session(
        id: widget.existingSession?.id ?? DateTime.now().millisecondsSinceEpoch.toString(),
        title: _titleController.text.trim(),
        startTime: _startTime,
        endTime: _endTime,
        description: _descriptionController.text.trim().isEmpty
            ? null
            : _descriptionController.text.trim(),
        studentIds: widget.existingSession?.studentIds,
      );
      Navigator.of(context).pop(session);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.existingSession == null ? 'Create Session' : 'Edit Session'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a title';
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
                        decoration: const InputDecoration(
                          labelText: 'Start Time',
                          border: OutlineInputBorder(),
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
                        decoration: const InputDecoration(
                          labelText: 'End Time',
                          border: OutlineInputBorder(),
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
                decoration: const InputDecoration(
                  labelText: 'Description (optional)',
                  border: OutlineInputBorder(),
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
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _saveSession,
          child: const Text('Save'),
        ),
      ],
    );
  }
}

