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

  String? get uid;

  String? get description;

  double? get amount;

  @BuiltValueField(wireName: 'wants_or_needs')
  String? get wantsOrNeeds;

  DateTime? get date;

  String? get spendAt;

  @BuiltValueField(wireName: 'business_or_personal')
  String? get businessOrPersonal;

  bool? get isMoneyOut;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

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
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DailyFinancialTransactionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DailyFinancialTransactionRecord._();
  factory DailyFinancialTransactionRecord(
          [void Function(DailyFinancialTransactionRecordBuilder) updates]) =
      _$DailyFinancialTransactionRecord;

  static DailyFinancialTransactionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDailyFinancialTransactionRecordData({
  String? uid,
  String? description,
  double? amount,
  String? wantsOrNeeds,
  DateTime? date,
  String? spendAt,
  String? businessOrPersonal,
  bool? isMoneyOut,
}) {
  final firestoreData = serializers.toFirestore(
    DailyFinancialTransactionRecord.serializer,
    DailyFinancialTransactionRecord(
      (d) => d
        ..uid = uid
        ..description = description
        ..amount = amount
        ..wantsOrNeeds = wantsOrNeeds
        ..date = date
        ..spendAt = spendAt
        ..businessOrPersonal = businessOrPersonal
        ..isMoneyOut = isMoneyOut,
    ),
  );

  return firestoreData;
}
