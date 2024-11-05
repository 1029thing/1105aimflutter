import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TodosRecord extends FirestoreRecord {
  TodosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "task" field.
  String? _task;
  String get task => _task ?? '';
  bool hasTask() => _task != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "TimerUse" field.
  bool? _timerUse;
  bool get timerUse => _timerUse ?? false;
  bool hasTimerUse() => _timerUse != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _task = snapshotData['task'] as String?;
    _category = snapshotData['category'] as String?;
    _completed = snapshotData['completed'] as bool?;
    _date = snapshotData['date'] as String?;
    _timerUse = snapshotData['TimerUse'] as bool?;
    _duration = castToType<int>(snapshotData['duration']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('todos')
          : FirebaseFirestore.instance.collectionGroup('todos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('todos').doc(id);

  static Stream<TodosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TodosRecord.fromSnapshot(s));

  static Future<TodosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TodosRecord.fromSnapshot(s));

  static TodosRecord fromSnapshot(DocumentSnapshot snapshot) => TodosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TodosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TodosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TodosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TodosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTodosRecordData({
  String? task,
  String? category,
  bool? completed,
  String? date,
  bool? timerUse,
  int? duration,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task': task,
      'category': category,
      'completed': completed,
      'date': date,
      'TimerUse': timerUse,
      'duration': duration,
    }.withoutNulls,
  );

  return firestoreData;
}

class TodosRecordDocumentEquality implements Equality<TodosRecord> {
  const TodosRecordDocumentEquality();

  @override
  bool equals(TodosRecord? e1, TodosRecord? e2) {
    return e1?.task == e2?.task &&
        e1?.category == e2?.category &&
        e1?.completed == e2?.completed &&
        e1?.date == e2?.date &&
        e1?.timerUse == e2?.timerUse &&
        e1?.duration == e2?.duration;
  }

  @override
  int hash(TodosRecord? e) => const ListEquality().hash(
      [e?.task, e?.category, e?.completed, e?.date, e?.timerUse, e?.duration]);

  @override
  bool isValidKey(Object? o) => o is TodosRecord;
}
