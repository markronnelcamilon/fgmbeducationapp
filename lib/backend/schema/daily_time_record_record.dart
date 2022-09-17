import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'daily_time_record_record.g.dart';

abstract class DailyTimeRecordRecord
    implements Built<DailyTimeRecordRecord, DailyTimeRecordRecordBuilder> {
  static Serializer<DailyTimeRecordRecord> get serializer =>
      _$dailyTimeRecordRecordSerializer;

  @BuiltValueField(wireName: 'five_am')
  String? get fiveAm;

  @BuiltValueField(wireName: 'six_am')
  String? get sixAm;

  @BuiltValueField(wireName: 'seven_am')
  String? get sevenAm;

  @BuiltValueField(wireName: 'eight_am')
  String? get eightAm;

  @BuiltValueField(wireName: 'nine_am')
  String? get nineAm;

  @BuiltValueField(wireName: 'ten_am')
  String? get tenAm;

  @BuiltValueField(wireName: 'eleven_am')
  String? get elevenAm;

  @BuiltValueField(wireName: 'twelve_pm')
  String? get twelvePm;

  @BuiltValueField(wireName: 'one_pm')
  String? get onePm;

  @BuiltValueField(wireName: 'two_pm')
  String? get twoPm;

  @BuiltValueField(wireName: 'three_pm')
  String? get threePm;

  @BuiltValueField(wireName: 'four_pm')
  String? get fourPm;

  @BuiltValueField(wireName: 'five_pm')
  String? get fivePm;

  @BuiltValueField(wireName: 'six_pm')
  String? get sixPm;

  @BuiltValueField(wireName: 'seven_pm')
  String? get sevenPm;

  @BuiltValueField(wireName: 'eight_pm')
  String? get eightPm;

  @BuiltValueField(wireName: 'nine_pm')
  String? get ninePm;

  @BuiltValueField(wireName: 'ten_pm')
  String? get tenPm;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(DailyTimeRecordRecordBuilder builder) =>
      builder
        ..fiveAm = ''
        ..sixAm = ''
        ..sevenAm = ''
        ..eightAm = ''
        ..nineAm = ''
        ..tenAm = ''
        ..elevenAm = ''
        ..twelvePm = ''
        ..onePm = ''
        ..twoPm = ''
        ..threePm = ''
        ..fourPm = ''
        ..fivePm = ''
        ..sixPm = ''
        ..sevenPm = ''
        ..eightPm = ''
        ..ninePm = ''
        ..tenPm = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dailyTimeRecord')
          : FirebaseFirestore.instance.collectionGroup('dailyTimeRecord');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('dailyTimeRecord').doc();

  static Stream<DailyTimeRecordRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DailyTimeRecordRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DailyTimeRecordRecord._();
  factory DailyTimeRecordRecord(
          [void Function(DailyTimeRecordRecordBuilder) updates]) =
      _$DailyTimeRecordRecord;

  static DailyTimeRecordRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDailyTimeRecordRecordData({
  String? fiveAm,
  String? sixAm,
  String? sevenAm,
  String? eightAm,
  String? nineAm,
  String? tenAm,
  String? elevenAm,
  String? twelvePm,
  String? onePm,
  String? twoPm,
  String? threePm,
  String? fourPm,
  String? fivePm,
  String? sixPm,
  String? sevenPm,
  String? eightPm,
  String? ninePm,
  String? tenPm,
}) {
  final firestoreData = serializers.toFirestore(
    DailyTimeRecordRecord.serializer,
    DailyTimeRecordRecord(
      (d) => d
        ..fiveAm = fiveAm
        ..sixAm = sixAm
        ..sevenAm = sevenAm
        ..eightAm = eightAm
        ..nineAm = nineAm
        ..tenAm = tenAm
        ..elevenAm = elevenAm
        ..twelvePm = twelvePm
        ..onePm = onePm
        ..twoPm = twoPm
        ..threePm = threePm
        ..fourPm = fourPm
        ..fivePm = fivePm
        ..sixPm = sixPm
        ..sevenPm = sevenPm
        ..eightPm = eightPm
        ..ninePm = ninePm
        ..tenPm = tenPm,
    ),
  );

  return firestoreData;
}
