// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction(int? hour) async {
  // hour이라는 정수값을 60000을 곱해서 리턴
  if (hour != null) {
    int result = hour * 60000;
    return result;
  } else {
    throw Exception("Hour value is null");
  }
}
