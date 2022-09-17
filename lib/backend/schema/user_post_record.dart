import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_post_record.g.dart';

abstract class UserPostRecord
    implements Built<UserPostRecord, UserPostRecordBuilder> {
  static Serializer<UserPostRecord> get serializer =>
      _$userPostRecordSerializer;

  String? get postPhoto;

  String? get postTitle;

  String? get postDescription;

  DocumentReference? get postUser;

  DateTime? get timePosted;

  BuiltList<DocumentReference>? get likes;

  int? get numComments;

  bool? get postOwner;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserPostRecordBuilder builder) => builder
    ..postPhoto = ''
    ..postTitle = ''
    ..postDescription = ''
    ..likes = ListBuilder()
    ..numComments = 0
    ..postOwner = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userPost');

  static Stream<UserPostRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserPostRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserPostRecord._();
  factory UserPostRecord([void Function(UserPostRecordBuilder) updates]) =
      _$UserPostRecord;

  static UserPostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserPostRecordData({
  String? postPhoto,
  String? postTitle,
  String? postDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  int? numComments,
  bool? postOwner,
}) {
  final firestoreData = serializers.toFirestore(
    UserPostRecord.serializer,
    UserPostRecord(
      (u) => u
        ..postPhoto = postPhoto
        ..postTitle = postTitle
        ..postDescription = postDescription
        ..postUser = postUser
        ..timePosted = timePosted
        ..likes = null
        ..numComments = numComments
        ..postOwner = postOwner,
    ),
  );

  return firestoreData;
}
