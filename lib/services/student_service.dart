import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/student.dart';

class StudentService {
  static final StudentService _instance = StudentService._internal();
  factory StudentService() => _instance;
  StudentService._internal();

  static const String _storageKey = 'students_storage';
  final List<Student> _students = [];
  bool _isInitialized = false;

  // Initialize and load students from storage
  Future<void> initialize() async {
    if (_isInitialized) return;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      final studentsJson = prefs.getString(_storageKey);
      
      if (studentsJson != null) {
        final List<dynamic> data = json.decode(studentsJson);
        _students.clear();
        _students.addAll(
          data.map((json) => Student.fromJson(json as Map<String, dynamic>)).toList(),
        );
      }
      _isInitialized = true;
    } catch (e) {
      _isInitialized = true;
    }
  }

  // Save students to storage
  Future<void> _saveToStorage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final List<Map<String, dynamic>> data = _students.map((s) => s.toJson()).toList();
      await prefs.setString(_storageKey, json.encode(data));
    } catch (e) {
      print('Error saving students: $e');
    }
  }

  List<Student> getAllStudents() {
    return List.unmodifiable(_students);
  }

  Future<void> addStudent(Student student) async {
    _students.add(student);
    await _saveToStorage();
  }

  Future<void> removeStudent(String studentId) async {
    _students.removeWhere((s) => s.id == studentId);
    await _saveToStorage();
  }

  Student? getStudentById(String id) {
    try {
      return _students.firstWhere((s) => s.id == id);
    } catch (e) {
      return null;
    }
  }
}

