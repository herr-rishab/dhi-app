import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewsRecord extends FirestoreRecord {
  NewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "heading" field.
  String? _heading;
  String get heading => _heading ?? '';
  bool hasHeading() => _heading != null;

  // "subheading" field.
  String? _subheading;
  String get subheading => _subheading ?? '';
  bool hasSubheading() => _subheading != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "publisher" field.
  String? _publisher;
  String get publisher => _publisher ?? '';
  bool hasPublisher() => _publisher != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "specific_occuptaion" field.
  String? _specificOccuptaion;
  String get specificOccuptaion => _specificOccuptaion ?? '';
  bool hasSpecificOccuptaion() => _specificOccuptaion != null;

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  bool hasCover() => _cover != null;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  bool hasThumbnail() => _thumbnail != null;

  // "news_id" field.
  int? _newsId;
  int get newsId => _newsId ?? 0;
  bool hasNewsId() => _newsId != null;

  void _initializeFields() {
    _heading = snapshotData['heading'] as String?;
    _subheading = snapshotData['subheading'] as String?;
    _content = snapshotData['content'] as String?;
    _publisher = snapshotData['publisher'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _specificOccuptaion = snapshotData['specific_occuptaion'] as String?;
    _cover = snapshotData['cover'] as String?;
    _thumbnail = snapshotData['thumbnail'] as String?;
    _newsId = castToType<int>(snapshotData['news_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news');

  static Stream<NewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewsRecord.fromSnapshot(s));

  static Future<NewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewsRecord.fromSnapshot(s));

  static NewsRecord fromSnapshot(DocumentSnapshot snapshot) => NewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewsRecordData({
  String? heading,
  String? subheading,
  String? content,
  String? publisher,
  DateTime? time,
  String? specificOccuptaion,
  String? cover,
  String? thumbnail,
  int? newsId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'heading': heading,
      'subheading': subheading,
      'content': content,
      'publisher': publisher,
      'time': time,
      'specific_occuptaion': specificOccuptaion,
      'cover': cover,
      'thumbnail': thumbnail,
      'news_id': newsId,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewsRecordDocumentEquality implements Equality<NewsRecord> {
  const NewsRecordDocumentEquality();

  @override
  bool equals(NewsRecord? e1, NewsRecord? e2) {
    return e1?.heading == e2?.heading &&
        e1?.subheading == e2?.subheading &&
        e1?.content == e2?.content &&
        e1?.publisher == e2?.publisher &&
        e1?.time == e2?.time &&
        e1?.specificOccuptaion == e2?.specificOccuptaion &&
        e1?.cover == e2?.cover &&
        e1?.thumbnail == e2?.thumbnail &&
        e1?.newsId == e2?.newsId;
  }

  @override
  int hash(NewsRecord? e) => const ListEquality().hash([
        e?.heading,
        e?.subheading,
        e?.content,
        e?.publisher,
        e?.time,
        e?.specificOccuptaion,
        e?.cover,
        e?.thumbnail,
        e?.newsId
      ]);

  @override
  bool isValidKey(Object? o) => o is NewsRecord;
}
