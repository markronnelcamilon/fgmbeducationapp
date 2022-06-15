import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_list_record.g.dart';

abstract class UserListRecord
    implements Built<UserListRecord, UserListRecordBuilder> {
  static Serializer<UserListRecord> get serializer =>
      _$userListRecordSerializer;

  @nullable
  DocumentReference get userName;

  @nullable
  BuiltList<String> get users;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserListRecordBuilder builder) =>
      builder..users = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userList');

  static Stream<UserListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserListRecord._();
  factory UserListRecord([void Function(UserListRecordBuilder) updates]) =
      _$UserListRecord;

  static UserListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserListRecordData({
  DocumentReference userName,
}) =>
    serializers.toFirestore(
        UserListRecord.serializer,
        UserListRecord((u) => u
          ..userName = userName
          ..users = null));
