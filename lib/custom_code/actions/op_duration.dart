// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<DateTime> opDuration(
  DateTime? startTime,
  DateTime? endTime,
) async {
  // Action Name is  opDuration.  endTime에서 startTime을 뺸 값을 초 단위로 리턴
  if (startTime == null || endTime == null) {
    throw Exception('Invalid input');
  }

  Duration duration = endTime.difference(startTime);
  int seconds = duration.inSeconds;

  return DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
}
