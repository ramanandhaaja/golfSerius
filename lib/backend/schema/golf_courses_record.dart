import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GolfCoursesRecord extends FirestoreRecord {
  GolfCoursesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "par" field.
  int? _par;
  int get par => _par ?? 0;
  bool hasPar() => _par != null;

  // "yardage" field.
  int? _yardage;
  int get yardage => _yardage ?? 0;
  bool hasYardage() => _yardage != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _address = snapshotData['address'] as String?;
    _name = snapshotData['name'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _type = snapshotData['type'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _par = castToType<int>(snapshotData['par']);
    _yardage = castToType<int>(snapshotData['yardage']);
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('golfCourses');

  static Stream<GolfCoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GolfCoursesRecord.fromSnapshot(s));

  static Future<GolfCoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GolfCoursesRecord.fromSnapshot(s));

  static GolfCoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GolfCoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GolfCoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GolfCoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GolfCoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GolfCoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGolfCoursesRecordData({
  String? address,
  String? name,
  String? city,
  String? state,
  String? type,
  double? price,
  int? par,
  int? yardage,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': address,
      'name': name,
      'city': city,
      'state': state,
      'type': type,
      'price': price,
      'par': par,
      'yardage': yardage,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class GolfCoursesRecordDocumentEquality implements Equality<GolfCoursesRecord> {
  const GolfCoursesRecordDocumentEquality();

  @override
  bool equals(GolfCoursesRecord? e1, GolfCoursesRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.name == e2?.name &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.type == e2?.type &&
        e1?.price == e2?.price &&
        e1?.par == e2?.par &&
        e1?.yardage == e2?.yardage &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(GolfCoursesRecord? e) => const ListEquality().hash([
        e?.address,
        e?.name,
        e?.city,
        e?.state,
        e?.type,
        e?.price,
        e?.par,
        e?.yardage,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is GolfCoursesRecord;
}
