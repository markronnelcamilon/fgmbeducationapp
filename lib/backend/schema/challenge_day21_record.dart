import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'challenge_day21_record.g.dart';

abstract class ChallengeDay21Record
    implements Built<ChallengeDay21Record, ChallengeDay21RecordBuilder> {
  static Serializer<ChallengeDay21Record> get serializer =>
      _$challengeDay21RecordSerializer;

  @nullable
  String get uid;

  @nullable
  DateTime get startDate;

  @nullable
  DateTime get endDate21;

  @nullable
  DateTime get endDate90;

  @nullable
  bool get ninetyDays;

  @nullable
  int get dayChallenge;

  @nullable
  int get list21;

  @nullable
  int get counter;

  @nullable
  bool get isArchive;

  @nullable
  String get dayChallengeID;

  @nullable
  bool get taskDone;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ChallengeDay21RecordBuilder builder) => builder
    ..uid = ''
    ..ninetyDays = false
    ..dayChallenge = 0
    ..list21 = 0
    ..counter = 0
    ..isArchive = false
    ..dayChallengeID = ''
    ..taskDone = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challenge_day21');

  static Stream<ChallengeDay21Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ChallengeDay21Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ChallengeDay21Record._();
  factory ChallengeDay21Record(
          [void Function(ChallengeDay21RecordBuilder) updates]) =
      _$ChallengeDay21Record;

  static ChallengeDay21Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createChallengeDay21RecordData({
  String uid,
  DateTime startDate,
  DateTime endDate21,
  DateTime endDate90,
  bool ninetyDays,
  int dayChallenge,
  int list21,
  int counter,
  bool isArchive,
  String dayChallengeID,
  bool taskDone,
}) =>
    serializers.toFirestore(
        ChallengeDay21Record.serializer,
        ChallengeDay21Record((c) => c
          ..uid = uid
          ..startDate = startDate
          ..endDate21 = endDate21
          ..endDate90 = endDate90
          ..ninetyDays = ninetyDays
          ..dayChallenge = dayChallenge
          ..list21 = list21
          ..counter = counter
          ..isArchive = isArchive
          ..dayChallengeID = dayChallengeID
          ..taskDone = taskDone));
