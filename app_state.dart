import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _bookingtime = '';
  String get bookingtime => _bookingtime;
  set bookingtime(String value) {
    _bookingtime = value;
  }

  bool _pastbooking = false;
  bool get pastbooking => _pastbooking;
  set pastbooking(bool value) {
    _pastbooking = value;
  }

  bool _upcomingbooking = false;
  bool get upcomingbooking => _upcomingbooking;
  set upcomingbooking(bool value) {
    _upcomingbooking = value;
  }
}
