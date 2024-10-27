import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomGameScoresRecord extends FirestoreRecord {
  CustomGameScoresRecord._(
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

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _holeNumber = castToType<int>(snapshotData['hole_number']);
    _score = castToType<int>(snapshotData['score']);
    _gameRef = snapshotData['game_ref'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _gameType = snapshotData['game_type'] as String?;
    _userName = snapshotData['user_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('custom_game_scores');

  static Stream<CustomGameScoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustomGameScoresRecord.fromSnapshot(s));

  static Future<CustomGameScoresRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CustomGameScoresRecord.fromSnapshot(s));

  static CustomGameScoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomGameScoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomGameScoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomGameScoresRecord._(reference, mapFromFirestore(data));

  static CustomGameScoresRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      CustomGameScoresRecord.getDocumentFromData(
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
          'user_name': snapshot.data['user_name'],
        },
        CustomGameScoresRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<CustomGameScoresRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'custom_game_scores',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'CustomGameScoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomGameScoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomGameScoresRecordData({
  DateTime? createdAt,
  DateTime? modifiedAt,
  int? holeNumber,
  int? score,
  DocumentReference? gameRef,
  DocumentReference? userRef,
  String? gameType,
  String? userName,
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
      'user_name': userName,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustomGameScoresRecordDocumentEquality
    implements Equality<CustomGameScoresRecord> {
  const CustomGameScoresRecordDocumentEquality();

  @override
  bool equals(CustomGameScoresRecord? e1, CustomGameScoresRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.holeNumber == e2?.holeNumber &&
        e1?.score == e2?.score &&
        e1?.gameRef == e2?.gameRef &&
        e1?.userRef == e2?.userRef &&
        e1?.gameType == e2?.gameType &&
        e1?.userName == e2?.userName;
  }

  @override
  int hash(CustomGameScoresRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.modifiedAt,
        e?.holeNumber,
        e?.score,
        e?.gameRef,
        e?.userRef,
        e?.gameType,
        e?.userName
      ]);

  @override
  bool isValidKey(Object? o) => o is CustomGameScoresRecord;
}
