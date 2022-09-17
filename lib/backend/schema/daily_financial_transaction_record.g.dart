// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_financial_transaction_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyFinancialTransactionRecord>
    _$dailyFinancialTransactionRecordSerializer =
    new _$DailyFinancialTransactionRecordSerializer();

class _$DailyFinancialTransactionRecordSerializer
    implements StructuredSerializer<DailyFinancialTransactionRecord> {
  @override
  final Iterable<Type> types = const [
    DailyFinancialTransactionRecord,
    _$DailyFinancialTransactionRecord
  ];
  @override
  final String wireName = 'DailyFinancialTransactionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DailyFinancialTransactionRecord object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.wantsOrNeeds;
    if (value != null) {
      result
        ..add('wants_or_needs')
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
    value = object.spendAt;
    if (value != null) {
      result
        ..add('spendAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.businessOrPersonal;
    if (value != null) {
      result
        ..add('business_or_personal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isMoneyOut;
    if (value != null) {
      result
        ..add('isMoneyOut')
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
  DailyFinancialTransactionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyFinancialTransactionRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'wants_or_needs':
          result.wantsOrNeeds = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'spendAt':
          result.spendAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'business_or_personal':
          result.businessOrPersonal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isMoneyOut':
          result.isMoneyOut = serializers.deserialize(value,
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

class _$DailyFinancialTransactionRecord
    extends DailyFinancialTransactionRecord {
  @override
  final String? uid;
  @override
  final String? description;
  @override
  final double? amount;
  @override
  final String? wantsOrNeeds;
  @override
  final DateTime? date;
  @override
  final String? spendAt;
  @override
  final String? businessOrPersonal;
  @override
  final bool? isMoneyOut;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DailyFinancialTransactionRecord(
          [void Function(DailyFinancialTransactionRecordBuilder)? updates]) =>
      (new DailyFinancialTransactionRecordBuilder()..update(updates))._build();

  _$DailyFinancialTransactionRecord._(
      {this.uid,
      this.description,
      this.amount,
      this.wantsOrNeeds,
      this.date,
      this.spendAt,
      this.businessOrPersonal,
      this.isMoneyOut,
      this.ffRef})
      : super._();

  @override
  DailyFinancialTransactionRecord rebuild(
          void Function(DailyFinancialTransactionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyFinancialTransactionRecordBuilder toBuilder() =>
      new DailyFinancialTransactionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyFinancialTransactionRecord &&
        uid == other.uid &&
        description == other.description &&
        amount == other.amount &&
        wantsOrNeeds == other.wantsOrNeeds &&
        date == other.date &&
        spendAt == other.spendAt &&
        businessOrPersonal == other.businessOrPersonal &&
        isMoneyOut == other.isMoneyOut &&
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
                            $jc($jc($jc(0, uid.hashCode), description.hashCode),
                                amount.hashCode),
                            wantsOrNeeds.hashCode),
                        date.hashCode),
                    spendAt.hashCode),
                businessOrPersonal.hashCode),
            isMoneyOut.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyFinancialTransactionRecord')
          ..add('uid', uid)
          ..add('description', description)
          ..add('amount', amount)
          ..add('wantsOrNeeds', wantsOrNeeds)
          ..add('date', date)
          ..add('spendAt', spendAt)
          ..add('businessOrPersonal', businessOrPersonal)
          ..add('isMoneyOut', isMoneyOut)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DailyFinancialTransactionRecordBuilder
    implements
        Builder<DailyFinancialTransactionRecord,
            DailyFinancialTransactionRecordBuilder> {
  _$DailyFinancialTransactionRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _wantsOrNeeds;
  String? get wantsOrNeeds => _$this._wantsOrNeeds;
  set wantsOrNeeds(String? wantsOrNeeds) => _$this._wantsOrNeeds = wantsOrNeeds;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _spendAt;
  String? get spendAt => _$this._spendAt;
  set spendAt(String? spendAt) => _$this._spendAt = spendAt;

  String? _businessOrPersonal;
  String? get businessOrPersonal => _$this._businessOrPersonal;
  set businessOrPersonal(String? businessOrPersonal) =>
      _$this._businessOrPersonal = businessOrPersonal;

  bool? _isMoneyOut;
  bool? get isMoneyOut => _$this._isMoneyOut;
  set isMoneyOut(bool? isMoneyOut) => _$this._isMoneyOut = isMoneyOut;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DailyFinancialTransactionRecordBuilder() {
    DailyFinancialTransactionRecord._initializeBuilder(this);
  }

  DailyFinancialTransactionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _description = $v.description;
      _amount = $v.amount;
      _wantsOrNeeds = $v.wantsOrNeeds;
      _date = $v.date;
      _spendAt = $v.spendAt;
      _businessOrPersonal = $v.businessOrPersonal;
      _isMoneyOut = $v.isMoneyOut;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyFinancialTransactionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyFinancialTransactionRecord;
  }

  @override
  void update(void Function(DailyFinancialTransactionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyFinancialTransactionRecord build() => _build();

  _$DailyFinancialTransactionRecord _build() {
    final _$result = _$v ??
        new _$DailyFinancialTransactionRecord._(
            uid: uid,
            description: description,
            amount: amount,
            wantsOrNeeds: wantsOrNeeds,
            date: date,
            spendAt: spendAt,
            businessOrPersonal: businessOrPersonal,
            isMoneyOut: isMoneyOut,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
