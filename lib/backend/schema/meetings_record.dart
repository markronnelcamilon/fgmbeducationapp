import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'meetings_record.g.dart';

abstract class MeetingsRecord
    implements Built<MeetingsRecord, MeetingsRecordBuilder> {
  static Serializer<MeetingsRecord> get serializer =>
      _$meetingsRecordSerializer;

  DateTime? get time;

  String? get meetingDetails;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(MeetingsRecordBuilder builder) =>
      builder..meetingDetails = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('meetings')
          : FirebaseFirestore.instance.collectionGroup('meetings');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('meetings').doc();

  static Stream<MeetingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MeetingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MeetingsRecord._();
  factory MeetingsRecord([void Function(MeetingsRecordBuilder) updates]) =
      _$MeetingsRecord;

  static MeetingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMeetingsRecordData({
  DateTime? time,
  String? meetingDetails,
}) {
  final firestoreData = serializers.toFirestore(
    MeetingsRecord.serializer,
    MeetingsRecord(
      (m) => m
        ..time = time
        ..meetingDetails = meetingDetails,
    ),
  );

  return firestoreData;
}
