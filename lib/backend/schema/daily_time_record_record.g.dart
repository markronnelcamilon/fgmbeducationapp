// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_time_record_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyTimeRecordRecord> _$dailyTimeRecordRecordSerializer =
    new _$DailyTimeRecordRecordSerializer();

class _$DailyTimeRecordRecordSerializer
    implements StructuredSerializer<DailyTimeRecordRecord> {
  @override
  final Iterable<Type> types = const [
    DailyTimeRecordRecord,
    _$DailyTimeRecordRecord
  ];
  @override
  final String wireName = 'DailyTimeRecordRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DailyTimeRecordRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fiveAm;
    if (value != null) {
      result
        ..add('five_am')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sixAm;
    if (value != null) {
      result
        ..add('six_am')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sevenAm;
    if (value != null) {
      result
        ..add('seven_am')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eightAm;
    if (value != null) {
      result
        ..add('eight_am')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nineAm;
    if (value != null) {
      result
        ..add('nine_am')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tenAm;
    if (value != null) {
      result
        ..add('ten_am')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.elevenAm;
    if (value != null) {
      result
        ..add('eleven_am')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twelvePm;
    if (value != null) {
      result
        ..add('twelve_pm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onePm;
    if (value != null) {
      result
        ..add('one_pm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twoPm;
    if (value != null) {
      result
        ..add('two_pm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.threePm;
    if (value != null) {
      result
        ..add('three_pm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fourPm;
    if (value != null) {
      result
        ..add('four_pm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fivePm;
    if (value != null) {
      result
        ..add('five_pm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sixPm;
    if (value != null) {
      result
        ..add('six_pm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sevenPm;
    if (value != null) {
      result
        ..add('seven_pm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eightPm;
    if (value != null) {
      result
        ..add('eight_pm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ninePm;
    if (value != null) {
      result
        ..add('nine_pm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tenPm;
    if (value != null) {
      result
        ..add('ten_pm')
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
  DailyTimeRecordRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyTimeRecordRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'five_am':
          result.fiveAm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'six_am':
          result.sixAm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seven_am':
          result.sevenAm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eight_am':
          result.eightAm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nine_am':
          result.nineAm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ten_am':
          result.tenAm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eleven_am':
          result.elevenAm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'twelve_pm':
          result.twelvePm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'one_pm':
          result.onePm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'two_pm':
          result.twoPm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'three_pm':
          result.threePm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'four_pm':
          result.fourPm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'five_pm':
          result.fivePm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'six_pm':
          result.sixPm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seven_pm':
          result.sevenPm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eight_pm':
          result.eightPm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nine_pm':
          result.ninePm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ten_pm':
          result.tenPm = serializers.deserialize(value,
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

class _$DailyTimeRecordRecord extends DailyTimeRecordRecord {
  @override
  final String? fiveAm;
  @override
  final String? sixAm;
  @override
  final String? sevenAm;
  @override
  final String? eightAm;
  @override
  final String? nineAm;
  @override
  final String? tenAm;
  @override
  final String? elevenAm;
  @override
  final String? twelvePm;
  @override
  final String? onePm;
  @override
  final String? twoPm;
  @override
  final String? threePm;
  @override
  final String? fourPm;
  @override
  final String? fivePm;
  @override
  final String? sixPm;
  @override
  final String? sevenPm;
  @override
  final String? eightPm;
  @override
  final String? ninePm;
  @override
  final String? tenPm;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DailyTimeRecordRecord(
          [void Function(DailyTimeRecordRecordBuilder)? updates]) =>
      (new DailyTimeRecordRecordBuilder()..update(updates))._build();

  _$DailyTimeRecordRecord._(
      {this.fiveAm,
      this.sixAm,
      this.sevenAm,
      this.eightAm,
      this.nineAm,
      this.tenAm,
      this.elevenAm,
      this.twelvePm,
      this.onePm,
      this.twoPm,
      this.threePm,
      this.fourPm,
      this.fivePm,
      this.sixPm,
      this.sevenPm,
      this.eightPm,
      this.ninePm,
      this.tenPm,
      this.ffRef})
      : super._();

  @override
  DailyTimeRecordRecord rebuild(
          void Function(DailyTimeRecordRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyTimeRecordRecordBuilder toBuilder() =>
      new DailyTimeRecordRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyTimeRecordRecord &&
        fiveAm == other.fiveAm &&
        sixAm == other.sixAm &&
        sevenAm == other.sevenAm &&
        eightAm == other.eightAm &&
        nineAm == other.nineAm &&
        tenAm == other.tenAm &&
        elevenAm == other.elevenAm &&
        twelvePm == other.twelvePm &&
        onePm == other.onePm &&
        twoPm == other.twoPm &&
        threePm == other.threePm &&
        fourPm == other.fourPm &&
        fivePm == other.fivePm &&
        sixPm == other.sixPm &&
        sevenPm == other.sevenPm &&
        eightPm == other.eightPm &&
        ninePm == other.ninePm &&
        tenPm == other.tenPm &&
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
                                                                                0,
                                                                                fiveAm
                                                                                    .hashCode),
                                                                            sixAm
                                                                                .hashCode),
                                                                        sevenAm
                                                                            .hashCode),
                                                                    eightAm
                                                                        .hashCode),
                                                                nineAm
                                                                    .hashCode),
                                                            tenAm.hashCode),
                                                        elevenAm.hashCode),
                                                    twelvePm.hashCode),
                                                onePm.hashCode),
                                            twoPm.hashCode),
                                        threePm.hashCode),
                                    fourPm.hashCode),
                                fivePm.hashCode),
                            sixPm.hashCode),
                        sevenPm.hashCode),
                    eightPm.hashCode),
                ninePm.hashCode),
            tenPm.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyTimeRecordRecord')
          ..add('fiveAm', fiveAm)
          ..add('sixAm', sixAm)
          ..add('sevenAm', sevenAm)
          ..add('eightAm', eightAm)
          ..add('nineAm', nineAm)
          ..add('tenAm', tenAm)
          ..add('elevenAm', elevenAm)
          ..add('twelvePm', twelvePm)
          ..add('onePm', onePm)
          ..add('twoPm', twoPm)
          ..add('threePm', threePm)
          ..add('fourPm', fourPm)
          ..add('fivePm', fivePm)
          ..add('sixPm', sixPm)
          ..add('sevenPm', sevenPm)
          ..add('eightPm', eightPm)
          ..add('ninePm', ninePm)
          ..add('tenPm', tenPm)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DailyTimeRecordRecordBuilder
    implements Builder<DailyTimeRecordRecord, DailyTimeRecordRecordBuilder> {
  _$DailyTimeRecordRecord? _$v;

  String? _fiveAm;
  String? get fiveAm => _$this._fiveAm;
  set fiveAm(String? fiveAm) => _$this._fiveAm = fiveAm;

  String? _sixAm;
  String? get sixAm => _$this._sixAm;
  set sixAm(String? sixAm) => _$this._sixAm = sixAm;

  String? _sevenAm;
  String? get sevenAm => _$this._sevenAm;
  set sevenAm(String? sevenAm) => _$this._sevenAm = sevenAm;

  String? _eightAm;
  String? get eightAm => _$this._eightAm;
  set eightAm(String? eightAm) => _$this._eightAm = eightAm;

  String? _nineAm;
  String? get nineAm => _$this._nineAm;
  set nineAm(String? nineAm) => _$this._nineAm = nineAm;

  String? _tenAm;
  String? get tenAm => _$this._tenAm;
  set tenAm(String? tenAm) => _$this._tenAm = tenAm;

  String? _elevenAm;
  String? get elevenAm => _$this._elevenAm;
  set elevenAm(String? elevenAm) => _$this._elevenAm = elevenAm;

  String? _twelvePm;
  String? get twelvePm => _$this._twelvePm;
  set twelvePm(String? twelvePm) => _$this._twelvePm = twelvePm;

  String? _onePm;
  String? get onePm => _$this._onePm;
  set onePm(String? onePm) => _$this._onePm = onePm;

  String? _twoPm;
  String? get twoPm => _$this._twoPm;
  set twoPm(String? twoPm) => _$this._twoPm = twoPm;

  String? _threePm;
  String? get threePm => _$this._threePm;
  set threePm(String? threePm) => _$this._threePm = threePm;

  String? _fourPm;
  String? get fourPm => _$this._fourPm;
  set fourPm(String? fourPm) => _$this._fourPm = fourPm;

  String? _fivePm;
  String? get fivePm => _$this._fivePm;
  set fivePm(String? fivePm) => _$this._fivePm = fivePm;

  String? _sixPm;
  String? get sixPm => _$this._sixPm;
  set sixPm(String? sixPm) => _$this._sixPm = sixPm;

  String? _sevenPm;
  String? get sevenPm => _$this._sevenPm;
  set sevenPm(String? sevenPm) => _$this._sevenPm = sevenPm;

  String? _eightPm;
  String? get eightPm => _$this._eightPm;
  set eightPm(String? eightPm) => _$this._eightPm = eightPm;

  String? _ninePm;
  String? get ninePm => _$this._ninePm;
  set ninePm(String? ninePm) => _$this._ninePm = ninePm;

  String? _tenPm;
  String? get tenPm => _$this._tenPm;
  set tenPm(String? tenPm) => _$this._tenPm = tenPm;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DailyTimeRecordRecordBuilder() {
    DailyTimeRecordRecord._initializeBuilder(this);
  }

  DailyTimeRecordRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fiveAm = $v.fiveAm;
      _sixAm = $v.sixAm;
      _sevenAm = $v.sevenAm;
      _eightAm = $v.eightAm;
      _nineAm = $v.nineAm;
      _tenAm = $v.tenAm;
      _elevenAm = $v.elevenAm;
      _twelvePm = $v.twelvePm;
      _onePm = $v.onePm;
      _twoPm = $v.twoPm;
      _threePm = $v.threePm;
      _fourPm = $v.fourPm;
      _fivePm = $v.fivePm;
      _sixPm = $v.sixPm;
      _sevenPm = $v.sevenPm;
      _eightPm = $v.eightPm;
      _ninePm = $v.ninePm;
      _tenPm = $v.tenPm;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyTimeRecordRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyTimeRecordRecord;
  }

  @override
  void update(void Function(DailyTimeRecordRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyTimeRecordRecord build() => _build();

  _$DailyTimeRecordRecord _build() {
    final _$result = _$v ??
        new _$DailyTimeRecordRecord._(
            fiveAm: fiveAm,
            sixAm: sixAm,
            sevenAm: sevenAm,
            eightAm: eightAm,
            nineAm: nineAm,
            tenAm: tenAm,
            elevenAm: elevenAm,
            twelvePm: twelvePm,
            onePm: onePm,
            twoPm: twoPm,
            threePm: threePm,
            fourPm: fourPm,
            fivePm: fivePm,
            sixPm: sixPm,
            sevenPm: sevenPm,
            eightPm: eightPm,
            ninePm: ninePm,
            tenPm: tenPm,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
