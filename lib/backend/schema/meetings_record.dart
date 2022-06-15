import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'meetings_record.g.dart';

abstract class MeetingsRecord
    implements Built<MeetingsRecord, MeetingsRecordBuilder> {
  static Serializer<MeetingsRecord> get serializer =>
      _$meetingsRecordSerializer;

  @nullable
  String get userId;

  @nullable
  DateTime get dateTime;

  @nullable
  String get meetingDetails;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MeetingsRecordBuilder builder) => builder
    ..userId = ''
    ..meetingDetails = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meetings');

  static Stream<MeetingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MeetingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MeetingsRecord._();
  factory MeetingsRecord([void Function(MeetingsRecordBuilder) updates]) =
      _$MeetingsRecord;

  static MeetingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMeetingsRecordData({
  String userId,
  DateTime dateTime,
  String meetingDetails,
  DateTime date,
}) =>
    serializers.toFirestore(
        MeetingsRecord.serializer,
        MeetingsRecord((m) => m
          ..userId = userId
          ..dateTime = dateTime
          ..meetingDetails = meetingDetails
          ..date = date));
