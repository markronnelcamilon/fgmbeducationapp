import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'business_allocation_record.g.dart';

abstract class BusinessAllocationRecord
    implements
        Built<BusinessAllocationRecord, BusinessAllocationRecordBuilder> {
  static Serializer<BusinessAllocationRecord> get serializer =>
      _$businessAllocationRecordSerializer;

  @nullable
  double get allocationDeductionPercentage;

  @nullable
  String get uid;

  @nullable
  double get amount;

  @nullable
  String get allocationDeduction;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BusinessAllocationRecordBuilder builder) =>
      builder
        ..allocationDeductionPercentage = 0.0
        ..uid = ''
        ..amount = 0.0
        ..allocationDeduction = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('businessAllocation');

  static Stream<BusinessAllocationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BusinessAllocationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  BusinessAllocationRecord._();
  factory BusinessAllocationRecord(
          [void Function(BusinessAllocationRecordBuilder) updates]) =
      _$BusinessAllocationRecord;

  static BusinessAllocationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBusinessAllocationRecordData({
  double allocationDeductionPercentage,
  String uid,
  double amount,
  String allocationDeduction,
}) =>
    serializers.toFirestore(
        BusinessAllocationRecord.serializer,
        BusinessAllocationRecord((b) => b
          ..allocationDeductionPercentage = allocationDeductionPercentage
          ..uid = uid
          ..amount = amount
          ..allocationDeduction = allocationDeduction));
