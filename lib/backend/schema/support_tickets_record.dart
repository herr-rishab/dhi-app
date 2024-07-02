import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupportTicketsRecord extends FirestoreRecord {
  SupportTicketsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  void _initializeFields() {
    _subject = snapshotData['subject'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('support_tickets');

  static Stream<SupportTicketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupportTicketsRecord.fromSnapshot(s));

  static Future<SupportTicketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupportTicketsRecord.fromSnapshot(s));

  static SupportTicketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupportTicketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupportTicketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupportTicketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupportTicketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupportTicketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupportTicketsRecordData({
  String? subject,
  String? description,
  String? image,
  DateTime? time,
  String? email,
  String? phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subject': subject,
      'description': description,
      'image': image,
      'time': time,
      'email': email,
      'phone': phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupportTicketsRecordDocumentEquality
    implements Equality<SupportTicketsRecord> {
  const SupportTicketsRecordDocumentEquality();

  @override
  bool equals(SupportTicketsRecord? e1, SupportTicketsRecord? e2) {
    return e1?.subject == e2?.subject &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.time == e2?.time &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone;
  }

  @override
  int hash(SupportTicketsRecord? e) => const ListEquality().hash(
      [e?.subject, e?.description, e?.image, e?.time, e?.email, e?.phone]);

  @override
  bool isValidKey(Object? o) => o is SupportTicketsRecord;
}
