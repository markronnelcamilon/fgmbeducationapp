// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_book_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GoalBookRecord> _$goalBookRecordSerializer =
    new _$GoalBookRecordSerializer();

class _$GoalBookRecordSerializer
    implements StructuredSerializer<GoalBookRecord> {
  @override
  final Iterable<Type> types = const [GoalBookRecord, _$GoalBookRecord];
  @override
  final String wireName = 'GoalBookRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GoalBookRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('dateCreated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.goalBookID;
    if (value != null) {
      result
        ..add('goalBookID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  GoalBookRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GoalBookRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateCreated':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'goalBookID':
          result.goalBookID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$GoalBookRecord extends GoalBookRecord {
  @override
  final String? uid;
  @override
  final DateTime? dateCreated;
  @override
  final String? goalBookID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GoalBookRecord([void Function(GoalBookRecordBuilder)? updates]) =>
      (new GoalBookRecordBuilder()..update(updates))._build();

  _$GoalBookRecord._({this.uid, this.dateCreated, this.goalBookID, this.ffRef})
      : super._();

  @override
  GoalBookRecord rebuild(void Function(GoalBookRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoalBookRecordBuilder toBuilder() =>
      new GoalBookRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoalBookRecord &&
        uid == other.uid &&
        dateCreated == other.dateCreated &&
        goalBookID == other.goalBookID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, uid.hashCode), dateCreated.hashCode),
            goalBookID.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoalBookRecord')
          ..add('uid', uid)
          ..add('dateCreated', dateCreated)
          ..add('goalBookID', goalBookID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GoalBookRecordBuilder
    implements Builder<GoalBookRecord, GoalBookRecordBuilder> {
  _$GoalBookRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _dateCreated;
  DateTime? get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime? dateCreated) => _$this._dateCreated = dateCreated;

  String? _goalBookID;
  String? get goalBookID => _$this._goalBookID;
  set goalBookID(String? goalBookID) => _$this._goalBookID = goalBookID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GoalBookRecordBuilder() {
    GoalBookRecord._initializeBuilder(this);
  }

  GoalBookRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _dateCreated = $v.dateCreated;
      _goalBookID = $v.goalBookID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoalBookRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoalBookRecord;
  }

  @override
  void update(void Function(GoalBookRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoalBookRecord build() => _build();

  _$GoalBookRecord _build() {
    final _$result = _$v ??
        new _$GoalBookRecord._(
            uid: uid,
            dateCreated: dateCreated,
            goalBookID: goalBookID,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
