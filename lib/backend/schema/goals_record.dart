import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'goals_record.g.dart';

abstract class GoalsRecord implements Built<GoalsRecord, GoalsRecordBuilder> {
  static Serializer<GoalsRecord> get serializer => _$goalsRecordSerializer;

  String? get userID;

  String? get goalDetails;

  bool? get isToggled;

  String? get goalID;

  DateTime? get date;

  DateTime? get dateCreated;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GoalsRecordBuilder builder) => builder
    ..userID = ''
    ..goalDetails = ''
    ..isToggled = false
    ..goalID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goals');

  static Stream<GoalsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GoalsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GoalsRecord._();
  factory GoalsRecord([void Function(GoalsRecordBuilder) updates]) =
      _$GoalsRecord;

  static GoalsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGoalsRecordData({
  String? userID,
  String? goalDetails,
  bool? isToggled,
  String? goalID,
  DateTime? date,
  DateTime? dateCreated,
}) {
  final firestoreData = serializers.toFirestore(
    GoalsRecord.serializer,
    GoalsRecord(
      (g) => g
        ..userID = userID
        ..goalDetails = goalDetails
        ..isToggled = isToggled
        ..goalID = goalID
        ..date = date
        ..dateCreated = dateCreated,
    ),
  );

  return firestoreData;
}
