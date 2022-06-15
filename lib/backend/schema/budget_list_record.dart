import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'budget_list_record.g.dart';

abstract class BudgetListRecord
    implements Built<BudgetListRecord, BudgetListRecordBuilder> {
  static Serializer<BudgetListRecord> get serializer =>
      _$budgetListRecordSerializer;

  @nullable
  BuiltList<String> get budget;

  @nullable
  DocumentReference get budgetUser;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BudgetListRecordBuilder builder) =>
      builder..budget = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('budgetList');

  static Stream<BudgetListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BudgetListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BudgetListRecord._();
  factory BudgetListRecord([void Function(BudgetListRecordBuilder) updates]) =
      _$BudgetListRecord;

  static BudgetListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBudgetListRecordData({
  DocumentReference budgetUser,
}) =>
    serializers.toFirestore(
        BudgetListRecord.serializer,
        BudgetListRecord((b) => b
          ..budget = null
          ..budgetUser = budgetUser));
