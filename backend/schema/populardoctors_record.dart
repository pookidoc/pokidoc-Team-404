import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PopulardoctorsRecord extends FirestoreRecord {
  PopulardoctorsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "specialty" field.
  String? _specialty;
  String get specialty => _specialty ?? '';
  bool hasSpecialty() => _specialty != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "latlng" field.
  LatLng? _latlng;
  LatLng? get latlng => _latlng;
  bool hasLatlng() => _latlng != null;

  // "meeting_link" field.
  String? _meetingLink;
  String get meetingLink => _meetingLink ?? '';
  bool hasMeetingLink() => _meetingLink != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _specialty = snapshotData['specialty'] as String?;
    _image = snapshotData['image'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _bio = snapshotData['bio'] as String?;
    _email = snapshotData['email'] as String?;
    _latlng = snapshotData['latlng'] as LatLng?;
    _meetingLink = snapshotData['meeting_link'] as String?;
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('populardoctors');

  static Stream<PopulardoctorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PopulardoctorsRecord.fromSnapshot(s));

  static Future<PopulardoctorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PopulardoctorsRecord.fromSnapshot(s));

  static PopulardoctorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PopulardoctorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PopulardoctorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PopulardoctorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PopulardoctorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PopulardoctorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPopulardoctorsRecordData({
  String? name,
  String? specialty,
  String? image,
  double? rating,
  String? bio,
  String? email,
  LatLng? latlng,
  String? meetingLink,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'specialty': specialty,
      'image': image,
      'rating': rating,
      'bio': bio,
      'email': email,
      'latlng': latlng,
      'meeting_link': meetingLink,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class PopulardoctorsRecordDocumentEquality
    implements Equality<PopulardoctorsRecord> {
  const PopulardoctorsRecordDocumentEquality();

  @override
  bool equals(PopulardoctorsRecord? e1, PopulardoctorsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.specialty == e2?.specialty &&
        e1?.image == e2?.image &&
        e1?.rating == e2?.rating &&
        e1?.bio == e2?.bio &&
        e1?.email == e2?.email &&
        e1?.latlng == e2?.latlng &&
        e1?.meetingLink == e2?.meetingLink &&
        e1?.price == e2?.price;
  }

  @override
  int hash(PopulardoctorsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.specialty,
        e?.image,
        e?.rating,
        e?.bio,
        e?.email,
        e?.latlng,
        e?.meetingLink,
        e?.price
      ]);

  @override
  bool isValidKey(Object? o) => o is PopulardoctorsRecord;
}
