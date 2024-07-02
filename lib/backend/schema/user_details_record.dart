import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsRecord extends FirestoreRecord {
  UserDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "occupation" field.
  String? _occupation;
  String get occupation => _occupation ?? '';
  bool hasOccupation() => _occupation != null;

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

  // "others" field.
  double? _others;
  double get others => _others ?? 0.0;
  bool hasOthers() => _others != null;

  // "utilities" field.
  double? _utilities;
  double get utilities => _utilities ?? 0.0;
  bool hasUtilities() => _utilities != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _age = snapshotData['age'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _occupation = snapshotData['occupation'] as String?;
    _budget = castToType<double>(snapshotData['budget']);
    _food = castToType<double>(snapshotData['food']);
    _housing = castToType<double>(snapshotData['housing']);
    _others = castToType<double>(snapshotData['others']);
    _utilities = castToType<double>(snapshotData['utilities']);
    _lastName = snapshotData['last_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userDetails');

  static Stream<UserDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDetailsRecord.fromSnapshot(s));

  static Future<UserDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDetailsRecord.fromSnapshot(s));

  static UserDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDetailsRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? age,
  String? city,
  String? state,
  String? occupation,
  double? budget,
  double? food,
  double? housing,
  double? others,
  double? utilities,
  String? lastName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'age': age,
      'city': city,
      'state': state,
      'occupation': occupation,
      'budget': budget,
      'food': food,
      'housing': housing,
      'others': others,
      'utilities': utilities,
      'last_name': lastName,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDetailsRecordDocumentEquality implements Equality<UserDetailsRecord> {
  const UserDetailsRecordDocumentEquality();

  @override
  bool equals(UserDetailsRecord? e1, UserDetailsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.age == e2?.age &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.occupation == e2?.occupation &&
        e1?.budget == e2?.budget &&
        e1?.food == e2?.food &&
        e1?.housing == e2?.housing &&
        e1?.others == e2?.others &&
        e1?.utilities == e2?.utilities &&
        e1?.lastName == e2?.lastName;
  }

  @override
  int hash(UserDetailsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.age,
        e?.city,
        e?.state,
        e?.occupation,
        e?.budget,
        e?.food,
        e?.housing,
        e?.others,
        e?.utilities,
        e?.lastName
      ]);

  @override
  bool isValidKey(Object? o) => o is UserDetailsRecord;
}
