import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'subscriptions_record.g.dart';

abstract class SubscriptionsRecord
    implements Built<SubscriptionsRecord, SubscriptionsRecordBuilder> {
  static Serializer<SubscriptionsRecord> get serializer =>
      _$subscriptionsRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get subscriptionName;

  @nullable
  DateTime get dateSubscribed;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SubscriptionsRecordBuilder builder) => builder
    ..uid = ''
    ..subscriptionName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subscriptions');

  static Stream<SubscriptionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SubscriptionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  SubscriptionsRecord._();
  factory SubscriptionsRecord(
          [void Function(SubscriptionsRecordBuilder) updates]) =
      _$SubscriptionsRecord;

  static SubscriptionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSubscriptionsRecordData({
  String uid,
  String subscriptionName,
  DateTime dateSubscribed,
}) =>
    serializers.toFirestore(
        SubscriptionsRecord.serializer,
        SubscriptionsRecord((s) => s
          ..uid = uid
          ..subscriptionName = subscriptionName
          ..dateSubscribed = dateSubscribed));
