import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ThoughtRecord extends FirestoreRecord {
  ThoughtRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "dailyThought" field.
  String? _dailyThought;
  String get dailyThought => _dailyThought ?? '';
  bool hasDailyThought() => _dailyThought != null;

  // "dailyThoughtAuthor" field.
  String? _dailyThoughtAuthor;
  String get dailyThoughtAuthor => _dailyThoughtAuthor ?? '';
  bool hasDailyThoughtAuthor() => _dailyThoughtAuthor != null;

  void _initializeFields() {
    _dailyThought = snapshotData['dailyThought'] as String?;
    _dailyThoughtAuthor = snapshotData['dailyThoughtAuthor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('thought');

  static Stream<ThoughtRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThoughtRecord.fromSnapshot(s));

  static Future<ThoughtRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThoughtRecord.fromSnapshot(s));

  static ThoughtRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ThoughtRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThoughtRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThoughtRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThoughtRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThoughtRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThoughtRecordData({
  String? dailyThought,
  String? dailyThoughtAuthor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dailyThought': dailyThought,
      'dailyThoughtAuthor': dailyThoughtAuthor,
    }.withoutNulls,
  );

  return firestoreData;
}

class ThoughtRecordDocumentEquality implements Equality<ThoughtRecord> {
  const ThoughtRecordDocumentEquality();

  @override
  bool equals(ThoughtRecord? e1, ThoughtRecord? e2) {
    return e1?.dailyThought == e2?.dailyThought &&
        e1?.dailyThoughtAuthor == e2?.dailyThoughtAuthor;
  }

  @override
  int hash(ThoughtRecord? e) =>
      const ListEquality().hash([e?.dailyThought, e?.dailyThoughtAuthor]);

  @override
  bool isValidKey(Object? o) => o is ThoughtRecord;
}
