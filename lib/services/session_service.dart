import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/session.dart';
import 'notification_service.dart';

class SessionService {
  static final SessionService _instance = SessionService._internal();
  factory SessionService() => _instance;
  SessionService._internal();

  static const String _storageKey = 'sessions_storage';
  final Map<String, List<Session>> _sessions = {}; // Key: date string (YYYY-MM-DD)
  bool _isInitialized = false;
  final NotificationService _notificationService = NotificationService();

  // Initialize and load sessions from storage
  Future<void> initialize() async {
    if (_isInitialized) return;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      final sessionsJson = prefs.getString(_storageKey);
      
      if (sessionsJson != null) {
        final Map<String, dynamic> data = json.decode(sessionsJson);
        _sessions.clear();
        
        data.forEach((dateKey, sessionsList) {
          if (sessionsList is List) {
            _sessions[dateKey] = sessionsList
                .map((json) => Session.fromJson(json as Map<String, dynamic>))
                .toList();
          }
        });
      }
      _isInitialized = true;
    } catch (e) {
      // If there's an error loading, start with empty sessions
      _isInitialized = true;
    }
  }

  // Save sessions to storage
  Future<void> _saveToStorage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final Map<String, dynamic> data = {};
      
      _sessions.forEach((dateKey, sessions) {
        data[dateKey] = sessions.map((s) => s.toJson()).toList();
      });
      
      await prefs.setString(_storageKey, json.encode(data));
    } catch (e) {
      // Handle error silently or log it
      print('Error saving sessions: $e');
    }
  }

  List<Session> getSessionsForDate(DateTime date) {
    final dateKey = _getDateKey(date);
    final sessions = _sessions[dateKey] ?? [];
    // Sort by start time
    sessions.sort((a, b) => a.startTime.compareTo(b.startTime));
    return sessions;
  }

  Future<void> addSession(Session session) async {
    final dateKey = _getDateKey(session.startTime);
    _sessions.putIfAbsent(dateKey, () => []).add(session);
    // Sort by start time
    _sessions[dateKey]!.sort((a, b) => a.startTime.compareTo(b.startTime));
    await _saveToStorage();
    // Schedule notification for the new session
    await _notificationService.initialize();
    await _notificationService.scheduleSessionNotification(session);
  }

  Future<void> removeSession(String sessionId, DateTime date) async {
    final dateKey = _getDateKey(date);
    final session = _sessions[dateKey]?.firstWhere(
      (s) => s.id == sessionId,
      orElse: () => Session(
        id: sessionId,
        title: '',
        startTime: date,
        endTime: date,
      ),
    );
    _sessions[dateKey]?.removeWhere((s) => s.id == sessionId);
    await _saveToStorage();
    // Cancel notification for the deleted session
    if (session != null) {
      await _notificationService.initialize();
      await _notificationService.cancelSessionNotification(session.id);
    }
  }

  Future<void> updateSession(Session updatedSession, DateTime oldDate) async {
    // Remove from old date
    final oldDateKey = _getDateKey(oldDate);
    _sessions[oldDateKey]?.removeWhere((s) => s.id == updatedSession.id);
    
    // Add to new date (or same date if date didn't change)
    final newDateKey = _getDateKey(updatedSession.startTime);
    _sessions.putIfAbsent(newDateKey, () => []).add(updatedSession);
    
    // Sort by start time
    _sessions[newDateKey]!.sort((a, b) => a.startTime.compareTo(b.startTime));
    
    await _saveToStorage();
    // Reschedule notification for the updated session
    await _notificationService.initialize();
    await _notificationService.scheduleSessionNotification(updatedSession);
  }

  bool hasSessionsForDate(DateTime date) {
    final dateKey = _getDateKey(date);
    final sessions = _sessions[dateKey] ?? [];
    return sessions.isNotEmpty;
  }

  // Get all sessions (for export)
  List<Session> getAllSessions() {
    final allSessions = <Session>[];
    _sessions.forEach((dateKey, sessions) {
      allSessions.addAll(sessions);
    });
    return allSessions;
  }

  String _getDateKey(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }
}

