import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'day_challenge21_record.g.dart';

abstract class DayChallenge21Record
    implements Built<DayChallenge21Record, DayChallenge21RecordBuilder> {
  static Serializer<DayChallenge21Record> get serializer =>
      _$dayChallenge21RecordSerializer;

  String? get uid;

  DateTime? get date;

  bool? get completed;

  bool? get task1;

  bool? get task2;

  bool? get task3;

  bool? get task4;

  String? get day;

  int? get label;

  DocumentReference? get dayChallengeFromRef;

  String? get dayChallengeID;

  bool? get is90;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DayChallenge21RecordBuilder builder) => builder
    ..uid = ''
    ..completed = false
    ..task1 = false
    ..task2 = false
    ..task3 = false
    ..task4 = false
    ..day = ''
    ..label = 0
    ..dayChallengeID = ''
    ..is90 = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dayChallenge21');

  static Stream<DayChallenge21Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DayChallenge21Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DayChallenge21Record._();
  factory DayChallenge21Record(
          [void Function(DayChallenge21RecordBuilder) updates]) =
      _$DayChallenge21Record;

  static DayChallenge21Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDayChallenge21RecordData({
  String? uid,
  DateTime? date,
  bool? completed,
  bool? task1,
  bool? task2,
  bool? task3,
  bool? task4,
  String? day,
  int? label,
  DocumentReference? dayChallengeFromRef,
  String? dayChallengeID,
  bool? is90,
}) {
  final firestoreData = serializers.toFirestore(
    DayChallenge21Record.serializer,
    DayChallenge21Record(
      (d) => d
        ..uid = uid
        ..date = date
        ..completed = completed
        ..task1 = task1
        ..task2 = task2
        ..task3 = task3
        ..task4 = task4
        ..day = day
        ..label = label
        ..dayChallengeFromRef = dayChallengeFromRef
        ..dayChallengeID = dayChallengeID
        ..is90 = is90,
    ),
  );

  return firestoreData;
}
