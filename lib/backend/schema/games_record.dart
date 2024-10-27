import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GamesRecord extends FirestoreRecord {
  GamesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "archived" field.
  bool? _archived;
  bool get archived => _archived ?? false;
  bool hasArchived() => _archived != null;

  // "course_name" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "number_of_player" field.
  int? _numberOfPlayer;
  int get numberOfPlayer => _numberOfPlayer ?? 0;
  bool hasNumberOfPlayer() => _numberOfPlayer != null;

  // "game_type" field.
  bool? _gameType;
  bool get gameType => _gameType ?? false;
  bool hasGameType() => _gameType != null;

  // "golf_course" field.
  DocumentReference? _golfCourse;
  DocumentReference? get golfCourse => _golfCourse;
  bool hasGolfCourse() => _golfCourse != null;

  // "game_name" field.
  String? _gameName;
  String get gameName => _gameName ?? '';
  bool hasGameName() => _gameName != null;

  // "players_joined" field.
  List<DocumentReference>? _playersJoined;
  List<DocumentReference> get playersJoined => _playersJoined ?? const [];
  bool hasPlayersJoined() => _playersJoined != null;

  // "game_completed" field.
  bool? _gameCompleted;
  bool get gameCompleted => _gameCompleted ?? false;
  bool hasGameCompleted() => _gameCompleted != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _archived = snapshotData['archived'] as bool?;
    _courseName = snapshotData['course_name'] as String?;
    _address = snapshotData['address'] as String?;
    _description = snapshotData['description'] as String?;
    _numberOfPlayer = castToType<int>(snapshotData['number_of_player']);
    _gameType = snapshotData['game_type'] as bool?;
    _golfCourse = snapshotData['golf_course'] as DocumentReference?;
    _gameName = snapshotData['game_name'] as String?;
    _playersJoined = getDataList(snapshotData['players_joined']);
    _gameCompleted = snapshotData['game_completed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('games');

  static Stream<GamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GamesRecord.fromSnapshot(s));

  static Future<GamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GamesRecord.fromSnapshot(s));

  static GamesRecord fromSnapshot(DocumentSnapshot snapshot) => GamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GamesRecord._(reference, mapFromFirestore(data));

  static GamesRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      GamesRecord.getDocumentFromData(
        {
          'owner': convertAlgoliaParam(
            snapshot.data['owner'],
            ParamType.DocumentReference,
            false,
          ),
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
          'archived': snapshot.data['archived'],
          'course_name': snapshot.data['course_name'],
          'address': snapshot.data['address'],
          'description': snapshot.data['description'],
          'number_of_player': convertAlgoliaParam(
            snapshot.data['number_of_player'],
            ParamType.int,
            false,
          ),
          'game_type': snapshot.data['game_type'],
          'golf_course': convertAlgoliaParam(
            snapshot.data['golf_course'],
            ParamType.DocumentReference,
            false,
          ),
          'game_name': snapshot.data['game_name'],
          'players_joined': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['players_joined'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'game_completed': snapshot.data['game_completed'],
        },
        GamesRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<GamesRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'games',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'GamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGamesRecordData({
  DocumentReference? owner,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? archived,
  String? courseName,
  String? address,
  String? description,
  int? numberOfPlayer,
  bool? gameType,
  DocumentReference? golfCourse,
  String? gameName,
  bool? gameCompleted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'archived': archived,
      'course_name': courseName,
      'address': address,
      'description': description,
      'number_of_player': numberOfPlayer,
      'game_type': gameType,
      'golf_course': golfCourse,
      'game_name': gameName,
      'game_completed': gameCompleted,
    }.withoutNulls,
  );

  return firestoreData;
}

class GamesRecordDocumentEquality implements Equality<GamesRecord> {
  const GamesRecordDocumentEquality();

  @override
  bool equals(GamesRecord? e1, GamesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.owner == e2?.owner &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.archived == e2?.archived &&
        e1?.courseName == e2?.courseName &&
        e1?.address == e2?.address &&
        e1?.description == e2?.description &&
        e1?.numberOfPlayer == e2?.numberOfPlayer &&
        e1?.gameType == e2?.gameType &&
        e1?.golfCourse == e2?.golfCourse &&
        e1?.gameName == e2?.gameName &&
        listEquality.equals(e1?.playersJoined, e2?.playersJoined) &&
        e1?.gameCompleted == e2?.gameCompleted;
  }

  @override
  int hash(GamesRecord? e) => const ListEquality().hash([
        e?.owner,
        e?.createdAt,
        e?.modifiedAt,
        e?.archived,
        e?.courseName,
        e?.address,
        e?.description,
        e?.numberOfPlayer,
        e?.gameType,
        e?.golfCourse,
        e?.gameName,
        e?.playersJoined,
        e?.gameCompleted
      ]);

  @override
  bool isValidKey(Object? o) => o is GamesRecord;
}
