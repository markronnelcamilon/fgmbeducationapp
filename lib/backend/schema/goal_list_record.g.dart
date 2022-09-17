// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GoalListRecord> _$goalListRecordSerializer =
    new _$GoalListRecordSerializer();

class _$GoalListRecordSerializer
    implements StructuredSerializer<GoalListRecord> {
  @override
  final Iterable<Type> types = const [GoalListRecord, _$GoalListRecord];
  @override
  final String wireName = 'GoalListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GoalListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userID;
    if (value != null) {
      result
        ..add('userID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.goalID;
    if (value != null) {
      result
        ..add('goalID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  GoalListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GoalListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'goalID':
          result.goalID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$GoalListRecord extends GoalListRecord {
  @override
  final String? userID;
  @override
  final String? goalID;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GoalListRecord([void Function(GoalListRecordBuilder)? updates]) =>
      (new GoalListRecordBuilder()..update(updates))._build();

  _$GoalListRecord._({this.userID, this.goalID, this.date, this.ffRef})
      : super._();

  @override
  GoalListRecord rebuild(void Function(GoalListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoalListRecordBuilder toBuilder() =>
      new GoalListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoalListRecord &&
        userID == other.userID &&
        goalID == other.goalID &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userID.hashCode), goalID.hashCode), date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoalListRecord')
          ..add('userID', userID)
          ..add('goalID', goalID)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GoalListRecordBuilder
    implements Builder<GoalListRecord, GoalListRecordBuilder> {
  _$GoalListRecord? _$v;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  String? _goalID;
  String? get goalID => _$this._goalID;
  set goalID(String? goalID) => _$this._goalID = goalID;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GoalListRecordBuilder() {
    GoalListRecord._initializeBuilder(this);
  }

  GoalListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userID = $v.userID;
      _goalID = $v.goalID;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoalListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoalListRecord;
  }

  @override
  void update(void Function(GoalListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoalListRecord build() => _build();

  _$GoalListRecord _build() {
    final _$result = _$v ??
        new _$GoalListRecord._(
            userID: userID, goalID: goalID, date: date, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
