import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vision_board_record.g.dart';

abstract class VisionBoardRecord
    implements Built<VisionBoardRecord, VisionBoardRecordBuilder> {
  static Serializer<VisionBoardRecord> get serializer =>
      _$visionBoardRecordSerializer;

  @nullable
  String get userID;

  @nullable
  String get image;

  @nullable
  bool get isAchievement;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(VisionBoardRecordBuilder builder) => builder
    ..userID = ''
    ..image = ''
    ..isAchievement = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('visionBoard');

  static Stream<VisionBoardRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<VisionBoardRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  VisionBoardRecord._();
  factory VisionBoardRecord([void Function(VisionBoardRecordBuilder) updates]) =
      _$VisionBoardRecord;

  static VisionBoardRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createVisionBoardRecordData({
  String userID,
  String image,
  bool isAchievement,
  DateTime date,
}) =>
    serializers.toFirestore(
        VisionBoardRecord.serializer,
        VisionBoardRecord((v) => v
          ..userID = userID
          ..image = image
          ..isAchievement = isAchievement
          ..date = date));
