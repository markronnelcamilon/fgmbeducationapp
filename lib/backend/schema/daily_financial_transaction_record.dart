import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'daily_financial_transaction_record.g.dart';

abstract class DailyFinancialTransactionRecord
    implements
        Built<DailyFinancialTransactionRecord,
            DailyFinancialTransactionRecordBuilder> {
  static Serializer<DailyFinancialTransactionRecord> get serializer =>
      _$dailyFinancialTransactionRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get description;

  @nullable
  double get amount;

  @nullable
  @BuiltValueField(wireName: 'wants_or_needs')
  String get wantsOrNeeds;

  @nullable
  DateTime get date;

  @nullable
  String get spendAt;

  @nullable
  @BuiltValueField(wireName: 'business_or_personal')
  String get businessOrPersonal;

  @nullable
  bool get isMoneyOut;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(
          DailyFinancialTransactionRecordBuilder builder) =>
      builder
        ..uid = ''
        ..description = ''
        ..amount = 0.0
        ..wantsOrNeeds = ''
        ..spendAt = ''
        ..businessOrPersonal = ''
        ..isMoneyOut = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daily_financial_transaction');

  static Stream<DailyFinancialTransactionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DailyFinancialTransactionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DailyFinancialTransactionRecord._();
  factory DailyFinancialTransactionRecord(
          [void Function(DailyFinancialTransactionRecordBuilder) updates]) =
      _$DailyFinancialTransactionRecord;

  static DailyFinancialTransactionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDailyFinancialTransactionRecordData({
  String uid,
  String description,
  double amount,
  String wantsOrNeeds,
  DateTime date,
  String spendAt,
  String businessOrPersonal,
  bool isMoneyOut,
}) =>
    serializers.toFirestore(
        DailyFinancialTransactionRecord.serializer,
        DailyFinancialTransactionRecord((d) => d
          ..uid = uid
          ..description = description
          ..amount = amount
          ..wantsOrNeeds = wantsOrNeeds
          ..date = date
          ..spendAt = spendAt
          ..businessOrPersonal = businessOrPersonal
          ..isMoneyOut = isMoneyOut));
