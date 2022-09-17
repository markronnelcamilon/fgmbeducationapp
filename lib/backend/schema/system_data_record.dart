import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'system_data_record.g.dart';

abstract class SystemDataRecord
    implements Built<SystemDataRecord, SystemDataRecordBuilder> {
  static Serializer<SystemDataRecord> get serializer =>
      _$systemDataRecordSerializer;

  @BuiltValueField(wireName: 'privacy_policy_title')
  String? get privacyPolicyTitle;

  @BuiltValueField(wireName: 'privacy_policy')
  String? get privacyPolicy;

  String? get dayChallengeDesc;

  String? get goalBookDesc;

  String? get financialPlannerDesc;

  String? get successPlanner;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SystemDataRecordBuilder builder) => builder
    ..privacyPolicyTitle = ''
    ..privacyPolicy = ''
    ..dayChallengeDesc = ''
    ..goalBookDesc = ''
    ..financialPlannerDesc = ''
    ..successPlanner = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('system_data');

  static Stream<SystemDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SystemDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SystemDataRecord._();
  factory SystemDataRecord([void Function(SystemDataRecordBuilder) updates]) =
      _$SystemDataRecord;

  static SystemDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSystemDataRecordData({
  String? privacyPolicyTitle,
  String? privacyPolicy,
  String? dayChallengeDesc,
  String? goalBookDesc,
  String? financialPlannerDesc,
  String? successPlanner,
}) {
  final firestoreData = serializers.toFirestore(
    SystemDataRecord.serializer,
    SystemDataRecord(
      (s) => s
        ..privacyPolicyTitle = privacyPolicyTitle
        ..privacyPolicy = privacyPolicy
        ..dayChallengeDesc = dayChallengeDesc
        ..goalBookDesc = goalBookDesc
        ..financialPlannerDesc = financialPlannerDesc
        ..successPlanner = successPlanner,
    ),
  );

  return firestoreData;
}
