import 'package:flutter/material.dart';

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

  bool _isStartedTIMER = false;
  bool get isStartedTIMER => _isStartedTIMER;
  set isStartedTIMER(bool value) {
    _isStartedTIMER = value;
  }

  DateTime? _currentTime = DateTime.fromMillisecondsSinceEpoch(1730214000000);
  DateTime? get currentTime => _currentTime;
  set currentTime(DateTime? value) {
    _currentTime = value;
  }

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? value) {
    _selectedDate = value;
  }

  String _StringselectDate = '';
  String get StringselectDate => _StringselectDate;
  set StringselectDate(String value) {
    _StringselectDate = value;
  }

  bool _taskSecelted = false;
  bool get taskSecelted => _taskSecelted;
  set taskSecelted(bool value) {
    _taskSecelted = value;
  }

  int _finalTimeCount = 0;
  int get finalTimeCount => _finalTimeCount;
  set finalTimeCount(int value) {
    _finalTimeCount = value;
  }

  int _dropMin = 0;
  int get dropMin => _dropMin;
  set dropMin(int value) {
    _dropMin = value;
  }

  int _dropSec = 0;
  int get dropSec => _dropSec;
  set dropSec(int value) {
    _dropSec = value;
  }

  bool _timeprogress = true;
  bool get timeprogress => _timeprogress;
  set timeprogress(bool value) {
    _timeprogress = value;
  }

  int _drop0 = 0;
  int get drop0 => _drop0;
  set drop0(int value) {
    _drop0 = value;
  }

  DateTime? _recordStartTime;
  DateTime? get recordStartTime => _recordStartTime;
  set recordStartTime(DateTime? value) {
    _recordStartTime = value;
  }

  DateTime? _recordStopTime;
  DateTime? get recordStopTime => _recordStopTime;
  set recordStopTime(DateTime? value) {
    _recordStopTime = value;
  }

  DateTime? _resultDura;
  DateTime? get resultDura => _resultDura;
  set resultDura(DateTime? value) {
    _resultDura = value;
  }
}
