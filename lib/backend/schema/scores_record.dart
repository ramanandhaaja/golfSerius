import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScoresRecord extends FirestoreRecord {
  ScoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "hole_number" field.
  int? _holeNumber;
  int get holeNumber => _holeNumber ?? 0;
  bool hasHoleNumber() => _holeNumber != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  // "game_ref" field.
  DocumentReference? _gameRef;
  DocumentReference? get gameRef => _gameRef;
  bool hasGameRef() => _gameRef != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "game_type" field.
  String? _gameType;
  String get gameType => _gameType ?? '';
  bool hasGameType() => _gameType != null;

  // "totalScore" field.
  int? _totalScore;
  int get totalScore => _totalScore ?? 0;
  bool hasTotalScore() => _totalScore != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _holeNumber = castToType<int>(snapshotData['hole_number']);
    _score = castToType<int>(snapshotData['score']);
    _gameRef = snapshotData['game_ref'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _gameType = snapshotData['game_type'] as String?;
    _totalScore = castToType<int>(snapshotData['totalScore']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('scores');

  static Stream<ScoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScoresRecord.fromSnapshot(s));

  static Future<ScoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScoresRecord.fromSnapshot(s));

  static ScoresRecord fromSnapshot(DocumentSnapshot snapshot) => ScoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScoresRecord._(reference, mapFromFirestore(data));

  static ScoresRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ScoresRecord.getDocumentFromData(
        {
          'created_at': convertAlgoliaParam(
            snapshot.data['created_at'],
            ParamType.DateTime,
            false,
          ),
          'modified_at': convertAlgoliaParam(
            snapshot.data['modified_at'],
            ParamType.DateTime,
            false,
          ),
          'hole_number': convertAlgoliaParam(
            snapshot.data['hole_number'],
            ParamType.int,
            false,
          ),
          'score': convertAlgoliaParam(
            snapshot.data['score'],
            ParamType.int,
            false,
          ),
          'game_ref': convertAlgoliaParam(
            snapshot.data['game_ref'],
            ParamType.DocumentReference,
            false,
          ),
          'user_ref': convertAlgoliaParam(
            snapshot.data['user_ref'],
            ParamType.DocumentReference,
            false,
          ),
          'game_type': snapshot.data['game_type'],
          'totalScore': convertAlgoliaParam(
            snapshot.data['totalScore'],
            ParamType.int,
            false,
          ),
        },
        ScoresRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ScoresRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'scores',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ScoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScoresRecordData({
  DateTime? createdAt,
  DateTime? modifiedAt,
  int? holeNumber,
  int? score,
  DocumentReference? gameRef,
  DocumentReference? userRef,
  String? gameType,
  int? totalScore,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'hole_number': holeNumber,
      'score': score,
      'game_ref': gameRef,
      'user_ref': userRef,
      'game_type': gameType,
      'totalScore': totalScore,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScoresRecordDocumentEquality implements Equality<ScoresRecord> {
  const ScoresRecordDocumentEquality();

  @override
  bool equals(ScoresRecord? e1, ScoresRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.holeNumber == e2?.holeNumber &&
        e1?.score == e2?.score &&
        e1?.gameRef == e2?.gameRef &&
        e1?.userRef == e2?.userRef &&
        e1?.gameType == e2?.gameType &&
        e1?.totalScore == e2?.totalScore;
  }

  @override
  int hash(ScoresRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.modifiedAt,
        e?.holeNumber,
        e?.score,
        e?.gameRef,
        e?.userRef,
        e?.gameType,
        e?.totalScore
      ]);

  @override
  bool isValidKey(Object? o) => o is ScoresRecord;
}
