// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task21_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Task21Record> _$task21RecordSerializer =
    new _$Task21RecordSerializer();

class _$Task21RecordSerializer implements StructuredSerializer<Task21Record> {
  @override
  final Iterable<Type> types = const [Task21Record, _$Task21Record];
  @override
  final String wireName = 'Task21Record';

  @override
  Iterable<Object?> serialize(Serializers serializers, Task21Record object,
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
    value = object.taskName;
    if (value != null) {
      result
        ..add('taskName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.taskState;
    if (value != null) {
      result
        ..add('taskState')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.subscriptionId;
    if (value != null) {
      result
        ..add('subscription_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.challengeList21;
    if (value != null) {
      result
        ..add('challengeList21')
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
  Task21Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Task21RecordBuilder();

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
        case 'taskName':
          result.taskName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'taskState':
          result.taskState = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'subscription_id':
          result.subscriptionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'challengeList21':
          result.challengeList21 = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'dayChallengeID':
          result.dayChallengeID = serializers.deserialize(value,
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

class _$Task21Record extends Task21Record {
  @override
  final String? uid;
  @override
  final String? taskName;
  @override
  final bool? taskState;
  @override
  final String? subscriptionId;
  @override
  final int? label;
  @override
  final String? day;
  @override
  final DocumentReference<Object?>? challengeList21;
  @override
  final String? dayChallengeID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$Task21Record([void Function(Task21RecordBuilder)? updates]) =>
      (new Task21RecordBuilder()..update(updates))._build();

  _$Task21Record._(
      {this.uid,
      this.taskName,
      this.taskState,
      this.subscriptionId,
      this.label,
      this.day,
      this.challengeList21,
      this.dayChallengeID,
      this.ffRef})
      : super._();

  @override
  Task21Record rebuild(void Function(Task21RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Task21RecordBuilder toBuilder() => new Task21RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Task21Record &&
        uid == other.uid &&
        taskName == other.taskName &&
        taskState == other.taskState &&
        subscriptionId == other.subscriptionId &&
        label == other.label &&
        day == other.day &&
        challengeList21 == other.challengeList21 &&
        dayChallengeID == other.dayChallengeID &&
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
                            $jc($jc($jc(0, uid.hashCode), taskName.hashCode),
                                taskState.hashCode),
                            subscriptionId.hashCode),
                        label.hashCode),
                    day.hashCode),
                challengeList21.hashCode),
            dayChallengeID.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Task21Record')
          ..add('uid', uid)
          ..add('taskName', taskName)
          ..add('taskState', taskState)
          ..add('subscriptionId', subscriptionId)
          ..add('label', label)
          ..add('day', day)
          ..add('challengeList21', challengeList21)
          ..add('dayChallengeID', dayChallengeID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class Task21RecordBuilder
    implements Builder<Task21Record, Task21RecordBuilder> {
  _$Task21Record? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _taskName;
  String? get taskName => _$this._taskName;
  set taskName(String? taskName) => _$this._taskName = taskName;

  bool? _taskState;
  bool? get taskState => _$this._taskState;
  set taskState(bool? taskState) => _$this._taskState = taskState;

  String? _subscriptionId;
  String? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(String? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  int? _label;
  int? get label => _$this._label;
  set label(int? label) => _$this._label = label;

  String? _day;
  String? get day => _$this._day;
  set day(String? day) => _$this._day = day;

  DocumentReference<Object?>? _challengeList21;
  DocumentReference<Object?>? get challengeList21 => _$this._challengeList21;
  set challengeList21(DocumentReference<Object?>? challengeList21) =>
      _$this._challengeList21 = challengeList21;

  String? _dayChallengeID;
  String? get dayChallengeID => _$this._dayChallengeID;
  set dayChallengeID(String? dayChallengeID) =>
      _$this._dayChallengeID = dayChallengeID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  Task21RecordBuilder() {
    Task21Record._initializeBuilder(this);
  }

  Task21RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _taskName = $v.taskName;
      _taskState = $v.taskState;
      _subscriptionId = $v.subscriptionId;
      _label = $v.label;
      _day = $v.day;
      _challengeList21 = $v.challengeList21;
      _dayChallengeID = $v.dayChallengeID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Task21Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Task21Record;
  }

  @override
  void update(void Function(Task21RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Task21Record build() => _build();

  _$Task21Record _build() {
    final _$result = _$v ??
        new _$Task21Record._(
            uid: uid,
            taskName: taskName,
            taskState: taskState,
            subscriptionId: subscriptionId,
            label: label,
            day: day,
            challengeList21: challengeList21,
            dayChallengeID: dayChallengeID,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
