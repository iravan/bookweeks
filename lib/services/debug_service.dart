import 'package:flutter/foundation.dart';

class DebugService {
  static final DebugService _instance = DebugService._internal();
  factory DebugService() => _instance;
  DebugService._internal();

  DateTime? _simulatedDate;

  // Get current date (simulated if set, otherwise real)
  DateTime getCurrentDate() {
    if (kDebugMode && _simulatedDate != null) {
      return _simulatedDate!;
    }
    return DateTime.now();
  }

  // Set simulated date (only in debug mode)
  void setSimulatedDate(DateTime? date) {
    if (kDebugMode) {
      _simulatedDate = date;
    }
  }

  // Get simulated date
  DateTime? getSimulatedDate() {
    return _simulatedDate;
  }

  // Clear simulated date
  void clearSimulatedDate() {
    _simulatedDate = null;
  }

  // Check if date simulation is active
  bool isSimulating() {
    return kDebugMode && _simulatedDate != null;
  }
}

