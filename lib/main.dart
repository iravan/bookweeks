import 'dart:io';
import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:file_picker/file_picker.dart';
import 'models/week.dart';
import 'widgets/week_calendar.dart';
import 'widgets/day_tab_view.dart';
import 'widgets/events_list_page.dart';
import 'widgets/template_management_page.dart';
import 'services/session_service.dart';
import 'services/student_service.dart';
import 'services/export_import_service.dart';
import 'services/debug_service.dart';

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
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF4fb7ae), // Primary teal
          secondary: const Color(0xFFf8785b), // Secondary coral
          tertiary: const Color(0xFFf67a5e), // Secondary highlight
          surface: const Color(0xFFfbf2e9), // Background
          background: const Color(0xFFfbf2e9), // Background
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black87,
          onBackground: Colors.black87,
        ),
        scaffoldBackgroundColor: const Color(0xFFfbf2e9), // Background
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF4fb7ae), // Primary
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFf8785b), // Secondary
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF4fb7ae), // Primary
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        tabBarTheme: const TabBarThemeData(
          labelColor: Color(0xFF4fb7ae), // Primary
          unselectedLabelColor: Color(0xFF9E9E9E),
          indicatorColor: Color(0xFF4fb7ae), // Primary
          labelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF4fb7ae), width: 2),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: const Color(0xFF4fb7ae)),
        ),
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

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late TabController _tabController;
  late List<Week> _weeks;
  late Week _selectedWeek;
  late List<DateTime> _selectedWeekDays;
  final SessionService _sessionService = SessionService();
  final StudentService _studentService = StudentService();
  final ExportImportService _exportImportService = ExportImportService();
  bool _isInitialized = false;
  DateTime? _lastCheckedDate;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final debugService = DebugService();
    _lastCheckedDate = debugService.getCurrentDate();
    _updateWeeks();
    _tabController = TabController(length: 7, vsync: this);
    _initializeServices();

    // Set initial tab to today if current week is selected
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _setTabToCurrentDay();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _tabController.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      _checkAndRefreshCalendar();
    }
  }

  void _checkAndRefreshCalendar() {
    final debugService = DebugService();
    final currentDate = debugService.getCurrentDate();

    // Check if the date has changed (comparing year, month, day)
    if (_lastCheckedDate == null ||
        _lastCheckedDate!.year != currentDate.year ||
        _lastCheckedDate!.month != currentDate.month ||
        _lastCheckedDate!.day != currentDate.day) {
      _lastCheckedDate = currentDate;

      // Refresh weeks and reset to current week
      setState(() {
        _updateWeeks();
        _selectedWeek = _weeks[0]; // Current week
        _selectedWeekDays = _selectedWeek.days;
        _tabController.animateTo(0);
        _setTabToCurrentDay();
      });
    }
  }

  void _updateWeeks() {
    final debugService = DebugService();
    final referenceDate = debugService.getCurrentDate();
    _weeks = Week.getNext4Weeks(referenceDate);
    _selectedWeek = _weeks[0]; // Current week
    _selectedWeekDays = _selectedWeek.days;
  }

  void _setTabToCurrentDay() {
    final debugService = DebugService();
    final currentDate = debugService.getCurrentDate();

    // Find the index of today in the selected week
    final todayIndex = _selectedWeekDays.indexWhere(
      (day) =>
          day.year == currentDate.year &&
          day.month == currentDate.month &&
          day.day == currentDate.day,
    );

    if (todayIndex != -1 && _selectedWeek == _weeks[0]) {
      // Only set to today if current week is selected
      _tabController.animateTo(todayIndex);
    }
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

  void _onWeekSelected(Week week) {
    final debugService = DebugService();
    final currentDate = debugService.getCurrentDate();

    // Check if this is the current week
    final isCurrentWeek = week.days.any(
      (day) =>
          day.year == currentDate.year &&
          day.month == currentDate.month &&
          day.day == currentDate.day,
    );

    int tabIndex = 0;
    if (isCurrentWeek) {
      // Find the index of today in the week
      final todayIndex = week.days.indexWhere(
        (day) =>
            day.year == currentDate.year &&
            day.month == currentDate.month &&
            day.day == currentDate.day,
      );
      if (todayIndex != -1) {
        tabIndex = todayIndex;
      }
    } else {
      // For non-current weeks, find the first day with events
      for (int i = 0; i < week.days.length; i++) {
        if (_sessionService.hasSessionsForDate(week.days[i])) {
          tabIndex = i;
          break;
        }
      }
      // If no events found, tabIndex remains 0 (Monday)
    }

    setState(() {
      _selectedWeek = week;
      _selectedWeekDays = week.days;
      _tabController.animateTo(tabIndex);
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
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Book Weeks'),
            if (kDebugMode && DebugService().isSimulating())
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'DEBUG',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade800,
                    ),
                  ),
                ),
              ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.event_note),
            tooltip: 'All Events',
            onPressed: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const EventsListPage()),
              );
              // Refresh when returning from events list
              setState(() {});
            },
          ),
          if (kDebugMode) _buildDebugMenu(context),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'export') {
                _exportData(context);
              } else if (value == 'import') {
                _importData(context);
              } else if (value == 'templates') {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TemplateManagementPage(),
                  ),
                );
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'templates',
                child: Row(
                  children: [
                    Icon(
                      Icons.description,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    const Text('Manage Templates'),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem<String>(
                value: 'export',
                child: Row(
                  children: [
                    Icon(
                      Icons.upload,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    const Text('Export Data'),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'import',
                child: Row(
                  children: [
                    Icon(Icons.download, color: Colors.green),
                    SizedBox(width: 8),
                    Text('Import Data'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
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
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
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
      ),
    );
  }

  Future<void> _exportData(BuildContext context) async {
    try {
      // Export to YAML first (this is fast, no need for loading dialog)
      final yamlContent = await _exportImportService.exportToYaml();

      // Generate default filename with timestamp
      final timestamp = DateTime.now().toIso8601String().split('T')[0];
      final defaultFileName = 'bookweeks_export_$timestamp.yaml';

      // Convert YAML content to UTF-8 bytes (required for Android & iOS)
      final bytes = Uint8List.fromList(utf8.encode(yamlContent));

      // Let user select save location
      // Use a small delay to ensure UI is ready
      await Future.delayed(const Duration(milliseconds: 100));

      String? outputPath = await FilePicker.platform.saveFile(
        dialogTitle: 'Save Export File',
        fileName: defaultFileName,
        bytes: Uint8List.fromList(bytes),
      );

      if (outputPath != null && outputPath.isNotEmpty) {
        // Show success message
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Export successful!\nSaved to: $outputPath'),
              backgroundColor: Colors.green,
              duration: const Duration(seconds: 3),
            ),
          );
        }
      }
    } catch (e) {
      // Show error message
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Export failed: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
      }
    }
  }

  Future<void> _importData(BuildContext context) async {
    try {
      // Pick YAML file
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['yaml', 'yml'],
      );

      if (result != null && result.files.single.path != null) {
        final file = File(result.files.single.path!);

        // Show loading dialog
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) =>
              const Center(child: CircularProgressIndicator()),
        );

        // Read YAML content
        final yamlContent = await _exportImportService.readYamlFromFile(file);

        if (yamlContent != null) {
          // Import data
          final importResult = await _exportImportService.importFromYaml(
            yamlContent,
          );

          // Close loading dialog
          if (mounted) Navigator.of(context).pop();

          // Show result
          if (mounted) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(
                  importResult.success ? 'Import Successful' : 'Import Failed',
                ),
                content: Text(importResult.message),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      if (importResult.success) {
                        // Refresh the UI
                        setState(() {});
                      }
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          }
        } else {
          if (mounted) {
            Navigator.of(context).pop(); // Close loading dialog
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text('Error reading file')));
          }
        }
      }
    } catch (e) {
      if (mounted) {
        Navigator.of(context).pop(); // Close loading dialog if open
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    }
  }

  Widget _buildDebugMenu(BuildContext context) {
    final debugService = DebugService();
    final simulatedDate = debugService.getSimulatedDate();

    return PopupMenuButton<String>(
      icon: const Icon(Icons.bug_report),
      tooltip: 'Debug Date Simulation',
      onSelected: (value) async {
        if (value == 'set_date') {
          final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: simulatedDate ?? DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime(2030),
          );
          if (picked != null) {
            debugService.setSimulatedDate(picked);
            setState(() {
              _updateWeeks();
              _tabController.animateTo(0);
            });
          }
        } else if (value == 'clear_date') {
          debugService.clearSimulatedDate();
          setState(() {
            _updateWeeks();
            _tabController.animateTo(0);
          });
        } else if (value == 'today') {
          debugService.setSimulatedDate(DateTime.now());
          setState(() {
            _updateWeeks();
            _tabController.animateTo(0);
          });
        } else if (value == 'yesterday') {
          final yesterday = DateTime.now().subtract(const Duration(days: 1));
          debugService.setSimulatedDate(yesterday);
          setState(() {
            _updateWeeks();
            _tabController.animateTo(0);
          });
        } else if (value == 'tomorrow') {
          final tomorrow = DateTime.now().add(const Duration(days: 1));
          debugService.setSimulatedDate(tomorrow);
          setState(() {
            _updateWeeks();
            _tabController.animateTo(0);
          });
        } else if (value.startsWith('day_')) {
          final daysOffset = int.parse(value.split('_')[1]);
          final targetDate = DateTime.now().add(Duration(days: daysOffset));
          debugService.setSimulatedDate(targetDate);
          setState(() {
            _updateWeeks();
            _tabController.animateTo(0);
          });
        }
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem<String>(
          value: 'set_date',
          child: const Row(
            children: [
              Icon(Icons.calendar_today, size: 20),
              SizedBox(width: 8),
              Text('Set Custom Date'),
            ],
          ),
        ),
        if (simulatedDate != null)
          PopupMenuItem<String>(
            value: 'clear_date',
            child: Row(
              children: [
                const Icon(Icons.clear, size: 20),
                const SizedBox(width: 8),
                Text('Clear (Now: ${_formatDate(simulatedDate)})'),
              ],
            ),
          ),
        const PopupMenuDivider(),
        const PopupMenuItem<String>(
          value: 'today',
          child: Row(
            children: [
              Icon(Icons.today, size: 20),
              SizedBox(width: 8),
              Text('Today'),
            ],
          ),
        ),
        const PopupMenuItem<String>(
          value: 'yesterday',
          child: Row(
            children: [
              Icon(Icons.arrow_back, size: 20),
              SizedBox(width: 8),
              Text('Yesterday'),
            ],
          ),
        ),
        const PopupMenuItem<String>(
          value: 'tomorrow',
          child: Row(
            children: [
              Icon(Icons.arrow_forward, size: 20),
              SizedBox(width: 8),
              Text('Tomorrow'),
            ],
          ),
        ),
        const PopupMenuDivider(),
        const PopupMenuItem<String>(value: 'day_-7', child: Text('7 days ago')),
        const PopupMenuItem<String>(
          value: 'day_-14',
          child: Text('14 days ago'),
        ),
        const PopupMenuItem<String>(
          value: 'day_7',
          child: Text('7 days later'),
        ),
        const PopupMenuItem<String>(
          value: 'day_14',
          child: Text('14 days later'),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
