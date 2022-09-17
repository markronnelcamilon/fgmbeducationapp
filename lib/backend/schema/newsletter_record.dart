import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'newsletter_record.g.dart';

abstract class NewsletterRecord
    implements Built<NewsletterRecord, NewsletterRecordBuilder> {
  static Serializer<NewsletterRecord> get serializer =>
      _$newsletterRecordSerializer;

  String? get title;

  String? get image;

  String? get body;

  DateTime? get date;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NewsletterRecordBuilder builder) => builder
    ..title = ''
    ..image = ''
    ..body = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('newsletter');

  static Stream<NewsletterRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NewsletterRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NewsletterRecord._();
  factory NewsletterRecord([void Function(NewsletterRecordBuilder) updates]) =
      _$NewsletterRecord;

  static NewsletterRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNewsletterRecordData({
  String? title,
  String? image,
  String? body,
  DateTime? date,
}) {
  final firestoreData = serializers.toFirestore(
    NewsletterRecord.serializer,
    NewsletterRecord(
      (n) => n
        ..title = title
        ..image = image
        ..body = body
        ..date = date,
    ),
  );

  return firestoreData;
}
