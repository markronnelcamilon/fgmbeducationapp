import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'goal_list_record.g.dart';

abstract class GoalListRecord
    implements Built<GoalListRecord, GoalListRecordBuilder> {
  static Serializer<GoalListRecord> get serializer =>
      _$goalListRecordSerializer;

  String? get userID;

  String? get goalID;

  DateTime? get date;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GoalListRecordBuilder builder) => builder
    ..userID = ''
    ..goalID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goalList');

  static Stream<GoalListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GoalListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GoalListRecord._();
  factory GoalListRecord([void Function(GoalListRecordBuilder) updates]) =
      _$GoalListRecord;

  static GoalListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGoalListRecordData({
  String? userID,
  String? goalID,
  DateTime? date,
}) {
  final firestoreData = serializers.toFirestore(
    GoalListRecord.serializer,
    GoalListRecord(
      (g) => g
        ..userID = userID
        ..goalID = goalID
        ..date = date,
    ),
  );

  return firestoreData;
}
