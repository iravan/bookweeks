import 'session.dart';

class SessionTemplate {
  final String id;
  final String name; // Template name (for identification)
  final String title; // Default session title when using this template
  final int startHour;
  final int startMinute;
  final int endHour;
  final int endMinute;
  final String? description;
  final List<String> studentIds;
  final DateTime createdAt;

  SessionTemplate({
    required this.id,
    required this.name,
    required this.title,
    required this.startHour,
    required this.startMinute,
    required this.endHour,
    required this.endMinute,
    this.description,
    List<String>? studentIds,
    DateTime? createdAt,
  })  : studentIds = studentIds ?? [],
        createdAt = createdAt ?? DateTime.now();

  SessionTemplate copyWith({
    String? id,
    String? name,
    String? title,
    int? startHour,
    int? startMinute,
    int? endHour,
    int? endMinute,
    String? description,
    List<String>? studentIds,
    DateTime? createdAt,
  }) {
    return SessionTemplate(
      id: id ?? this.id,
      name: name ?? this.name,
      title: title ?? this.title,
      startHour: startHour ?? this.startHour,
      startMinute: startMinute ?? this.startMinute,
      endHour: endHour ?? this.endHour,
      endMinute: endMinute ?? this.endMinute,
      description: description ?? this.description,
      studentIds: studentIds ?? this.studentIds,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  // Convert SessionTemplate to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'title': title,
      'startHour': startHour,
      'startMinute': startMinute,
      'endHour': endHour,
      'endMinute': endMinute,
      'description': description,
      'studentIds': studentIds,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  // Create SessionTemplate from JSON
  factory SessionTemplate.fromJson(Map<String, dynamic> json) {
    // Handle backward compatibility: if 'name' doesn't exist, use 'title' as name
    final name = json['name'] as String? ?? json['title'] as String;
    return SessionTemplate(
      id: json['id'] as String,
      name: name,
      title: json['title'] as String,
      startHour: json['startHour'] as int,
      startMinute: json['startMinute'] as int,
      endHour: json['endHour'] as int,
      endMinute: json['endMinute'] as int,
      description: json['description'] as String?,
      studentIds: json['studentIds'] != null
          ? List<String>.from(json['studentIds'] as List)
          : [],
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  // Create SessionTemplate from Session (requires name parameter)
  factory SessionTemplate.fromSession(Session session, String templateName) {
    return SessionTemplate(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: templateName,
      title: session.title,
      startHour: session.startTime.hour,
      startMinute: session.startTime.minute,
      endHour: session.endTime.hour,
      endMinute: session.endTime.minute,
      description: session.description,
      studentIds: List<String>.from(session.studentIds),
    );
  }

  // Convert template to Session for a specific date
  Session toSession(DateTime date) {
    final startTime = DateTime(
      date.year,
      date.month,
      date.day,
      startHour,
      startMinute,
    );
    final endTime = DateTime(
      date.year,
      date.month,
      date.day,
      endHour,
      endMinute,
    );
    return Session(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      startTime: startTime,
      endTime: endTime,
      description: description,
      studentIds: List<String>.from(studentIds),
    );
  }
}

