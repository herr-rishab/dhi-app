import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommonHospitalRecord extends FirestoreRecord {
  CommonHospitalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "map_url" field.
  String? _mapUrl;
  String get mapUrl => _mapUrl ?? '';
  bool hasMapUrl() => _mapUrl != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "specialization" field.
  String? _specialization;
  String get specialization => _specialization ?? '';
  bool hasSpecialization() => _specialization != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _city = snapshotData['city'] as String?;
    _order = castToType<int>(snapshotData['order']);
    _mapUrl = snapshotData['map_url'] as String?;
    _phone = snapshotData['phone'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _specialization = snapshotData['specialization'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('commonHospital');

  static Stream<CommonHospitalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommonHospitalRecord.fromSnapshot(s));

  static Future<CommonHospitalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommonHospitalRecord.fromSnapshot(s));

  static CommonHospitalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommonHospitalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommonHospitalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommonHospitalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommonHospitalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommonHospitalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommonHospitalRecordData({
  String? name,
  String? location,
  String? photoUrl,
  String? city,
  int? order,
  String? mapUrl,
  String? phone,
  double? rating,
  String? specialization,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'location': location,
      'photo_url': photoUrl,
      'city': city,
      'order': order,
      'map_url': mapUrl,
      'phone': phone,
      'rating': rating,
      'specialization': specialization,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommonHospitalRecordDocumentEquality
    implements Equality<CommonHospitalRecord> {
  const CommonHospitalRecordDocumentEquality();

  @override
  bool equals(CommonHospitalRecord? e1, CommonHospitalRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.location == e2?.location &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.city == e2?.city &&
        e1?.order == e2?.order &&
        e1?.mapUrl == e2?.mapUrl &&
        e1?.phone == e2?.phone &&
        e1?.rating == e2?.rating &&
        e1?.specialization == e2?.specialization;
  }

  @override
  int hash(CommonHospitalRecord? e) => const ListEquality().hash([
        e?.name,
        e?.location,
        e?.photoUrl,
        e?.city,
        e?.order,
        e?.mapUrl,
        e?.phone,
        e?.rating,
        e?.specialization
      ]);

  @override
  bool isValidKey(Object? o) => o is CommonHospitalRecord;
}
