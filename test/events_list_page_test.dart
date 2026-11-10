import 'dart:convert';

import 'package:bookweeks/l10n/app_localizations.dart';
import 'package:bookweeks/services/session_service.dart';
import 'package:bookweeks/widgets/events_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('scrolling to the bottom loads the next 20 older events', (
    tester,
  ) async {
    final stored = <String, List<Map<String, dynamic>>>{};
    for (var i = 1; i <= 25; i++) {
      final start = DateTime(2026, 1, 1).add(Duration(days: i));
      final end = start.add(const Duration(hours: 1));
      final key =
          '${start.year}-${start.month.toString().padLeft(2, '0')}-${start.day.toString().padLeft(2, '0')}';
      stored[key] = [
        {
          'id': 'event-$i',
          'title': 'Event $i',
          'startTime': start.toIso8601String(),
          'endTime': end.toIso8601String(),
          'description': null,
          'studentIds': <String>[],
        },
      ];
    }

    SharedPreferences.setMockInitialValues({
      'sessions_storage': jsonEncode(stored),
    });
    await SessionService().initialize();

    await tester.pumpWidget(
      MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const EventsListPage(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Event 25'), findsOneWidget);
    expect(find.text('Event 1'), findsNothing);

    final newest = tester.getTopLeft(find.text('Event 25')).dy;
    final next = tester.getTopLeft(find.text('Event 24')).dy;
    expect(newest, lessThan(next));

    await tester.scrollUntilVisible(
      find.text('Event 1'),
      400,
      scrollable: find.descendant(
        of: find.byType(ListView),
        matching: find.byType(Scrollable),
      ),
    );

    expect(find.text('Event 1'), findsOneWidget);
  });
}
