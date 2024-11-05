import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeLogsRecord extends FirestoreRecord {
  TimeLogsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "time_spent" field.
  int? _timeSpent;
  int get timeSpent => _timeSpent ?? 0;
  bool hasTimeSpent() => _timeSpent != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "day_of_week" field.
  String? _dayOfWeek;
  String get dayOfWeek => _dayOfWeek ?? '';
  bool hasDayOfWeek() => _dayOfWeek != null;

  void _initializeFields() {
    _category = snapshotData['category'] as String?;
    _timeSpent = castToType<int>(snapshotData['time_spent']);
    _date = snapshotData['date'] as DateTime?;
    _dayOfWeek = snapshotData['day_of_week'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('time_logs');

  static Stream<TimeLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TimeLogsRecord.fromSnapshot(s));

  static Future<TimeLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TimeLogsRecord.fromSnapshot(s));

  static TimeLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TimeLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimeLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimeLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimeLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimeLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimeLogsRecordData({
  String? category,
  int? timeSpent,
  DateTime? date,
  String? dayOfWeek,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'time_spent': timeSpent,
      'date': date,
      'day_of_week': dayOfWeek,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimeLogsRecordDocumentEquality implements Equality<TimeLogsRecord> {
  const TimeLogsRecordDocumentEquality();

  @override
  bool equals(TimeLogsRecord? e1, TimeLogsRecord? e2) {
    return e1?.category == e2?.category &&
        e1?.timeSpent == e2?.timeSpent &&
        e1?.date == e2?.date &&
        e1?.dayOfWeek == e2?.dayOfWeek;
  }

  @override
  int hash(TimeLogsRecord? e) => const ListEquality()
      .hash([e?.category, e?.timeSpent, e?.date, e?.dayOfWeek]);

  @override
  bool isValidKey(Object? o) => o is TimeLogsRecord;
}
