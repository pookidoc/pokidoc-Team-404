import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "doctorsname" field.
  String? _doctorsname;
  String get doctorsname => _doctorsname ?? '';
  bool hasDoctorsname() => _doctorsname != null;

  // "clientsname" field.
  String? _clientsname;
  String get clientsname => _clientsname ?? '';
  bool hasClientsname() => _clientsname != null;

  // "doctorsimage" field.
  String? _doctorsimage;
  String get doctorsimage => _doctorsimage ?? '';
  bool hasDoctorsimage() => _doctorsimage != null;

  // "doctorsspecialty" field.
  String? _doctorsspecialty;
  String get doctorsspecialty => _doctorsspecialty ?? '';
  bool hasDoctorsspecialty() => _doctorsspecialty != null;

  // "doctorsrating" field.
  double? _doctorsrating;
  double get doctorsrating => _doctorsrating ?? 0.0;
  bool hasDoctorsrating() => _doctorsrating != null;

  // "order_date" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "order_id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "meeting_link" field.
  String? _meetingLink;
  String get meetingLink => _meetingLink ?? '';
  bool hasMeetingLink() => _meetingLink != null;

  // "doctorsemail" field.
  String? _doctorsemail;
  String get doctorsemail => _doctorsemail ?? '';
  bool hasDoctorsemail() => _doctorsemail != null;

  // "booking_date" field.
  DateTime? _bookingDate;
  DateTime? get bookingDate => _bookingDate;
  bool hasBookingDate() => _bookingDate != null;

  // "booking_time" field.
  String? _bookingTime;
  String get bookingTime => _bookingTime ?? '';
  bool hasBookingTime() => _bookingTime != null;

  // "clientsemail" field.
  String? _clientsemail;
  String get clientsemail => _clientsemail ?? '';
  bool hasClientsemail() => _clientsemail != null;

  // "clientsimage" field.
  String? _clientsimage;
  String get clientsimage => _clientsimage ?? '';
  bool hasClientsimage() => _clientsimage != null;

  void _initializeFields() {
    _doctorsname = snapshotData['doctorsname'] as String?;
    _clientsname = snapshotData['clientsname'] as String?;
    _doctorsimage = snapshotData['doctorsimage'] as String?;
    _doctorsspecialty = snapshotData['doctorsspecialty'] as String?;
    _doctorsrating = castToType<double>(snapshotData['doctorsrating']);
    _orderDate = snapshotData['order_date'] as DateTime?;
    _orderId = snapshotData['order_id'] as String?;
    _meetingLink = snapshotData['meeting_link'] as String?;
    _doctorsemail = snapshotData['doctorsemail'] as String?;
    _bookingDate = snapshotData['booking_date'] as DateTime?;
    _bookingTime = snapshotData['booking_time'] as String?;
    _clientsemail = snapshotData['clientsemail'] as String?;
    _clientsimage = snapshotData['clientsimage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  String? doctorsname,
  String? clientsname,
  String? doctorsimage,
  String? doctorsspecialty,
  double? doctorsrating,
  DateTime? orderDate,
  String? orderId,
  String? meetingLink,
  String? doctorsemail,
  DateTime? bookingDate,
  String? bookingTime,
  String? clientsemail,
  String? clientsimage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctorsname': doctorsname,
      'clientsname': clientsname,
      'doctorsimage': doctorsimage,
      'doctorsspecialty': doctorsspecialty,
      'doctorsrating': doctorsrating,
      'order_date': orderDate,
      'order_id': orderId,
      'meeting_link': meetingLink,
      'doctorsemail': doctorsemail,
      'booking_date': bookingDate,
      'booking_time': bookingTime,
      'clientsemail': clientsemail,
      'clientsimage': clientsimage,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.doctorsname == e2?.doctorsname &&
        e1?.clientsname == e2?.clientsname &&
        e1?.doctorsimage == e2?.doctorsimage &&
        e1?.doctorsspecialty == e2?.doctorsspecialty &&
        e1?.doctorsrating == e2?.doctorsrating &&
        e1?.orderDate == e2?.orderDate &&
        e1?.orderId == e2?.orderId &&
        e1?.meetingLink == e2?.meetingLink &&
        e1?.doctorsemail == e2?.doctorsemail &&
        e1?.bookingDate == e2?.bookingDate &&
        e1?.bookingTime == e2?.bookingTime &&
        e1?.clientsemail == e2?.clientsemail &&
        e1?.clientsimage == e2?.clientsimage;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.doctorsname,
        e?.clientsname,
        e?.doctorsimage,
        e?.doctorsspecialty,
        e?.doctorsrating,
        e?.orderDate,
        e?.orderId,
        e?.meetingLink,
        e?.doctorsemail,
        e?.bookingDate,
        e?.bookingTime,
        e?.clientsemail,
        e?.clientsimage
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
