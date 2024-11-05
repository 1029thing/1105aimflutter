import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int? converHourToMs(int? hour) {
  // 드롭다운에서 선택된 값을 60000을 곱해서 리턴
  if (hour != null) {
    return hour * 60000;
  }
  return null;
}

int? converMntToMs(int? min) {
  // 드롭다운에서 선택된 값을 60000을 곱해서 리턴
  if (min != null) {
    return min * 1000;
  }
  return null;
}

int? finalOpeTime(
  int? dropMin,
  int? dropSec,
) {
  //  dropMin(Null 값 허용)과 dropSec(Null 값 허용)을 더해서 리턴
  int total = 0;

  if (dropMin != null) {
    total += dropMin;
  }

  if (dropSec != null) {
    total += dropSec;
  }

  return total;
}

int? lastDurationcaclu(
  DateTime? startTime,
  DateTime? endTime,
) {
  // AppState의 변수 startTime과 endTime을 받아서 차이를 비교, 초 단위로 리턴
  if (startTime != null && endTime != null) {
    Duration difference = endTime.difference(startTime);
    return difference.inSeconds;
  }
  return null;
}

int? newCustomFunction() {
  // int를 받아서 더블로 반환
  int? num = 10;
  int result = num;
  return result;
}
