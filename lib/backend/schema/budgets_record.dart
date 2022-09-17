import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'budgets_record.g.dart';

abstract class BudgetsRecord
    implements Built<BudgetsRecord, BudgetsRecordBuilder> {
  static Serializer<BudgetsRecord> get serializer => _$budgetsRecordSerializer;

  String? get budetName;

  String? get budgetAmount;

  DateTime? get budgetCreated;

  String? get budgetDescription;

  DocumentReference? get userBudgets;

  String? get budgetSpent;

  DateTime? get budgetStartDate;

  String? get budgetTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BudgetsRecordBuilder builder) => builder
    ..budetName = ''
    ..budgetAmount = ''
    ..budgetDescription = ''
    ..budgetSpent = ''
    ..budgetTime = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('budgets');

  static Stream<BudgetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BudgetsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BudgetsRecord._();
  factory BudgetsRecord([void Function(BudgetsRecordBuilder) updates]) =
      _$BudgetsRecord;

  static BudgetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBudgetsRecordData({
  String? budetName,
  String? budgetAmount,
  DateTime? budgetCreated,
  String? budgetDescription,
  DocumentReference? userBudgets,
  String? budgetSpent,
  DateTime? budgetStartDate,
  String? budgetTime,
}) {
  final firestoreData = serializers.toFirestore(
    BudgetsRecord.serializer,
    BudgetsRecord(
      (b) => b
        ..budetName = budetName
        ..budgetAmount = budgetAmount
        ..budgetCreated = budgetCreated
        ..budgetDescription = budgetDescription
        ..userBudgets = userBudgets
        ..budgetSpent = budgetSpent
        ..budgetStartDate = budgetStartDate
        ..budgetTime = budgetTime,
    ),
  );

  return firestoreData;
}
