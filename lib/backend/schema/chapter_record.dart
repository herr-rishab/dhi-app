import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChapterRecord extends FirestoreRecord {
  ChapterRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "module" field.
  String? _module;
  String get module => _module ?? '';
  bool hasModule() => _module != null;

  // "chapter_number" field.
  String? _chapterNumber;
  String get chapterNumber => _chapterNumber ?? '';
  bool hasChapterNumber() => _chapterNumber != null;

  // "chapter_name" field.
  String? _chapterName;
  String get chapterName => _chapterName ?? '';
  bool hasChapterName() => _chapterName != null;

  // "chapter_description" field.
  String? _chapterDescription;
  String get chapterDescription => _chapterDescription ?? '';
  bool hasChapterDescription() => _chapterDescription != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  void _initializeFields() {
    _module = snapshotData['module'] as String?;
    _chapterNumber = snapshotData['chapter_number'] as String?;
    _chapterName = snapshotData['chapter_name'] as String?;
    _chapterDescription = snapshotData['chapter_description'] as String?;
    _duration = snapshotData['duration'] as String?;
    _videoUrl = snapshotData['video_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chapter');

  static Stream<ChapterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChapterRecord.fromSnapshot(s));

  static Future<ChapterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChapterRecord.fromSnapshot(s));

  static ChapterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChapterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChapterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChapterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChapterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChapterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChapterRecordData({
  String? module,
  String? chapterNumber,
  String? chapterName,
  String? chapterDescription,
  String? duration,
  String? videoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'module': module,
      'chapter_number': chapterNumber,
      'chapter_name': chapterName,
      'chapter_description': chapterDescription,
      'duration': duration,
      'video_url': videoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChapterRecordDocumentEquality implements Equality<ChapterRecord> {
  const ChapterRecordDocumentEquality();

  @override
  bool equals(ChapterRecord? e1, ChapterRecord? e2) {
    return e1?.module == e2?.module &&
        e1?.chapterNumber == e2?.chapterNumber &&
        e1?.chapterName == e2?.chapterName &&
        e1?.chapterDescription == e2?.chapterDescription &&
        e1?.duration == e2?.duration &&
        e1?.videoUrl == e2?.videoUrl;
  }

  @override
  int hash(ChapterRecord? e) => const ListEquality().hash([
        e?.module,
        e?.chapterNumber,
        e?.chapterName,
        e?.chapterDescription,
        e?.duration,
        e?.videoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is ChapterRecord;
}
