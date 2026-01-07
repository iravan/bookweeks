import 'package:flutter/material.dart';
import 'package:bookweeks/l10n/app_localizations.dart';
import '../models/student.dart';

class StudentDialog extends StatefulWidget {
  final Student? existingStudent;

  const StudentDialog({super.key, this.existingStudent});

  @override
  State<StudentDialog> createState() => _StudentDialogState();
}

class _StudentDialogState extends State<StudentDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _nicknameController;
  late final TextEditingController _ageController;
  late final TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.existingStudent?.name ?? '');
    _nicknameController = TextEditingController(text: widget.existingStudent?.nickname ?? '');
    _ageController = TextEditingController(text: widget.existingStudent?.age?.toString() ?? '');
    _phoneController = TextEditingController(text: widget.existingStudent?.phoneNumber ?? '');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nicknameController.dispose();
    _ageController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _saveStudent() {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text.trim();
      final nickname = _nicknameController.text.trim();
      final ageText = _ageController.text.trim();
      final age = ageText.isEmpty ? null : int.tryParse(ageText);

      Navigator.of(context).pop({
        'name': name,
        'nickname': nickname.isEmpty ? null : nickname,
        'age': age,
        'phoneNumber': _phoneController.text.trim().isEmpty ? null : _phoneController.text.trim(),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
        widget.existingStudent == null 
            ? AppLocalizations.of(context)!.addMemberTitle 
            : AppLocalizations.of(context)!.editMemberTitle,
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
                  labelText: '${AppLocalizations.of(context)!.name} *',
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return AppLocalizations.of(context)!.nameRequired;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _nicknameController,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.nicknameOptional,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _ageController,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.ageOptional,
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value != null && value.trim().isNotEmpty) {
                    final age = int.tryParse(value.trim());
                    if (age == null || age < 0) {
                      return AppLocalizations.of(context)!.ageInvalid;
                    }
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.phoneNumberOptional,
                  border: const OutlineInputBorder(),
                  hintText: AppLocalizations.of(context)!.phoneNumberHint,
                ),
                keyboardType: TextInputType.phone,
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
          onPressed: _saveStudent,
          child: Text(widget.existingStudent == null 
              ? AppLocalizations.of(context)!.add 
              : AppLocalizations.of(context)!.save),
        ),
      ],
    );
  }
}

