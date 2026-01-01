class Student {
  final String id;
  final String name;
  final String? nickname;
  final int? age;

  Student({
    required this.id,
    required this.name,
    this.nickname,
    this.age,
  });

  Student copyWith({
    String? id,
    String? name,
    String? nickname,
    int? age,
  }) {
    return Student(
      id: id ?? this.id,
      name: name ?? this.name,
      nickname: nickname ?? this.nickname,
      age: age ?? this.age,
    );
  }

  // Convert Student to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'nickname': nickname,
      'age': age,
    };
  }

  // Create Student from JSON
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'] as String,
      name: json['name'] as String,
      nickname: json['nickname'] as String?,
      age: json['age'] as int?,
    );
  }

  String get displayName {
    return nickname?.isNotEmpty == true ? nickname! : name;
  }
}

