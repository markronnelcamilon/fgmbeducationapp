import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'goal_book_record.g.dart';

abstract class GoalBookRecord
    implements Built<GoalBookRecord, GoalBookRecordBuilder> {
  static Serializer<GoalBookRecord> get serializer =>
      _$goalBookRecordSerializer;

  @nullable
  String get uid;

  @nullable
  DateTime get dateCreated;

  @nullable
  String get goalBookID;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(GoalBookRecordBuilder builder) => builder
    ..uid = ''
    ..goalBookID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goalBook');

  static Stream<GoalBookRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<GoalBookRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  GoalBookRecord._();
  factory GoalBookRecord([void Function(GoalBookRecordBuilder) updates]) =
      _$GoalBookRecord;

  static GoalBookRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createGoalBookRecordData({
  String uid,
  DateTime dateCreated,
  String goalBookID,
}) =>
    serializers.toFirestore(
        GoalBookRecord.serializer,
        GoalBookRecord((g) => g
          ..uid = uid
          ..dateCreated = dateCreated
          ..goalBookID = goalBookID));
