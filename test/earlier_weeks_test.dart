import 'package:bookweeks/l10n/app_localizations.dart';
import 'package:bookweeks/main.dart';
import 'package:bookweeks/models/week.dart';
import 'package:bookweeks/services/debug_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications_platform_interface/flutter_local_notifications_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _FakeNotifications extends FlutterLocalNotificationsPlatform {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
    DebugService().setSimulatedDate(DateTime(2026, 11, 10));
    FlutterLocalNotificationsPlatform.instance = _FakeNotifications();
  });

  tearDown(() {
    DebugService().clearSimulatedDate();
  });

  test('weeksInMonth covers every day of that month', () {
    final weeks = Week.weeksInMonth(DateTime(2026, 8, 1));
    final days = weeks.expand((week) => week.days).toList();

    expect(weeks.first.startDate.weekday, DateTime.monday);
    for (var day = 1; day <= 31; day++) {
      expect(
        days.any((date) => date.year == 2026 && date.month == 8 && date.day == day),
        isTrue,
        reason: 'August $day is missing',
      );
    }
    expect(weeks.last.contains(DateTime(2026, 8, 31)), isTrue);
  });

  testWidgets('current week tabs include days before today', (tester) async {
    DebugService().setSimulatedDate(DateTime(2026, 11, 11));

    await tester.pumpWidget(
      MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const MainPage(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(Tab), findsNWidgets(7));
    expect(find.widgetWithText(Tab, 'Mon'), findsOneWidget);
    expect(find.widgetWithText(Tab, 'Tue'), findsOneWidget);
    expect(find.widgetWithText(Tab, 'Wed'), findsOneWidget);
  });

  testWidgets('replay toggles the calendar to three months earlier', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const MainPage(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Book Weeks'), findsOneWidget);
    expect(find.text('Select Week'), findsOneWidget);
    expect(find.text('31'), findsNothing);

    await tester.tap(find.byTooltip('Earlier Weeks'));
    await tester.pumpAndSettle();

    expect(find.text('Earlier Weeks'), findsOneWidget);
    expect(find.text('Book Weeks'), findsNothing);
    expect(find.text('Select Week'), findsNothing);
    expect(find.text('August'), findsOneWidget);
    expect(find.text('September'), findsOneWidget);
    expect(find.text('October'), findsOneWidget);
    expect(find.text('November'), findsOneWidget);
    final november = tester.getTopLeft(find.text('November')).dy;
    final october = tester.getTopLeft(find.text('October')).dy;
    final september = tester.getTopLeft(find.text('September')).dy;
    final august = tester.getTopLeft(find.text('August')).dy;
    expect(november, lessThan(october));
    expect(october, lessThan(september));
    expect(september, lessThan(august));
    expect(find.text('31'), findsWidgets);

    await tester.ensureVisible(find.text('Older'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Older'));
    await tester.pumpAndSettle();

    expect(find.text('July'), findsOneWidget);
    expect(find.text('June'), findsOneWidget);
    expect(find.text('May'), findsOneWidget);
    expect(find.text('August'), findsNothing);
    expect(find.text('November'), findsNothing);
    final july = tester.getTopLeft(find.text('July')).dy;
    final june = tester.getTopLeft(find.text('June')).dy;
    final may = tester.getTopLeft(find.text('May')).dy;
    expect(july, lessThan(june));
    expect(june, lessThan(may));

    await tester.tap(find.byTooltip('Earlier Weeks'));
    await tester.pumpAndSettle();

    expect(find.text('Book Weeks'), findsOneWidget);
    expect(find.text('Select Week'), findsOneWidget);
    expect(find.text('August'), findsNothing);
    expect(find.text('September'), findsNothing);
    expect(find.text('October'), findsNothing);
    expect(find.text('31'), findsNothing);
  });
}
