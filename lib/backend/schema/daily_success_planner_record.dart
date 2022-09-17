import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'daily_success_planner_record.g.dart';

abstract class DailySuccessPlannerRecord
    implements
        Built<DailySuccessPlannerRecord, DailySuccessPlannerRecordBuilder> {
  static Serializer<DailySuccessPlannerRecord> get serializer =>
      _$dailySuccessPlannerRecordSerializer;

  String? get uid;

  DateTime? get date;

  @BuiltValueField(wireName: 'greatful_for')
  String? get greatfulFor;

  @BuiltValueField(wireName: 'i_than_god_for')
  String? get iThanGodFor;

  @BuiltValueField(wireName: 'daily_affirmatin')
  String? get dailyAffirmatin;

  @BuiltValueField(wireName: 'did_win_the_day')
  bool? get didWinTheDay;

  @BuiltValueField(wireName: 'write_down_goals')
  bool? get writeDownGoals;

  @BuiltValueField(wireName: 'read_ten_pages')
  bool? get readTenPages;

  @BuiltValueField(wireName: 'target_detail01')
  String? get targetDetail01;

  @BuiltValueField(wireName: 'target_detail02')
  String? get targetDetail02;

  @BuiltValueField(wireName: 'target_detail03')
  String? get targetDetail03;

  @BuiltValueField(wireName: 'target_detail04')
  String? get targetDetail04;

  @BuiltValueField(wireName: 'target_detail05')
  String? get targetDetail05;

  bool? get task01;

  bool? get task02;

  bool? get task03;

  bool? get task04;

  bool? get task05;

  @BuiltValueField(wireName: 'quarterly_goal')
  String? get quarterlyGoal;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DailySuccessPlannerRecordBuilder builder) =>
      builder
        ..uid = ''
        ..greatfulFor = ''
        ..iThanGodFor = ''
        ..dailyAffirmatin = ''
        ..didWinTheDay = false
        ..writeDownGoals = false
        ..readTenPages = false
        ..targetDetail01 = ''
        ..targetDetail02 = ''
        ..targetDetail03 = ''
        ..targetDetail04 = ''
        ..targetDetail05 = ''
        ..task01 = false
        ..task02 = false
        ..task03 = false
        ..task04 = false
        ..task05 = false
        ..quarterlyGoal = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daily_success_planner');

  static Stream<DailySuccessPlannerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DailySuccessPlannerRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DailySuccessPlannerRecord._();
  factory DailySuccessPlannerRecord(
          [void Function(DailySuccessPlannerRecordBuilder) updates]) =
      _$DailySuccessPlannerRecord;

  static DailySuccessPlannerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDailySuccessPlannerRecordData({
  String? uid,
  DateTime? date,
  String? greatfulFor,
  String? iThanGodFor,
  String? dailyAffirmatin,
  bool? didWinTheDay,
  bool? writeDownGoals,
  bool? readTenPages,
  String? targetDetail01,
  String? targetDetail02,
  String? targetDetail03,
  String? targetDetail04,
  String? targetDetail05,
  bool? task01,
  bool? task02,
  bool? task03,
  bool? task04,
  bool? task05,
  String? quarterlyGoal,
}) {
  final firestoreData = serializers.toFirestore(
    DailySuccessPlannerRecord.serializer,
    DailySuccessPlannerRecord(
      (d) => d
        ..uid = uid
        ..date = date
        ..greatfulFor = greatfulFor
        ..iThanGodFor = iThanGodFor
        ..dailyAffirmatin = dailyAffirmatin
        ..didWinTheDay = didWinTheDay
        ..writeDownGoals = writeDownGoals
        ..readTenPages = readTenPages
        ..targetDetail01 = targetDetail01
        ..targetDetail02 = targetDetail02
        ..targetDetail03 = targetDetail03
        ..targetDetail04 = targetDetail04
        ..targetDetail05 = targetDetail05
        ..task01 = task01
        ..task02 = task02
        ..task03 = task03
        ..task04 = task04
        ..task05 = task05
        ..quarterlyGoal = quarterlyGoal,
    ),
  );

  return firestoreData;
}
