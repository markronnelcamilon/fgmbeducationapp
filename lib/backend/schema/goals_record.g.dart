// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goals_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GoalsRecord> _$goalsRecordSerializer = new _$GoalsRecordSerializer();

class _$GoalsRecordSerializer implements StructuredSerializer<GoalsRecord> {
  @override
  final Iterable<Type> types = const [GoalsRecord, _$GoalsRecord];
  @override
  final String wireName = 'GoalsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GoalsRecord object,
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
    value = object.goalDetails;
    if (value != null) {
      result
        ..add('goalDetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isToggled;
    if (value != null) {
      result
        ..add('isToggled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('dateCreated')
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
  GoalsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GoalsRecordBuilder();

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
        case 'goalDetails':
          result.goalDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isToggled':
          result.isToggled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'goalID':
          result.goalID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'dateCreated':
          result.dateCreated = serializers.deserialize(value,
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

class _$GoalsRecord extends GoalsRecord {
  @override
  final String? userID;
  @override
  final String? goalDetails;
  @override
  final bool? isToggled;
  @override
  final String? goalID;
  @override
  final DateTime? date;
  @override
  final DateTime? dateCreated;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GoalsRecord([void Function(GoalsRecordBuilder)? updates]) =>
      (new GoalsRecordBuilder()..update(updates))._build();

  _$GoalsRecord._(
      {this.userID,
      this.goalDetails,
      this.isToggled,
      this.goalID,
      this.date,
      this.dateCreated,
      this.ffRef})
      : super._();

  @override
  GoalsRecord rebuild(void Function(GoalsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoalsRecordBuilder toBuilder() => new GoalsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoalsRecord &&
        userID == other.userID &&
        goalDetails == other.goalDetails &&
        isToggled == other.isToggled &&
        goalID == other.goalID &&
        date == other.date &&
        dateCreated == other.dateCreated &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, userID.hashCode), goalDetails.hashCode),
                        isToggled.hashCode),
                    goalID.hashCode),
                date.hashCode),
            dateCreated.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoalsRecord')
          ..add('userID', userID)
          ..add('goalDetails', goalDetails)
          ..add('isToggled', isToggled)
          ..add('goalID', goalID)
          ..add('date', date)
          ..add('dateCreated', dateCreated)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GoalsRecordBuilder implements Builder<GoalsRecord, GoalsRecordBuilder> {
  _$GoalsRecord? _$v;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  String? _goalDetails;
  String? get goalDetails => _$this._goalDetails;
  set goalDetails(String? goalDetails) => _$this._goalDetails = goalDetails;

  bool? _isToggled;
  bool? get isToggled => _$this._isToggled;
  set isToggled(bool? isToggled) => _$this._isToggled = isToggled;

  String? _goalID;
  String? get goalID => _$this._goalID;
  set goalID(String? goalID) => _$this._goalID = goalID;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DateTime? _dateCreated;
  DateTime? get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime? dateCreated) => _$this._dateCreated = dateCreated;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GoalsRecordBuilder() {
    GoalsRecord._initializeBuilder(this);
  }

  GoalsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userID = $v.userID;
      _goalDetails = $v.goalDetails;
      _isToggled = $v.isToggled;
      _goalID = $v.goalID;
      _date = $v.date;
      _dateCreated = $v.dateCreated;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoalsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoalsRecord;
  }

  @override
  void update(void Function(GoalsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoalsRecord build() => _build();

  _$GoalsRecord _build() {
    final _$result = _$v ??
        new _$GoalsRecord._(
            userID: userID,
            goalDetails: goalDetails,
            isToggled: isToggled,
            goalID: goalID,
            date: date,
            dateCreated: dateCreated,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
