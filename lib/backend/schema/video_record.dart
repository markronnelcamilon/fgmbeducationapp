import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'video_record.g.dart';

abstract class VideoRecord implements Built<VideoRecord, VideoRecordBuilder> {
  static Serializer<VideoRecord> get serializer => _$videoRecordSerializer;

  @nullable
  String get id;

  @nullable
  String get videoTitle;

  @nullable
  String get video;

  @nullable
  String get videoDesription;

  @nullable
  bool get isFeatured;

  @nullable
  String get thumbnail;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(VideoRecordBuilder builder) => builder
    ..id = ''
    ..videoTitle = ''
    ..video = ''
    ..videoDesription = ''
    ..isFeatured = false
    ..thumbnail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('video');

  static Stream<VideoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<VideoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  VideoRecord._();
  factory VideoRecord([void Function(VideoRecordBuilder) updates]) =
      _$VideoRecord;

  static VideoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createVideoRecordData({
  String id,
  String videoTitle,
  String video,
  String videoDesription,
  bool isFeatured,
  String thumbnail,
}) =>
    serializers.toFirestore(
        VideoRecord.serializer,
        VideoRecord((v) => v
          ..id = id
          ..videoTitle = videoTitle
          ..video = video
          ..videoDesription = videoDesription
          ..isFeatured = isFeatured
          ..thumbnail = thumbnail));
