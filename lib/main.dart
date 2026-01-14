import 'dart:io';
import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:file_picker/file_picker.dart';
import 'package:bookweeks/l10n/app_localizations.dart';
import 'models/week.dart';
import 'widgets/week_calendar.dart';
import 'widgets/day_tab_view.dart';
import 'widgets/events_list_page.dart';
import 'widgets/template_management_page.dart';
import 'services/session_service.dart';
import 'services/student_service.dart';
import 'services/export_import_service.dart';
import 'services/debug_service.dart';
import 'services/notification_service.dart';
import 'services/theme_service.dart';
import 'widgets/notification_settings_page.dart';
import 'widgets/theme_settings_page.dart';
import 'widgets/foreground_notification_banner.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// Top-level function for background notification tap handler
@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse response) {
  print('Background notification tapped: ${response.id}');
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeService _themeService = ThemeService();

  @override
  void initState() {
    super.initState();
    _themeService.initialize();
    // Listen to theme changes
    _themeService.themeNotifier.addListener(_onThemeChanged);
  }

  @override
  void dispose() {
    _themeService.themeNotifier.removeListener(_onThemeChanged);
    super.dispose();
  }

  void _onThemeChanged() {
    setState(() {
      // Rebuild when theme changes
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AppTheme>(
      valueListenable: _themeService.themeNotifier,
      builder: (context, currentTheme, child) {
        return MaterialApp(
          title: 'Book Weeks',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('en'), // English
            const Locale('zh', 'TW'), // Traditional Chinese
            const Locale('zh', 'CN'), // Simplified Chinese
            const Locale('ja'), // Japanese
            const Locale('ko'), // Korean
            const Locale('fr'), // French
            const Locale('es'), // Spanish
            const Locale('es', 'MX'), // Mexican Spanish
            const Locale('th'), // Thai
            const Locale('ru'), // Russian
            const Locale('hi'), // Hindi
            const Locale('bn'), // Bengali
            const Locale('te'), // Telugu
            const Locale('ta'), // Tamil
            const Locale('mr'), // Marathi
            const Locale('gu'), // Gujarati
            const Locale('kn'), // Kannada
            const Locale('ml'), // Malayalam
            const Locale('pa'), // Punjabi
            const Locale('vi'), // Vietnamese
            const Locale('km'), // Khmer (Cambodian)
            const Locale('fil'), // Filipino (Philippines)
            const Locale('it'), // Italian
            const Locale('de'), // German
            const Locale('uk'), // Ukrainian
            const Locale('pt'), // Portuguese
            const Locale('mn'), // Mongolian
            const Locale('fi'), // Finnish
            const Locale('sv'), // Swedish
            const Locale('pl'), // Polish
            const Locale('lo'), // Lao (Laos)
            const Locale('hr'), // Croatian
            const Locale('is'), // Icelandic
            const Locale('tr'), // Turkish
            const Locale('he'), // Hebrew (Israel)
            const Locale('rm'), // Romansh
            const Locale('el'), // Greek
          ],
          theme: currentTheme.themeData,
          home: const MainPage(),
        );
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  late TabController _tabController;
  late List<Week> _weeks;
  late Week _selectedWeek;
  late List<DateTime> _selectedWeekDays;
  final SessionService _sessionService = SessionService();
  final StudentService _studentService = StudentService();
  final ExportImportService _exportImportService = ExportImportService();
  bool _isInitialized = false;
  DateTime? _lastCheckedDate;
  OverlayEntry? _notificationOverlay;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final debugService = DebugService();
    _lastCheckedDate = debugService.getCurrentDate();
    _updateWeeks();
    _tabController = TabController(
      length: _selectedWeekDays.length,
      vsync: this,
    );
    _initializeServices();
    _setupForegroundNotificationHandler();

    // Set initial tab to today if current week is selected
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _setTabToCurrentDay();
    });
  }

  void _setupForegroundNotificationHandler() {
    // Set up foreground notification handler
    NotificationService().setForegroundNotificationHandler((title, body) {
      _showForegroundNotification(title, body);
    });
  }

  void _showForegroundNotification(String title, String body) {
    // Remove existing notification if any
    _hideForegroundNotification();

    // Create overlay entry
    _notificationOverlay = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).padding.top,
        left: 0,
        right: 0,
        child: SafeArea(
          child: ForegroundNotificationBanner(
            title: title,
            body: body,
            onTap: () {
              // Handle notification tap if needed
            },
            onDismiss: () {
              _hideForegroundNotification();
            },
          ),
        ),
      ),
    );

    // Insert overlay
    Overlay.of(context).insert(_notificationOverlay!);
  }

  void _hideForegroundNotification() {
    _notificationOverlay?.remove();
    _notificationOverlay = null;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _tabController.dispose();
    _hideForegroundNotification();
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
        _selectedWeekDays = _getFilteredWeekDays(_selectedWeek);
        // Update TabController length if needed
        if (_tabController.length != _selectedWeekDays.length) {
          _tabController.dispose();
          _tabController = TabController(
            length: _selectedWeekDays.length,
            vsync: this,
          );
        }
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
    _selectedWeekDays = _getFilteredWeekDays(_selectedWeek);
  }

  List<DateTime> _getFilteredWeekDays(Week week) {
    final debugService = DebugService();
    final currentDate = debugService.getCurrentDate();
    final today = DateTime(
      currentDate.year,
      currentDate.month,
      currentDate.day,
    );

    // Check if this is the current week
    final isCurrentWeek = week.days.any(
      (day) =>
          day.year == currentDate.year &&
          day.month == currentDate.month &&
          day.day == currentDate.day,
    );

    if (isCurrentWeek) {
      // Filter out days before today
      return week.days.where((day) {
        final dayDate = DateTime(day.year, day.month, day.day);
        return !dayDate.isBefore(today);
      }).toList();
    } else {
      // For future weeks, show all days
      return week.days;
    }
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
      NotificationService().initialize(),
      ThemeService().initialize(),
    ]);

    // Set custom notification sound if needed
    // IMPORTANT: Set this BEFORE rescheduling notifications
    // Make sure the sound file exists at:
    // - iOS: ios/Runner/notification_sound.caf (and added to "Copy Bundle Resources" in Xcode)
    // - Android: android/app/src/main/res/raw/notification_sound.mp3
    NotificationService().setCustomSoundFileName('notification_sound.caf');

    // Schedule all notifications for existing sessions on app launch
    // This ensures all events have notifications scheduled correctly
    try {
      final allSessions = _sessionService.getAllSessions();
      await NotificationService().rescheduleAllNotifications(allSessions);
      print(
        'MainPage: Scheduled notifications for ${allSessions.length} sessions on app launch',
      );
    } catch (e) {
      print('MainPage: Error scheduling notifications on launch: $e');
      // Continue even if notification scheduling fails
    }
    if (mounted) {
      setState(() {
        _isInitialized = true;
      });
    }
  }

  void _onWeekSelected(Week week) {
    final debugService = DebugService();
    final currentDate = debugService.getCurrentDate();

    // Get filtered days (excludes past days if current week)
    final filteredDays = _getFilteredWeekDays(week);

    // Check if this is the current week
    final isCurrentWeek = week.days.any(
      (day) =>
          day.year == currentDate.year &&
          day.month == currentDate.month &&
          day.day == currentDate.day,
    );

    int tabIndex = 0;
    if (isCurrentWeek) {
      // Find the index of today in the filtered days
      final todayIndex = filteredDays.indexWhere(
        (day) =>
            day.year == currentDate.year &&
            day.month == currentDate.month &&
            day.day == currentDate.day,
      );
      if (todayIndex != -1) {
        tabIndex = todayIndex;
      }
    } else {
      // For non-current weeks, find the first day with events in filtered days
      for (int i = 0; i < filteredDays.length; i++) {
        if (_sessionService.hasSessionsForDate(filteredDays[i])) {
          tabIndex = i;
          break;
        }
      }
      // If no events found, tabIndex remains 0 (first day in filtered list)
    }

    setState(() {
      _selectedWeek = week;
      _selectedWeekDays = filteredDays;
      // Update TabController length if needed
      if (_tabController.length != filteredDays.length) {
        _tabController.dispose();
        _tabController = TabController(
          length: filteredDays.length,
          vsync: this,
          initialIndex: tabIndex < filteredDays.length ? tabIndex : 0,
        );
      } else {
        _tabController.animateTo(tabIndex);
      }
    });
  }

  String _getDayName(DateTime date, BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final days = [
      l10n.mon,
      l10n.tue,
      l10n.wed,
      l10n.thu,
      l10n.fri,
      l10n.sat,
      l10n.sun,
    ];
    return days[date.weekday - 1];
  }

  String _getDayTabLabel(DateTime date, BuildContext context) {
    final dayName = _getDayName(date, context);
    return '$dayName\n${date.day}/${date.month}';
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
            Text(AppLocalizations.of(context)!.appTitle),
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
                    AppLocalizations.of(context)!.debug,
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
            icon: const Icon(Icons.palette),
            tooltip: 'Theme Settings',
            onPressed: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ThemeSettingsPage(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.event_note),
            tooltip: AppLocalizations.of(context)!.allEvents,
            onPressed: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const EventsListPage()),
              );
              // Refresh when returning from events list
              setState(() {});
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: AppLocalizations.of(context)!.notificationSettings,
            onPressed: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NotificationSettingsPage(),
                ),
              );
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
                    Text(AppLocalizations.of(context)!.manageTemplates),
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
                    Text(AppLocalizations.of(context)!.exportData),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'import',
                child: Row(
                  children: [
                    const Icon(Icons.download, color: Colors.green),
                    const SizedBox(width: 8),
                    Text(AppLocalizations.of(context)!.importData),
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
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.4,
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: WeekCalendar(
                    weeks: _weeks,
                    selectedWeek: _selectedWeek,
                    onWeekSelected: _onWeekSelected,
                    sessionService: _sessionService,
                  ),
                ),
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
                      _getDayTabLabel(date, context),
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
        dialogTitle: AppLocalizations.of(context)!.saveExportFile,
        fileName: defaultFileName,
        bytes: Uint8List.fromList(bytes),
      );

      if (outputPath != null && outputPath.isNotEmpty) {
        // Show success message
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                AppLocalizations.of(context)!.exportSuccessful(outputPath),
              ),
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
            content: Text(
              AppLocalizations.of(context)!.exportFailed(e.toString()),
            ),
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

          // Schedule notifications for all imported sessions
          if (importResult.success && importResult.sessionsImported > 0) {
            try {
              await NotificationService().initialize();
              final allSessions = _sessionService.getAllSessions();
              await NotificationService().rescheduleAllNotifications(
                allSessions,
              );
              print('MainPage: Scheduled notifications for imported sessions');
            } catch (e) {
              print(
                'MainPage: Error scheduling notifications after import: $e',
              );
              // Continue even if notification scheduling fails
            }
          }

          // Close loading dialog
          if (mounted) Navigator.of(context).pop();

          // Show result
          if (mounted) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(
                  importResult.success
                      ? AppLocalizations.of(context)!.importSuccessful
                      : AppLocalizations.of(context)!.importFailed,
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
                    child: Text(AppLocalizations.of(context)!.ok),
                  ),
                ],
              ),
            );
          }
        } else {
          if (mounted) {
            Navigator.of(context).pop(); // Close loading dialog
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(AppLocalizations.of(context)!.errorReadingFile),
              ),
            );
          }
        }
      }
    } catch (e) {
      if (mounted) {
        Navigator.of(context).pop(); // Close loading dialog if open
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.error(e.toString())),
          ),
        );
      }
    }
  }

  Widget _buildDebugMenu(BuildContext context) {
    final debugService = DebugService();
    final simulatedDate = debugService.getSimulatedDate();

    return PopupMenuButton<String>(
      icon: const Icon(Icons.bug_report),
      tooltip: AppLocalizations.of(context)!.debugDateSimulation,
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
          child: Row(
            children: [
              const Icon(Icons.calendar_today, size: 20),
              const SizedBox(width: 8),
              Text(AppLocalizations.of(context)!.setCustomDate),
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
                Text(
                  '${AppLocalizations.of(context)!.clear} (${AppLocalizations.of(context)!.now(_formatDate(simulatedDate))})',
                ),
              ],
            ),
          ),
        const PopupMenuDivider(),
        PopupMenuItem<String>(
          value: 'today',
          child: Row(
            children: [
              const Icon(Icons.today, size: 20),
              const SizedBox(width: 8),
              Text(AppLocalizations.of(context)!.today),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'yesterday',
          child: Row(
            children: [
              const Icon(Icons.arrow_back, size: 20),
              const SizedBox(width: 8),
              Text(AppLocalizations.of(context)!.yesterday),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'tomorrow',
          child: Row(
            children: [
              const Icon(Icons.arrow_forward, size: 20),
              const SizedBox(width: 8),
              Text(AppLocalizations.of(context)!.tomorrow),
            ],
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem<String>(
          value: 'day_-7',
          child: Text(AppLocalizations.of(context)!.daysAgo(7)),
        ),
        PopupMenuItem<String>(
          value: 'day_-14',
          child: Text(AppLocalizations.of(context)!.daysAgo(14)),
        ),
        PopupMenuItem<String>(
          value: 'day_7',
          child: Text(AppLocalizations.of(context)!.daysLater(7)),
        ),
        PopupMenuItem<String>(
          value: 'day_14',
          child: Text(AppLocalizations.of(context)!.daysLater(14)),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
