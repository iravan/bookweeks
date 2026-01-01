import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/session_template.dart';

class SessionTemplateService {
  static final SessionTemplateService _instance = SessionTemplateService._internal();
  factory SessionTemplateService() => _instance;
  SessionTemplateService._internal();

  static const String _storageKey = 'session_templates_storage';
  final List<SessionTemplate> _templates = [];
  bool _isInitialized = false;

  // Initialize and load templates from storage
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      final prefs = await SharedPreferences.getInstance();
      final templatesJson = prefs.getString(_storageKey);

      if (templatesJson != null) {
        final List<dynamic> data = json.decode(templatesJson);
        _templates.clear();
        _templates.addAll(
          data.map((json) => SessionTemplate.fromJson(json as Map<String, dynamic>)).toList(),
        );
        // Sort by createdAt descending (newest first)
        _templates.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      }
      _isInitialized = true;
    } catch (e) {
      _isInitialized = true;
    }
  }

  // Save templates to storage
  Future<void> _saveToStorage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final List<Map<String, dynamic>> data = _templates.map((t) => t.toJson()).toList();
      await prefs.setString(_storageKey, json.encode(data));
    } catch (e) {
      print('Error saving templates: $e');
    }
  }

  List<SessionTemplate> getAllTemplates() {
    return List.unmodifiable(_templates);
  }

  SessionTemplate? getLastTemplate() {
    if (_templates.isEmpty) return null;
    return _templates.first; // Already sorted by createdAt descending
  }

  Future<void> addTemplate(SessionTemplate template) async {
    // Remove existing template with same ID if exists
    _templates.removeWhere((t) => t.id == template.id);
    // Add to beginning (newest first)
    _templates.insert(0, template);
    // Keep only latest 50 templates
    if (_templates.length > 50) {
      _templates.removeRange(50, _templates.length);
    }
    await _saveToStorage();
  }

  Future<void> removeTemplate(String templateId) async {
    _templates.removeWhere((t) => t.id == templateId);
    await _saveToStorage();
  }

  SessionTemplate? getTemplateById(String id) {
    try {
      return _templates.firstWhere((t) => t.id == id);
    } catch (e) {
      return null;
    }
  }
}

