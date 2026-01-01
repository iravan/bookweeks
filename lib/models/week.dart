class Week {
  final DateTime startDate; // Monday of the week
  final DateTime endDate; // Sunday of the week

  Week({required this.startDate, required this.endDate});

  List<DateTime> get days {
    return List.generate(7, (index) => startDate.add(Duration(days: index)));
  }

  bool contains(DateTime date) {
    return date.isAfter(startDate.subtract(const Duration(days: 1))) &&
        date.isBefore(endDate.add(const Duration(days: 1)));
  }

  String get weekRange {
    return '${_formatDate(startDate)} - ${_formatDate(endDate)}';
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}';
  }

  static Week getCurrentWeek([DateTime? referenceDate]) {
    final now = referenceDate ?? DateTime.now();
    final monday = now.subtract(Duration(days: now.weekday - 1));
    final sunday = monday.add(const Duration(days: 6));
    return Week(startDate: monday, endDate: sunday);
  }

  static List<Week> getNext4Weeks([DateTime? referenceDate]) {
    final currentWeek = getCurrentWeek(referenceDate);
    return List.generate(4, (index) {
      final startDate = currentWeek.startDate.add(Duration(days: index * 7));
      final endDate = startDate.add(const Duration(days: 6));
      return Week(startDate: startDate, endDate: endDate);
    });
  }
}

