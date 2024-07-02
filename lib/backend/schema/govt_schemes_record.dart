import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GovtSchemesRecord extends FirestoreRecord {
  GovtSchemesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "disabled" field.
  bool? _disabled;
  bool get disabled => _disabled ?? false;
  bool hasDisabled() => _disabled != null;

  // "occupation" field.
  String? _occupation;
  String get occupation => _occupation ?? '';
  bool hasOccupation() => _occupation != null;

  // "rural _or_urban" field.
  String? _ruralOrUrban;
  String get ruralOrUrban => _ruralOrUrban ?? '';
  bool hasRuralOrUrban() => _ruralOrUrban != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "benefits" field.
  String? _benefits;
  String get benefits => _benefits ?? '';
  bool hasBenefits() => _benefits != null;

  // "eligibilty" field.
  String? _eligibilty;
  String get eligibilty => _eligibilty ?? '';
  bool hasEligibilty() => _eligibilty != null;

  // "documnets" field.
  String? _documnets;
  String get documnets => _documnets ?? '';
  bool hasDocumnets() => _documnets != null;

  // "ApplyNow" field.
  String? _applyNow;
  String get applyNow => _applyNow ?? '';
  bool hasApplyNow() => _applyNow != null;

  // "explore" field.
  bool? _explore;
  bool get explore => _explore ?? false;
  bool hasExplore() => _explore != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _state = snapshotData['state'] as String?;
    _gender = snapshotData['gender'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _disabled = snapshotData['disabled'] as bool?;
    _occupation = snapshotData['occupation'] as String?;
    _ruralOrUrban = snapshotData['rural _or_urban'] as String?;
    _link = snapshotData['link'] as String?;
    _benefits = snapshotData['benefits'] as String?;
    _eligibilty = snapshotData['eligibilty'] as String?;
    _documnets = snapshotData['documnets'] as String?;
    _applyNow = snapshotData['ApplyNow'] as String?;
    _explore = snapshotData['explore'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('govtSchemes');

  static Stream<GovtSchemesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GovtSchemesRecord.fromSnapshot(s));

  static Future<GovtSchemesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GovtSchemesRecord.fromSnapshot(s));

  static GovtSchemesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GovtSchemesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GovtSchemesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GovtSchemesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GovtSchemesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GovtSchemesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGovtSchemesRecordData({
  String? name,
  String? state,
  String? gender,
  int? age,
  bool? disabled,
  String? occupation,
  String? ruralOrUrban,
  String? link,
  String? benefits,
  String? eligibilty,
  String? documnets,
  String? applyNow,
  bool? explore,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'state': state,
      'gender': gender,
      'age': age,
      'disabled': disabled,
      'occupation': occupation,
      'rural _or_urban': ruralOrUrban,
      'link': link,
      'benefits': benefits,
      'eligibilty': eligibilty,
      'documnets': documnets,
      'ApplyNow': applyNow,
      'explore': explore,
    }.withoutNulls,
  );

  return firestoreData;
}

class GovtSchemesRecordDocumentEquality implements Equality<GovtSchemesRecord> {
  const GovtSchemesRecordDocumentEquality();

  @override
  bool equals(GovtSchemesRecord? e1, GovtSchemesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.state == e2?.state &&
        e1?.gender == e2?.gender &&
        e1?.age == e2?.age &&
        e1?.disabled == e2?.disabled &&
        e1?.occupation == e2?.occupation &&
        e1?.ruralOrUrban == e2?.ruralOrUrban &&
        e1?.link == e2?.link &&
        e1?.benefits == e2?.benefits &&
        e1?.eligibilty == e2?.eligibilty &&
        e1?.documnets == e2?.documnets &&
        e1?.applyNow == e2?.applyNow &&
        e1?.explore == e2?.explore;
  }

  @override
  int hash(GovtSchemesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.state,
        e?.gender,
        e?.age,
        e?.disabled,
        e?.occupation,
        e?.ruralOrUrban,
        e?.link,
        e?.benefits,
        e?.eligibilty,
        e?.documnets,
        e?.applyNow,
        e?.explore
      ]);

  @override
  bool isValidKey(Object? o) => o is GovtSchemesRecord;
}
