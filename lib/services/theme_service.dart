import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppTheme {
  final String name;
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color surface;
  final Color background;

  const AppTheme({
    required this.name,
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.surface,
    required this.background,
  });

  ColorScheme get colorScheme => ColorScheme.light(
        primary: primary,
        secondary: secondary,
        tertiary: tertiary,
        surface: surface,
        background: background,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black87,
        onBackground: Colors.black87,
      );

  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: background,
        appBarTheme: AppBarTheme(
          backgroundColor: primary,
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
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: secondary,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        tabBarTheme: TabBarThemeData(
          labelColor: primary,
          unselectedLabelColor: const Color(0xFF9E9E9E),
          indicatorColor: primary,
          labelStyle: const TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
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
            borderSide: BorderSide(color: primary, width: 2),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary),
        ),
      );
}

class ThemeService {
  static final ThemeService _instance = ThemeService._internal();
  factory ThemeService() => _instance;
  ThemeService._internal();

  static const String _themeKey = 'selected_theme';
  SharedPreferences? _prefs;

  // Available themes
  static const List<AppTheme> themes = [
    AppTheme(
      name: 'Teal',
      primary: Color(0xFF4fb7ae),
      secondary: Color(0xFFf8785b),
      tertiary: Color(0xFFf67a5e),
      surface: Color(0xFFfbf2e9),
      background: Color(0xFFfbf2e9),
    ),
    AppTheme(
      name: 'Blue',
      primary: Color(0xFF2196F3),
      secondary: Color(0xFF03A9F4),
      tertiary: Color(0xFF00BCD4),
      surface: Color(0xFFE3F2FD),
      background: Color(0xFFE3F2FD),
    ),
    AppTheme(
      name: 'Purple',
      primary: Color(0xFF9C27B0),
      secondary: Color(0xFFBA68C8),
      tertiary: Color(0xFFCE93D8),
      surface: Color(0xFFF3E5F5),
      background: Color(0xFFF3E5F5),
    ),
    AppTheme(
      name: 'Green',
      primary: Color(0xFF4CAF50),
      secondary: Color(0xFF66BB6A),
      tertiary: Color(0xFF81C784),
      surface: Color(0xFFE8F5E9),
      background: Color(0xFFE8F5E9),
    ),
    AppTheme(
      name: 'Orange',
      primary: Color(0xFFFF9800),
      secondary: Color(0xFFFFB74D),
      tertiary: Color(0xFFFFCC80),
      surface: Color(0xFFFFF3E0),
      background: Color(0xFFFFF3E0),
    ),
    AppTheme(
      name: 'Red',
      primary: Color(0xFFF44336),
      secondary: Color(0xFFE57373),
      tertiary: Color(0xFFEF5350),
      surface: Color(0xFFFFEBEE),
      background: Color(0xFFFFEBEE),
    ),
    AppTheme(
      name: 'Pink',
      primary: Color(0xFFE91E63),
      secondary: Color(0xFFF06292),
      tertiary: Color(0xFFF48FB1),
      surface: Color(0xFFFCE4EC),
      background: Color(0xFFFCE4EC),
    ),
    AppTheme(
      name: 'Indigo',
      primary: Color(0xFF3F51B5),
      secondary: Color(0xFF5C6BC0),
      tertiary: Color(0xFF7986CB),
      surface: Color(0xFFE8EAF6),
      background: Color(0xFFE8EAF6),
    ),
  ];

  // Default theme (Teal)
  static const AppTheme defaultTheme = AppTheme(
    name: 'Teal',
    primary: Color(0xFF4fb7ae),
    secondary: Color(0xFFf8785b),
    tertiary: Color(0xFFf67a5e),
    surface: Color(0xFFfbf2e9),
    background: Color(0xFFfbf2e9),
  );

  // Current theme
  AppTheme _currentTheme = defaultTheme;
  AppTheme get currentTheme => _currentTheme;

  // Notifier for theme changes
  final ValueNotifier<AppTheme> themeNotifier = ValueNotifier<AppTheme>(defaultTheme);

  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
    await loadTheme();
  }

  Future<void> loadTheme() async {
    if (_prefs == null) {
      await initialize();
    }

    final themeIndex = _prefs!.getInt(_themeKey) ?? 0;
    if (themeIndex >= 0 && themeIndex < themes.length) {
      _currentTheme = themes[themeIndex];
      themeNotifier.value = _currentTheme;
    }
  }

  Future<void> setTheme(int index) async {
    if (_prefs == null) {
      await initialize();
    }

    if (index >= 0 && index < themes.length) {
      _currentTheme = themes[index];
      themeNotifier.value = _currentTheme;
      await _prefs!.setInt(_themeKey, index);
    }
  }

  Future<void> setThemeByName(String name) async {
    final index = themes.indexWhere((theme) => theme.name == name);
    if (index >= 0) {
      await setTheme(index);
    }
  }

  int getCurrentThemeIndex() {
    return themes.indexOf(_currentTheme);
  }
}
