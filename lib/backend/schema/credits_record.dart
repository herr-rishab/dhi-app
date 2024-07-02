import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreditsRecord extends FirestoreRecord {
  CreditsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "credits" field.
  String? _credits;
  String get credits => _credits ?? '';
  bool hasCredits() => _credits != null;

  void _initializeFields() {
    _credits = snapshotData['credits'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('credits');

  static Stream<CreditsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CreditsRecord.fromSnapshot(s));

  static Future<CreditsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CreditsRecord.fromSnapshot(s));

  static CreditsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CreditsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CreditsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CreditsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CreditsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CreditsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCreditsRecordData({
  String? credits,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'credits': credits,
    }.withoutNulls,
  );

  return firestoreData;
}

class CreditsRecordDocumentEquality implements Equality<CreditsRecord> {
  const CreditsRecordDocumentEquality();

  @override
  bool equals(CreditsRecord? e1, CreditsRecord? e2) {
    return e1?.credits == e2?.credits;
  }

  @override
  int hash(CreditsRecord? e) => const ListEquality().hash([e?.credits]);

  @override
  bool isValidKey(Object? o) => o is CreditsRecord;
}
