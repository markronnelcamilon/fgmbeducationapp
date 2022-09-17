// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quarterly_goals_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuarterlyGoalsRecord> _$quarterlyGoalsRecordSerializer =
    new _$QuarterlyGoalsRecordSerializer();

class _$QuarterlyGoalsRecordSerializer
    implements StructuredSerializer<QuarterlyGoalsRecord> {
  @override
  final Iterable<Type> types = const [
    QuarterlyGoalsRecord,
    _$QuarterlyGoalsRecord
  ];
  @override
  final String wireName = 'QuarterlyGoalsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, QuarterlyGoalsRecord object,
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
    value = object.goals;
    if (value != null) {
      result
        ..add('goals')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
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
  QuarterlyGoalsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuarterlyGoalsRecordBuilder();

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
        case 'goals':
          result.goals = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
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

class _$QuarterlyGoalsRecord extends QuarterlyGoalsRecord {
  @override
  final String? uid;
  @override
  final String? goals;
  @override
  final String? label;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$QuarterlyGoalsRecord(
          [void Function(QuarterlyGoalsRecordBuilder)? updates]) =>
      (new QuarterlyGoalsRecordBuilder()..update(updates))._build();

  _$QuarterlyGoalsRecord._(
      {this.uid, this.goals, this.label, this.date, this.ffRef})
      : super._();

  @override
  QuarterlyGoalsRecord rebuild(
          void Function(QuarterlyGoalsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuarterlyGoalsRecordBuilder toBuilder() =>
      new QuarterlyGoalsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuarterlyGoalsRecord &&
        uid == other.uid &&
        goals == other.goals &&
        label == other.label &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, uid.hashCode), goals.hashCode), label.hashCode),
            date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuarterlyGoalsRecord')
          ..add('uid', uid)
          ..add('goals', goals)
          ..add('label', label)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class QuarterlyGoalsRecordBuilder
    implements Builder<QuarterlyGoalsRecord, QuarterlyGoalsRecordBuilder> {
  _$QuarterlyGoalsRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _goals;
  String? get goals => _$this._goals;
  set goals(String? goals) => _$this._goals = goals;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  QuarterlyGoalsRecordBuilder() {
    QuarterlyGoalsRecord._initializeBuilder(this);
  }

  QuarterlyGoalsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _goals = $v.goals;
      _label = $v.label;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuarterlyGoalsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuarterlyGoalsRecord;
  }

  @override
  void update(void Function(QuarterlyGoalsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuarterlyGoalsRecord build() => _build();

  _$QuarterlyGoalsRecord _build() {
    final _$result = _$v ??
        new _$QuarterlyGoalsRecord._(
            uid: uid, goals: goals, label: label, date: date, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
