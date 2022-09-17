// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_challenge21_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DayChallenge21Record> _$dayChallenge21RecordSerializer =
    new _$DayChallenge21RecordSerializer();

class _$DayChallenge21RecordSerializer
    implements StructuredSerializer<DayChallenge21Record> {
  @override
  final Iterable<Type> types = const [
    DayChallenge21Record,
    _$DayChallenge21Record
  ];
  @override
  final String wireName = 'DayChallenge21Record';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DayChallenge21Record object,
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
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.completed;
    if (value != null) {
      result
        ..add('completed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.task1;
    if (value != null) {
      result
        ..add('task1')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.task2;
    if (value != null) {
      result
        ..add('task2')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.task3;
    if (value != null) {
      result
        ..add('task3')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.task4;
    if (value != null) {
      result
        ..add('task4')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dayChallengeFromRef;
    if (value != null) {
      result
        ..add('dayChallengeFromRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.dayChallengeID;
    if (value != null) {
      result
        ..add('dayChallengeID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is90;
    if (value != null) {
      result
        ..add('is90')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  DayChallenge21Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DayChallenge21RecordBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'completed':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'task1':
          result.task1 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'task2':
          result.task2 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'task3':
          result.task3 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'task4':
          result.task4 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dayChallengeFromRef':
          result.dayChallengeFromRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'dayChallengeID':
          result.dayChallengeID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is90':
          result.is90 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$DayChallenge21Record extends DayChallenge21Record {
  @override
  final String? uid;
  @override
  final DateTime? date;
  @override
  final bool? completed;
  @override
  final bool? task1;
  @override
  final bool? task2;
  @override
  final bool? task3;
  @override
  final bool? task4;
  @override
  final String? day;
  @override
  final int? label;
  @override
  final DocumentReference<Object?>? dayChallengeFromRef;
  @override
  final String? dayChallengeID;
  @override
  final bool? is90;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DayChallenge21Record(
          [void Function(DayChallenge21RecordBuilder)? updates]) =>
      (new DayChallenge21RecordBuilder()..update(updates))._build();

  _$DayChallenge21Record._(
      {this.uid,
      this.date,
      this.completed,
      this.task1,
      this.task2,
      this.task3,
      this.task4,
      this.day,
      this.label,
      this.dayChallengeFromRef,
      this.dayChallengeID,
      this.is90,
      this.ffRef})
      : super._();

  @override
  DayChallenge21Record rebuild(
          void Function(DayChallenge21RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DayChallenge21RecordBuilder toBuilder() =>
      new DayChallenge21RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DayChallenge21Record &&
        uid == other.uid &&
        date == other.date &&
        completed == other.completed &&
        task1 == other.task1 &&
        task2 == other.task2 &&
        task3 == other.task3 &&
        task4 == other.task4 &&
        day == other.day &&
        label == other.label &&
        dayChallengeFromRef == other.dayChallengeFromRef &&
        dayChallengeID == other.dayChallengeID &&
        is90 == other.is90 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, uid.hashCode),
                                                    date.hashCode),
                                                completed.hashCode),
                                            task1.hashCode),
                                        task2.hashCode),
                                    task3.hashCode),
                                task4.hashCode),
                            day.hashCode),
                        label.hashCode),
                    dayChallengeFromRef.hashCode),
                dayChallengeID.hashCode),
            is90.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DayChallenge21Record')
          ..add('uid', uid)
          ..add('date', date)
          ..add('completed', completed)
          ..add('task1', task1)
          ..add('task2', task2)
          ..add('task3', task3)
          ..add('task4', task4)
          ..add('day', day)
          ..add('label', label)
          ..add('dayChallengeFromRef', dayChallengeFromRef)
          ..add('dayChallengeID', dayChallengeID)
          ..add('is90', is90)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DayChallenge21RecordBuilder
    implements Builder<DayChallenge21Record, DayChallenge21RecordBuilder> {
  _$DayChallenge21Record? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  bool? _task1;
  bool? get task1 => _$this._task1;
  set task1(bool? task1) => _$this._task1 = task1;

  bool? _task2;
  bool? get task2 => _$this._task2;
  set task2(bool? task2) => _$this._task2 = task2;

  bool? _task3;
  bool? get task3 => _$this._task3;
  set task3(bool? task3) => _$this._task3 = task3;

  bool? _task4;
  bool? get task4 => _$this._task4;
  set task4(bool? task4) => _$this._task4 = task4;

  String? _day;
  String? get day => _$this._day;
  set day(String? day) => _$this._day = day;

  int? _label;
  int? get label => _$this._label;
  set label(int? label) => _$this._label = label;

  DocumentReference<Object?>? _dayChallengeFromRef;
  DocumentReference<Object?>? get dayChallengeFromRef =>
      _$this._dayChallengeFromRef;
  set dayChallengeFromRef(DocumentReference<Object?>? dayChallengeFromRef) =>
      _$this._dayChallengeFromRef = dayChallengeFromRef;

  String? _dayChallengeID;
  String? get dayChallengeID => _$this._dayChallengeID;
  set dayChallengeID(String? dayChallengeID) =>
      _$this._dayChallengeID = dayChallengeID;

  bool? _is90;
  bool? get is90 => _$this._is90;
  set is90(bool? is90) => _$this._is90 = is90;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DayChallenge21RecordBuilder() {
    DayChallenge21Record._initializeBuilder(this);
  }

  DayChallenge21RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _date = $v.date;
      _completed = $v.completed;
      _task1 = $v.task1;
      _task2 = $v.task2;
      _task3 = $v.task3;
      _task4 = $v.task4;
      _day = $v.day;
      _label = $v.label;
      _dayChallengeFromRef = $v.dayChallengeFromRef;
      _dayChallengeID = $v.dayChallengeID;
      _is90 = $v.is90;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DayChallenge21Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DayChallenge21Record;
  }

  @override
  void update(void Function(DayChallenge21RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DayChallenge21Record build() => _build();

  _$DayChallenge21Record _build() {
    final _$result = _$v ??
        new _$DayChallenge21Record._(
            uid: uid,
            date: date,
            completed: completed,
            task1: task1,
            task2: task2,
            task3: task3,
            task4: task4,
            day: day,
            label: label,
            dayChallengeFromRef: dayChallengeFromRef,
            dayChallengeID: dayChallengeID,
            is90: is90,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
