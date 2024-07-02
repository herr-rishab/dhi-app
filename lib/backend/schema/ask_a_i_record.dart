import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AskAIRecord extends FirestoreRecord {
  AskAIRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "query" field.
  String? _query;
  String get query => _query ?? '';
  bool hasQuery() => _query != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  bool hasAnswer() => _answer != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _user = snapshotData['user'] as String?;
    _query = snapshotData['query'] as String?;
    _time = snapshotData['time'] as String?;
    _answer = snapshotData['answer'] as String?;
    _type = snapshotData['type'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('askAI');

  static Stream<AskAIRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AskAIRecord.fromSnapshot(s));

  static Future<AskAIRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AskAIRecord.fromSnapshot(s));

  static AskAIRecord fromSnapshot(DocumentSnapshot snapshot) => AskAIRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AskAIRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AskAIRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AskAIRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AskAIRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAskAIRecordData({
  String? user,
  String? query,
  String? time,
  String? answer,
  String? type,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'query': query,
      'time': time,
      'answer': answer,
      'type': type,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class AskAIRecordDocumentEquality implements Equality<AskAIRecord> {
  const AskAIRecordDocumentEquality();

  @override
  bool equals(AskAIRecord? e1, AskAIRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.query == e2?.query &&
        e1?.time == e2?.time &&
        e1?.answer == e2?.answer &&
        e1?.type == e2?.type &&
        e1?.name == e2?.name;
  }

  @override
  int hash(AskAIRecord? e) => const ListEquality()
      .hash([e?.user, e?.query, e?.time, e?.answer, e?.type, e?.name]);

  @override
  bool isValidKey(Object? o) => o is AskAIRecord;
}
