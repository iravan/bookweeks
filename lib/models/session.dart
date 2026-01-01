class Session {
  final String id;
  final String title;
  final DateTime startTime;
  final DateTime endTime;
  final String? description;
  final List<String> studentIds;

  Session({
    required this.id,
    required this.title,
    required this.startTime,
    required this.endTime,
    this.description,
    List<String>? studentIds,
  }) : studentIds = studentIds ?? [];

  Session copyWith({
    String? id,
    String? title,
    DateTime? startTime,
    DateTime? endTime,
    String? description,
    List<String>? studentIds,
  }) {
    return Session(
      id: id ?? this.id,
      title: title ?? this.title,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      description: description ?? this.description,
      studentIds: studentIds ?? this.studentIds,
    );
  }

  // Convert Session to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'startTime': startTime.toIso8601String(),
      'endTime': endTime.toIso8601String(),
      'description': description,
      'studentIds': studentIds,
    };
  }

  // Create Session from JSON
  factory Session.fromJson(Map<String, dynamic> json) {
    return Session(
      id: json['id'] as String,
      title: json['title'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      description: json['description'] as String?,
      studentIds: json['studentIds'] != null
          ? List<String>.from(json['studentIds'] as List)
          : [],
    );
  }
}
