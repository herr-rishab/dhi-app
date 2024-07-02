import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BudgetRecord extends FirestoreRecord {
  BudgetRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "budget" field.
  double? _budget;
  double get budget => _budget ?? 0.0;
  bool hasBudget() => _budget != null;

  // "food" field.
  double? _food;
  double get food => _food ?? 0.0;
  bool hasFood() => _food != null;

  // "housing" field.
  double? _housing;
  double get housing => _housing ?? 0.0;
  bool hasHousing() => _housing != null;

  // "utilities" field.
  double? _utilities;
  double get utilities => _utilities ?? 0.0;
  bool hasUtilities() => _utilities != null;

  // "others" field.
  double? _others;
  double get others => _others ?? 0.0;
  bool hasOthers() => _others != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _budget = castToType<double>(snapshotData['budget']);
    _food = castToType<double>(snapshotData['food']);
    _housing = castToType<double>(snapshotData['housing']);
    _utilities = castToType<double>(snapshotData['utilities']);
    _others = castToType<double>(snapshotData['others']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('budget');

  static Stream<BudgetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BudgetRecord.fromSnapshot(s));

  static Future<BudgetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BudgetRecord.fromSnapshot(s));

  static BudgetRecord fromSnapshot(DocumentSnapshot snapshot) => BudgetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BudgetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BudgetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BudgetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BudgetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBudgetRecordData({
  String? uid,
  double? budget,
  double? food,
  double? housing,
  double? utilities,
  double? others,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'budget': budget,
      'food': food,
      'housing': housing,
      'utilities': utilities,
      'others': others,
    }.withoutNulls,
  );

  return firestoreData;
}

class BudgetRecordDocumentEquality implements Equality<BudgetRecord> {
  const BudgetRecordDocumentEquality();

  @override
  bool equals(BudgetRecord? e1, BudgetRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.budget == e2?.budget &&
        e1?.food == e2?.food &&
        e1?.housing == e2?.housing &&
        e1?.utilities == e2?.utilities &&
        e1?.others == e2?.others;
  }

  @override
  int hash(BudgetRecord? e) => const ListEquality()
      .hash([e?.uid, e?.budget, e?.food, e?.housing, e?.utilities, e?.others]);

  @override
  bool isValidKey(Object? o) => o is BudgetRecord;
}
