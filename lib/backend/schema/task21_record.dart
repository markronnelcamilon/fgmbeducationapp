import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'task21_record.g.dart';

abstract class Task21Record
    implements Built<Task21Record, Task21RecordBuilder> {
  static Serializer<Task21Record> get serializer => _$task21RecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get taskName;

  @nullable
  bool get taskState;

  @nullable
  @BuiltValueField(wireName: 'subscription_id')
  String get subscriptionId;

  @nullable
  int get label;

  @nullable
  String get day;

  @nullable
  DocumentReference get challengeList21;

  @nullable
  String get dayChallengeID;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(Task21RecordBuilder builder) => builder
    ..uid = ''
    ..taskName = ''
    ..taskState = false
    ..subscriptionId = ''
    ..label = 0
    ..day = ''
    ..dayChallengeID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('task21');

  static Stream<Task21Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<Task21Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Task21Record._();
  factory Task21Record([void Function(Task21RecordBuilder) updates]) =
      _$Task21Record;

  static Task21Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTask21RecordData({
  String uid,
  String taskName,
  bool taskState,
  String subscriptionId,
  int label,
  String day,
  DocumentReference challengeList21,
  String dayChallengeID,
}) =>
    serializers.toFirestore(
        Task21Record.serializer,
        Task21Record((t) => t
          ..uid = uid
          ..taskName = taskName
          ..taskState = taskState
          ..subscriptionId = subscriptionId
          ..label = label
          ..day = day
          ..challengeList21 = challengeList21
          ..dayChallengeID = dayChallengeID));
