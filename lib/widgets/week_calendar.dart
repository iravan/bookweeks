import 'package:flutter/material.dart';
import 'package:bookweeks/l10n/app_localizations.dart';
import '../models/week.dart';
import '../services/session_service.dart';
import '../services/debug_service.dart';

class WeekCalendar extends StatelessWidget {
  final List<Week> weeks;
  final Week selectedWeek;
  final Function(Week) onWeekSelected;
  final SessionService sessionService;
  final String? heading;
  final DateTime? focusMonth;

  const WeekCalendar({
    super.key,
    required this.weeks,
    required this.selectedWeek,
    required this.onWeekSelected,
    required this.sessionService,
    this.heading,
    this.focusMonth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 0,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading ?? AppLocalizations.of(context)!.selectWeek,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // Day headers
              Expanded(
                child: Row(
                  children: [
                    _buildDayHeader(AppLocalizations.of(context)!.mon, context, 1),
                    _buildDayHeader(AppLocalizations.of(context)!.tue, context, 2),
                    _buildDayHeader(AppLocalizations.of(context)!.wed, context, 3),
                    _buildDayHeader(AppLocalizations.of(context)!.thu, context, 4),
                    _buildDayHeader(AppLocalizations.of(context)!.fri, context, 5),
                    _buildDayHeader(AppLocalizations.of(context)!.sat, context, 6),
                    _buildDayHeader(AppLocalizations.of(context)!.sun, context, 7),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Week rows
          ...weeks.map((week) => _buildWeekRow(week, context)),
        ],
      ),
    );
  }

  Widget _buildDayHeader(String day, BuildContext context, int weekday) {
    // Saturday (6) and Sunday (7) should be red
    final isWeekend = weekday == 6 || weekday == 7;
    
    return Expanded(
      child: Center(
        child: Text(
          day,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isWeekend ? Colors.red : Colors.grey.shade700,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }

  Widget _buildWeekRow(Week week, BuildContext context) {
    final isSelected = week.startDate == selectedWeek.startDate;
    final primaryColor = Theme.of(context).colorScheme.primary;
    
    return GestureDetector(
      onTap: () => onWeekSelected(week),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? primaryColor.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? primaryColor : Colors.grey.withOpacity(0.2),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: week.days.map((day) => _buildDayCell(day, isSelected, context)).toList(),
        ),
      ),
    );
  }

  Widget _buildDayCell(DateTime day, bool isWeekSelected, BuildContext context) {
    final isToday = _isToday(day);
    final isSelected = isWeekSelected && isToday;
    final hasSessions = sessionService.hasSessionsForDate(day);
    final primaryColor = Theme.of(context).colorScheme.primary;
    // Saturday (6) and Sunday (7) should be red
    final isWeekend = day.weekday == 6 || day.weekday == 7;
    final outsideMonth = focusMonth != null &&
        (day.year != focusMonth!.year || day.month != focusMonth!.month);
    
    return Expanded(
      child: Center(
        child: SizedBox(
          height: 44, // Fixed height for consistency
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: isSelected ? primaryColor : Colors.transparent,
                  shape: BoxShape.circle,
                  border: isToday
                      ? Border.all(color: primaryColor, width: 2)
                      : null,
                ),
                child: Center(
                  child: Text(
                    '${day.day}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                      color: isSelected
                          ? Colors.white
                          : outsideMonth
                              ? Colors.grey.shade400
                              : (isToday
                                  ? primaryColor
                                  : (isWeekend
                                      ? Colors.red
                                      : Colors.black87)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
                child: hasSessions
                    ? Container(
                        margin: const EdgeInsets.only(top: 4),
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isToday(DateTime date) {
    final now = DebugService().getCurrentDate();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }
}

