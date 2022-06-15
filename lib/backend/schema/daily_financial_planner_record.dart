import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'daily_financial_planner_record.g.dart';

abstract class DailyFinancialPlannerRecord
    implements
        Built<DailyFinancialPlannerRecord, DailyFinancialPlannerRecordBuilder> {
  static Serializer<DailyFinancialPlannerRecord> get serializer =>
      _$dailyFinancialPlannerRecordSerializer;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'starting_balance')
  double get startingBalance;

  @nullable
  @BuiltValueField(wireName: 'total_spending')
  double get totalSpending;

  @nullable
  @BuiltValueField(wireName: 'total_transaction')
  double get totalTransaction;

  @nullable
  @BuiltValueField(wireName: 'no_of_wants')
  int get noOfWants;

  @nullable
  @BuiltValueField(wireName: 'no_of_needs')
  int get noOfNeeds;

  @nullable
  @BuiltValueField(wireName: 'spending_wants')
  double get spendingWants;

  @nullable
  @BuiltValueField(wireName: 'spending_needs')
  double get spendingNeeds;

  @nullable
  @BuiltValueField(wireName: 'end_of_day_balance')
  double get endOfDayBalance;

  @nullable
  @BuiltValueField(wireName: 'subscription_id')
  String get subscriptionId;

  @nullable
  @BuiltValueField(wireName: 'spending_business')
  double get spendingBusiness;

  @nullable
  @BuiltValueField(wireName: 'allowcation_business')
  double get allowcationBusiness;

  @nullable
  @BuiltValueField(wireName: 'spending_personal')
  double get spendingPersonal;

  @nullable
  @BuiltValueField(wireName: 'allocation_personal')
  double get allocationPersonal;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DailyFinancialPlannerRecordBuilder builder) =>
      builder
        ..uid = ''
        ..startingBalance = 0.0
        ..totalSpending = 0.0
        ..totalTransaction = 0.0
        ..noOfWants = 0
        ..noOfNeeds = 0
        ..spendingWants = 0.0
        ..spendingNeeds = 0.0
        ..endOfDayBalance = 0.0
        ..subscriptionId = ''
        ..spendingBusiness = 0.0
        ..allowcationBusiness = 0.0
        ..spendingPersonal = 0.0
        ..allocationPersonal = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daily_financial_planner');

  static Stream<DailyFinancialPlannerRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DailyFinancialPlannerRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DailyFinancialPlannerRecord._();
  factory DailyFinancialPlannerRecord(
          [void Function(DailyFinancialPlannerRecordBuilder) updates]) =
      _$DailyFinancialPlannerRecord;

  static DailyFinancialPlannerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDailyFinancialPlannerRecordData({
  String uid,
  double startingBalance,
  double totalSpending,
  double totalTransaction,
  int noOfWants,
  int noOfNeeds,
  double spendingWants,
  double spendingNeeds,
  double endOfDayBalance,
  String subscriptionId,
  double spendingBusiness,
  double allowcationBusiness,
  double spendingPersonal,
  double allocationPersonal,
}) =>
    serializers.toFirestore(
        DailyFinancialPlannerRecord.serializer,
        DailyFinancialPlannerRecord((d) => d
          ..uid = uid
          ..startingBalance = startingBalance
          ..totalSpending = totalSpending
          ..totalTransaction = totalTransaction
          ..noOfWants = noOfWants
          ..noOfNeeds = noOfNeeds
          ..spendingWants = spendingWants
          ..spendingNeeds = spendingNeeds
          ..endOfDayBalance = endOfDayBalance
          ..subscriptionId = subscriptionId
          ..spendingBusiness = spendingBusiness
          ..allowcationBusiness = allowcationBusiness
          ..spendingPersonal = spendingPersonal
          ..allocationPersonal = allocationPersonal));
