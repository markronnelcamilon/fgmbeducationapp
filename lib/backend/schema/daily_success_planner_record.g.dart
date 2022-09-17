// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_success_planner_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailySuccessPlannerRecord> _$dailySuccessPlannerRecordSerializer =
    new _$DailySuccessPlannerRecordSerializer();

class _$DailySuccessPlannerRecordSerializer
    implements StructuredSerializer<DailySuccessPlannerRecord> {
  @override
  final Iterable<Type> types = const [
    DailySuccessPlannerRecord,
    _$DailySuccessPlannerRecord
  ];
  @override
  final String wireName = 'DailySuccessPlannerRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DailySuccessPlannerRecord object,
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
    value = object.greatfulFor;
    if (value != null) {
      result
        ..add('greatful_for')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iThanGodFor;
    if (value != null) {
      result
        ..add('i_than_god_for')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dailyAffirmatin;
    if (value != null) {
      result
        ..add('daily_affirmatin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.didWinTheDay;
    if (value != null) {
      result
        ..add('did_win_the_day')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.writeDownGoals;
    if (value != null) {
      result
        ..add('write_down_goals')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.readTenPages;
    if (value != null) {
      result
        ..add('read_ten_pages')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.targetDetail01;
    if (value != null) {
      result
        ..add('target_detail01')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.targetDetail02;
    if (value != null) {
      result
        ..add('target_detail02')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.targetDetail03;
    if (value != null) {
      result
        ..add('target_detail03')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.targetDetail04;
    if (value != null) {
      result
        ..add('target_detail04')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.targetDetail05;
    if (value != null) {
      result
        ..add('target_detail05')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.task01;
    if (value != null) {
      result
        ..add('task01')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.task02;
    if (value != null) {
      result
        ..add('task02')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.task03;
    if (value != null) {
      result
        ..add('task03')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.task04;
    if (value != null) {
      result
        ..add('task04')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.task05;
    if (value != null) {
      result
        ..add('task05')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.quarterlyGoal;
    if (value != null) {
      result
        ..add('quarterly_goal')
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
  DailySuccessPlannerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailySuccessPlannerRecordBuilder();

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
        case 'greatful_for':
          result.greatfulFor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'i_than_god_for':
          result.iThanGodFor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'daily_affirmatin':
          result.dailyAffirmatin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'did_win_the_day':
          result.didWinTheDay = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'write_down_goals':
          result.writeDownGoals = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'read_ten_pages':
          result.readTenPages = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'target_detail01':
          result.targetDetail01 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'target_detail02':
          result.targetDetail02 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'target_detail03':
          result.targetDetail03 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'target_detail04':
          result.targetDetail04 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'target_detail05':
          result.targetDetail05 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'task01':
          result.task01 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'task02':
          result.task02 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'task03':
          result.task03 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'task04':
          result.task04 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'task05':
          result.task05 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'quarterly_goal':
          result.quarterlyGoal = serializers.deserialize(value,
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

class _$DailySuccessPlannerRecord extends DailySuccessPlannerRecord {
  @override
  final String? uid;
  @override
  final DateTime? date;
  @override
  final String? greatfulFor;
  @override
  final String? iThanGodFor;
  @override
  final String? dailyAffirmatin;
  @override
  final bool? didWinTheDay;
  @override
  final bool? writeDownGoals;
  @override
  final bool? readTenPages;
  @override
  final String? targetDetail01;
  @override
  final String? targetDetail02;
  @override
  final String? targetDetail03;
  @override
  final String? targetDetail04;
  @override
  final String? targetDetail05;
  @override
  final bool? task01;
  @override
  final bool? task02;
  @override
  final bool? task03;
  @override
  final bool? task04;
  @override
  final bool? task05;
  @override
  final String? quarterlyGoal;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DailySuccessPlannerRecord(
          [void Function(DailySuccessPlannerRecordBuilder)? updates]) =>
      (new DailySuccessPlannerRecordBuilder()..update(updates))._build();

  _$DailySuccessPlannerRecord._(
      {this.uid,
      this.date,
      this.greatfulFor,
      this.iThanGodFor,
      this.dailyAffirmatin,
      this.didWinTheDay,
      this.writeDownGoals,
      this.readTenPages,
      this.targetDetail01,
      this.targetDetail02,
      this.targetDetail03,
      this.targetDetail04,
      this.targetDetail05,
      this.task01,
      this.task02,
      this.task03,
      this.task04,
      this.task05,
      this.quarterlyGoal,
      this.ffRef})
      : super._();

  @override
  DailySuccessPlannerRecord rebuild(
          void Function(DailySuccessPlannerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailySuccessPlannerRecordBuilder toBuilder() =>
      new DailySuccessPlannerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailySuccessPlannerRecord &&
        uid == other.uid &&
        date == other.date &&
        greatfulFor == other.greatfulFor &&
        iThanGodFor == other.iThanGodFor &&
        dailyAffirmatin == other.dailyAffirmatin &&
        didWinTheDay == other.didWinTheDay &&
        writeDownGoals == other.writeDownGoals &&
        readTenPages == other.readTenPages &&
        targetDetail01 == other.targetDetail01 &&
        targetDetail02 == other.targetDetail02 &&
        targetDetail03 == other.targetDetail03 &&
        targetDetail04 == other.targetDetail04 &&
        targetDetail05 == other.targetDetail05 &&
        task01 == other.task01 &&
        task02 == other.task02 &&
        task03 == other.task03 &&
        task04 == other.task04 &&
        task05 == other.task05 &&
        quarterlyGoal == other.quarterlyGoal &&
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                $jc(
                                                                                    0,
                                                                                    uid
                                                                                        .hashCode),
                                                                                date
                                                                                    .hashCode),
                                                                            greatfulFor
                                                                                .hashCode),
                                                                        iThanGodFor
                                                                            .hashCode),
                                                                    dailyAffirmatin
                                                                        .hashCode),
                                                                didWinTheDay
                                                                    .hashCode),
                                                            writeDownGoals
                                                                .hashCode),
                                                        readTenPages.hashCode),
                                                    targetDetail01.hashCode),
                                                targetDetail02.hashCode),
                                            targetDetail03.hashCode),
                                        targetDetail04.hashCode),
                                    targetDetail05.hashCode),
                                task01.hashCode),
                            task02.hashCode),
                        task03.hashCode),
                    task04.hashCode),
                task05.hashCode),
            quarterlyGoal.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailySuccessPlannerRecord')
          ..add('uid', uid)
          ..add('date', date)
          ..add('greatfulFor', greatfulFor)
          ..add('iThanGodFor', iThanGodFor)
          ..add('dailyAffirmatin', dailyAffirmatin)
          ..add('didWinTheDay', didWinTheDay)
          ..add('writeDownGoals', writeDownGoals)
          ..add('readTenPages', readTenPages)
          ..add('targetDetail01', targetDetail01)
          ..add('targetDetail02', targetDetail02)
          ..add('targetDetail03', targetDetail03)
          ..add('targetDetail04', targetDetail04)
          ..add('targetDetail05', targetDetail05)
          ..add('task01', task01)
          ..add('task02', task02)
          ..add('task03', task03)
          ..add('task04', task04)
          ..add('task05', task05)
          ..add('quarterlyGoal', quarterlyGoal)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DailySuccessPlannerRecordBuilder
    implements
        Builder<DailySuccessPlannerRecord, DailySuccessPlannerRecordBuilder> {
  _$DailySuccessPlannerRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _greatfulFor;
  String? get greatfulFor => _$this._greatfulFor;
  set greatfulFor(String? greatfulFor) => _$this._greatfulFor = greatfulFor;

  String? _iThanGodFor;
  String? get iThanGodFor => _$this._iThanGodFor;
  set iThanGodFor(String? iThanGodFor) => _$this._iThanGodFor = iThanGodFor;

  String? _dailyAffirmatin;
  String? get dailyAffirmatin => _$this._dailyAffirmatin;
  set dailyAffirmatin(String? dailyAffirmatin) =>
      _$this._dailyAffirmatin = dailyAffirmatin;

  bool? _didWinTheDay;
  bool? get didWinTheDay => _$this._didWinTheDay;
  set didWinTheDay(bool? didWinTheDay) => _$this._didWinTheDay = didWinTheDay;

  bool? _writeDownGoals;
  bool? get writeDownGoals => _$this._writeDownGoals;
  set writeDownGoals(bool? writeDownGoals) =>
      _$this._writeDownGoals = writeDownGoals;

  bool? _readTenPages;
  bool? get readTenPages => _$this._readTenPages;
  set readTenPages(bool? readTenPages) => _$this._readTenPages = readTenPages;

  String? _targetDetail01;
  String? get targetDetail01 => _$this._targetDetail01;
  set targetDetail01(String? targetDetail01) =>
      _$this._targetDetail01 = targetDetail01;

  String? _targetDetail02;
  String? get targetDetail02 => _$this._targetDetail02;
  set targetDetail02(String? targetDetail02) =>
      _$this._targetDetail02 = targetDetail02;

  String? _targetDetail03;
  String? get targetDetail03 => _$this._targetDetail03;
  set targetDetail03(String? targetDetail03) =>
      _$this._targetDetail03 = targetDetail03;

  String? _targetDetail04;
  String? get targetDetail04 => _$this._targetDetail04;
  set targetDetail04(String? targetDetail04) =>
      _$this._targetDetail04 = targetDetail04;

  String? _targetDetail05;
  String? get targetDetail05 => _$this._targetDetail05;
  set targetDetail05(String? targetDetail05) =>
      _$this._targetDetail05 = targetDetail05;

  bool? _task01;
  bool? get task01 => _$this._task01;
  set task01(bool? task01) => _$this._task01 = task01;

  bool? _task02;
  bool? get task02 => _$this._task02;
  set task02(bool? task02) => _$this._task02 = task02;

  bool? _task03;
  bool? get task03 => _$this._task03;
  set task03(bool? task03) => _$this._task03 = task03;

  bool? _task04;
  bool? get task04 => _$this._task04;
  set task04(bool? task04) => _$this._task04 = task04;

  bool? _task05;
  bool? get task05 => _$this._task05;
  set task05(bool? task05) => _$this._task05 = task05;

  String? _quarterlyGoal;
  String? get quarterlyGoal => _$this._quarterlyGoal;
  set quarterlyGoal(String? quarterlyGoal) =>
      _$this._quarterlyGoal = quarterlyGoal;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DailySuccessPlannerRecordBuilder() {
    DailySuccessPlannerRecord._initializeBuilder(this);
  }

  DailySuccessPlannerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _date = $v.date;
      _greatfulFor = $v.greatfulFor;
      _iThanGodFor = $v.iThanGodFor;
      _dailyAffirmatin = $v.dailyAffirmatin;
      _didWinTheDay = $v.didWinTheDay;
      _writeDownGoals = $v.writeDownGoals;
      _readTenPages = $v.readTenPages;
      _targetDetail01 = $v.targetDetail01;
      _targetDetail02 = $v.targetDetail02;
      _targetDetail03 = $v.targetDetail03;
      _targetDetail04 = $v.targetDetail04;
      _targetDetail05 = $v.targetDetail05;
      _task01 = $v.task01;
      _task02 = $v.task02;
      _task03 = $v.task03;
      _task04 = $v.task04;
      _task05 = $v.task05;
      _quarterlyGoal = $v.quarterlyGoal;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailySuccessPlannerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailySuccessPlannerRecord;
  }

  @override
  void update(void Function(DailySuccessPlannerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailySuccessPlannerRecord build() => _build();

  _$DailySuccessPlannerRecord _build() {
    final _$result = _$v ??
        new _$DailySuccessPlannerRecord._(
            uid: uid,
            date: date,
            greatfulFor: greatfulFor,
            iThanGodFor: iThanGodFor,
            dailyAffirmatin: dailyAffirmatin,
            didWinTheDay: didWinTheDay,
            writeDownGoals: writeDownGoals,
            readTenPages: readTenPages,
            targetDetail01: targetDetail01,
            targetDetail02: targetDetail02,
            targetDetail03: targetDetail03,
            targetDetail04: targetDetail04,
            targetDetail05: targetDetail05,
            task01: task01,
            task02: task02,
            task03: task03,
            task04: task04,
            task05: task05,
            quarterlyGoal: quarterlyGoal,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
