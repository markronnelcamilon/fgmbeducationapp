import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_post_record.g.dart';

abstract class UserPostRecord
    implements Built<UserPostRecord, UserPostRecordBuilder> {
  static Serializer<UserPostRecord> get serializer =>
      _$userPostRecordSerializer;

  @nullable
  String get postPhoto;

  @nullable
  String get postTitle;

  @nullable
  String get postDescription;

  @nullable
  DocumentReference get postUser;

  @nullable
  DateTime get timePosted;

  @nullable
  BuiltList<DocumentReference> get likes;

  @nullable
  int get numComments;

  @nullable
  bool get postOwner;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

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
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserPostRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserPostRecord._();
  factory UserPostRecord([void Function(UserPostRecordBuilder) updates]) =
      _$UserPostRecord;

  static UserPostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserPostRecordData({
  String postPhoto,
  String postTitle,
  String postDescription,
  DocumentReference postUser,
  DateTime timePosted,
  int numComments,
  bool postOwner,
}) =>
    serializers.toFirestore(
        UserPostRecord.serializer,
        UserPostRecord((u) => u
          ..postPhoto = postPhoto
          ..postTitle = postTitle
          ..postDescription = postDescription
          ..postUser = postUser
          ..timePosted = timePosted
          ..likes = null
          ..numComments = numComments
          ..postOwner = postOwner));
