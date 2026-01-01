import 'package:flutter/material.dart';
import 'models/week.dart';
import 'widgets/week_calendar.dart';
import 'widgets/day_tab_view.dart';
import 'services/session_service.dart';
import 'services/student_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Weeks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<Week> _weeks;
  late Week _selectedWeek;
  late List<DateTime> _selectedWeekDays;
  final SessionService _sessionService = SessionService();
  final StudentService _studentService = StudentService();
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _weeks = Week.getNext4Weeks();
    _selectedWeek = _weeks[0]; // Current week
    _selectedWeekDays = _selectedWeek.days;
    _tabController = TabController(length: 7, vsync: this);
    _initializeServices();
  }

  Future<void> _initializeServices() async {
    await Future.wait([
      _sessionService.initialize(),
      _studentService.initialize(),
    ]);
    if (mounted) {
      setState(() {
        _isInitialized = true;
      });
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onWeekSelected(Week week) {
    setState(() {
      _selectedWeek = week;
      _selectedWeekDays = week.days;
      _tabController.animateTo(0); // Reset to first tab when week changes
    });
  }

  String _getDayName(DateTime date) {
    const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return days[date.weekday - 1];
  }

  String _getDayTabLabel(DateTime date) {
    return '${_getDayName(date)}\n${date.day}/${date.month}';
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Weeks'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          // Week Calendar Section
          Padding(
            padding: const EdgeInsets.all(16),
            child: WeekCalendar(
              weeks: _weeks,
              selectedWeek: _selectedWeek,
              onWeekSelected: _onWeekSelected,
              sessionService: _sessionService,
            ),
          ),
          // Day Tabs Section
          Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
              tabs: _selectedWeekDays.map((date) {
                return Tab(
                  child: Text(
                    _getDayTabLabel(date),
                    textAlign: TextAlign.center,
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _selectedWeekDays.map((date) {
                return DayTabView(
                  date: date,
                  onSessionChanged: () {
                    setState(() {}); // Refresh calendar when sessions change
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
