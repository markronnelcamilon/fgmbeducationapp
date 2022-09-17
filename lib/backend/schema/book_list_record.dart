import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'book_list_record.g.dart';

abstract class BookListRecord
    implements Built<BookListRecord, BookListRecordBuilder> {
  static Serializer<BookListRecord> get serializer =>
      _$bookListRecordSerializer;

  String? get bookName;

  String? get amazonLink;

  String? get bookAuthor;

  String? get bookImage;

  bool? get isFeatured;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BookListRecordBuilder builder) => builder
    ..bookName = ''
    ..amazonLink = ''
    ..bookAuthor = ''
    ..bookImage = ''
    ..isFeatured = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookList');

  static Stream<BookListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BookListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BookListRecord._();
  factory BookListRecord([void Function(BookListRecordBuilder) updates]) =
      _$BookListRecord;

  static BookListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBookListRecordData({
  String? bookName,
  String? amazonLink,
  String? bookAuthor,
  String? bookImage,
  bool? isFeatured,
}) {
  final firestoreData = serializers.toFirestore(
    BookListRecord.serializer,
    BookListRecord(
      (b) => b
        ..bookName = bookName
        ..amazonLink = amazonLink
        ..bookAuthor = bookAuthor
        ..bookImage = bookImage
        ..isFeatured = isFeatured,
    ),
  );

  return firestoreData;
}
