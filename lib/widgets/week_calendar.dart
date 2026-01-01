import 'package:flutter/material.dart';
import '../models/week.dart';
import '../services/session_service.dart';

class WeekCalendar extends StatelessWidget {
  final List<Week> weeks;
  final Week selectedWeek;
  final Function(Week) onWeekSelected;
  final SessionService sessionService;

  const WeekCalendar({
    super.key,
    required this.weeks,
    required this.selectedWeek,
    required this.onWeekSelected,
    required this.sessionService,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select Week',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // Day headers
              Expanded(
                child: Row(
                  children: [
                    _buildDayHeader('Mon'),
                    _buildDayHeader('Tue'),
                    _buildDayHeader('Wed'),
                    _buildDayHeader('Thu'),
                    _buildDayHeader('Fri'),
                    _buildDayHeader('Sat'),
                    _buildDayHeader('Sun'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Week rows
          ...weeks.map((week) => _buildWeekRow(week)),
        ],
      ),
    );
  }

  Widget _buildDayHeader(String day) {
    return Expanded(
      child: Center(
        child: Text(
          day,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildWeekRow(Week week) {
    final isSelected = week.startDate == selectedWeek.startDate;
    
    return GestureDetector(
      onTap: () => onWeekSelected(week),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey.withOpacity(0.2),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: week.days.map((day) => _buildDayCell(day, isSelected)).toList(),
        ),
      ),
    );
  }

  Widget _buildDayCell(DateTime day, bool isWeekSelected) {
    final isToday = _isToday(day);
    final isSelected = isWeekSelected && isToday;
    final hasSessions = sessionService.hasSessionsForDate(day);
    
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '${day.day}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                    color: isSelected ? Colors.white : (isToday ? Colors.blue : Colors.black87),
                  ),
                ),
              ),
            ),
            if (hasSessions)
              Container(
                margin: const EdgeInsets.only(top: 4),
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white : Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }

  bool _isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }
}

