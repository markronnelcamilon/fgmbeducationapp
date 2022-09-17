// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_day21_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChallengeDay21Record> _$challengeDay21RecordSerializer =
    new _$ChallengeDay21RecordSerializer();

class _$ChallengeDay21RecordSerializer
    implements StructuredSerializer<ChallengeDay21Record> {
  @override
  final Iterable<Type> types = const [
    ChallengeDay21Record,
    _$ChallengeDay21Record
  ];
  @override
  final String wireName = 'ChallengeDay21Record';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ChallengeDay21Record object,
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
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate21;
    if (value != null) {
      result
        ..add('endDate21')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate90;
    if (value != null) {
      result
        ..add('endDate90')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ninetyDays;
    if (value != null) {
      result
        ..add('ninetyDays')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dayChallenge;
    if (value != null) {
      result
        ..add('dayChallenge')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.list21;
    if (value != null) {
      result
        ..add('list21')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.counter;
    if (value != null) {
      result
        ..add('counter')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isArchive;
    if (value != null) {
      result
        ..add('isArchive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dayChallengeID;
    if (value != null) {
      result
        ..add('dayChallengeID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.taskDone;
    if (value != null) {
      result
        ..add('taskDone')
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
  ChallengeDay21Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChallengeDay21RecordBuilder();

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
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endDate21':
          result.endDate21 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endDate90':
          result.endDate90 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ninetyDays':
          result.ninetyDays = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'dayChallenge':
          result.dayChallenge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'list21':
          result.list21 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'counter':
          result.counter = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isArchive':
          result.isArchive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'dayChallengeID':
          result.dayChallengeID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'taskDone':
          result.taskDone = serializers.deserialize(value,
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

class _$ChallengeDay21Record extends ChallengeDay21Record {
  @override
  final String? uid;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate21;
  @override
  final DateTime? endDate90;
  @override
  final bool? ninetyDays;
  @override
  final int? dayChallenge;
  @override
  final int? list21;
  @override
  final int? counter;
  @override
  final bool? isArchive;
  @override
  final String? dayChallengeID;
  @override
  final bool? taskDone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChallengeDay21Record(
          [void Function(ChallengeDay21RecordBuilder)? updates]) =>
      (new ChallengeDay21RecordBuilder()..update(updates))._build();

  _$ChallengeDay21Record._(
      {this.uid,
      this.startDate,
      this.endDate21,
      this.endDate90,
      this.ninetyDays,
      this.dayChallenge,
      this.list21,
      this.counter,
      this.isArchive,
      this.dayChallengeID,
      this.taskDone,
      this.ffRef})
      : super._();

  @override
  ChallengeDay21Record rebuild(
          void Function(ChallengeDay21RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChallengeDay21RecordBuilder toBuilder() =>
      new ChallengeDay21RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChallengeDay21Record &&
        uid == other.uid &&
        startDate == other.startDate &&
        endDate21 == other.endDate21 &&
        endDate90 == other.endDate90 &&
        ninetyDays == other.ninetyDays &&
        dayChallenge == other.dayChallenge &&
        list21 == other.list21 &&
        counter == other.counter &&
        isArchive == other.isArchive &&
        dayChallengeID == other.dayChallengeID &&
        taskDone == other.taskDone &&
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
                                            $jc($jc(0, uid.hashCode),
                                                startDate.hashCode),
                                            endDate21.hashCode),
                                        endDate90.hashCode),
                                    ninetyDays.hashCode),
                                dayChallenge.hashCode),
                            list21.hashCode),
                        counter.hashCode),
                    isArchive.hashCode),
                dayChallengeID.hashCode),
            taskDone.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChallengeDay21Record')
          ..add('uid', uid)
          ..add('startDate', startDate)
          ..add('endDate21', endDate21)
          ..add('endDate90', endDate90)
          ..add('ninetyDays', ninetyDays)
          ..add('dayChallenge', dayChallenge)
          ..add('list21', list21)
          ..add('counter', counter)
          ..add('isArchive', isArchive)
          ..add('dayChallengeID', dayChallengeID)
          ..add('taskDone', taskDone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChallengeDay21RecordBuilder
    implements Builder<ChallengeDay21Record, ChallengeDay21RecordBuilder> {
  _$ChallengeDay21Record? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate21;
  DateTime? get endDate21 => _$this._endDate21;
  set endDate21(DateTime? endDate21) => _$this._endDate21 = endDate21;

  DateTime? _endDate90;
  DateTime? get endDate90 => _$this._endDate90;
  set endDate90(DateTime? endDate90) => _$this._endDate90 = endDate90;

  bool? _ninetyDays;
  bool? get ninetyDays => _$this._ninetyDays;
  set ninetyDays(bool? ninetyDays) => _$this._ninetyDays = ninetyDays;

  int? _dayChallenge;
  int? get dayChallenge => _$this._dayChallenge;
  set dayChallenge(int? dayChallenge) => _$this._dayChallenge = dayChallenge;

  int? _list21;
  int? get list21 => _$this._list21;
  set list21(int? list21) => _$this._list21 = list21;

  int? _counter;
  int? get counter => _$this._counter;
  set counter(int? counter) => _$this._counter = counter;

  bool? _isArchive;
  bool? get isArchive => _$this._isArchive;
  set isArchive(bool? isArchive) => _$this._isArchive = isArchive;

  String? _dayChallengeID;
  String? get dayChallengeID => _$this._dayChallengeID;
  set dayChallengeID(String? dayChallengeID) =>
      _$this._dayChallengeID = dayChallengeID;

  bool? _taskDone;
  bool? get taskDone => _$this._taskDone;
  set taskDone(bool? taskDone) => _$this._taskDone = taskDone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChallengeDay21RecordBuilder() {
    ChallengeDay21Record._initializeBuilder(this);
  }

  ChallengeDay21RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _startDate = $v.startDate;
      _endDate21 = $v.endDate21;
      _endDate90 = $v.endDate90;
      _ninetyDays = $v.ninetyDays;
      _dayChallenge = $v.dayChallenge;
      _list21 = $v.list21;
      _counter = $v.counter;
      _isArchive = $v.isArchive;
      _dayChallengeID = $v.dayChallengeID;
      _taskDone = $v.taskDone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChallengeDay21Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChallengeDay21Record;
  }

  @override
  void update(void Function(ChallengeDay21RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChallengeDay21Record build() => _build();

  _$ChallengeDay21Record _build() {
    final _$result = _$v ??
        new _$ChallengeDay21Record._(
            uid: uid,
            startDate: startDate,
            endDate21: endDate21,
            endDate90: endDate90,
            ninetyDays: ninetyDays,
            dayChallenge: dayChallenge,
            list21: list21,
            counter: counter,
            isArchive: isArchive,
            dayChallengeID: dayChallengeID,
            taskDone: taskDone,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
