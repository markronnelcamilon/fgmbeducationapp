// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_financial_planner_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyFinancialPlannerRecord>
    _$dailyFinancialPlannerRecordSerializer =
    new _$DailyFinancialPlannerRecordSerializer();

class _$DailyFinancialPlannerRecordSerializer
    implements StructuredSerializer<DailyFinancialPlannerRecord> {
  @override
  final Iterable<Type> types = const [
    DailyFinancialPlannerRecord,
    _$DailyFinancialPlannerRecord
  ];
  @override
  final String wireName = 'DailyFinancialPlannerRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DailyFinancialPlannerRecord object,
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
    value = object.startingBalance;
    if (value != null) {
      result
        ..add('starting_balance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.totalSpending;
    if (value != null) {
      result
        ..add('total_spending')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.totalTransaction;
    if (value != null) {
      result
        ..add('total_transaction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.noOfWants;
    if (value != null) {
      result
        ..add('no_of_wants')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.noOfNeeds;
    if (value != null) {
      result
        ..add('no_of_needs')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.spendingWants;
    if (value != null) {
      result
        ..add('spending_wants')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.spendingNeeds;
    if (value != null) {
      result
        ..add('spending_needs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.endOfDayBalance;
    if (value != null) {
      result
        ..add('end_of_day_balance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.subscriptionId;
    if (value != null) {
      result
        ..add('subscription_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.spendingBusiness;
    if (value != null) {
      result
        ..add('spending_business')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.allowcationBusiness;
    if (value != null) {
      result
        ..add('allowcation_business')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.spendingPersonal;
    if (value != null) {
      result
        ..add('spending_personal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.allocationPersonal;
    if (value != null) {
      result
        ..add('allocation_personal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  DailyFinancialPlannerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyFinancialPlannerRecordBuilder();

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
        case 'starting_balance':
          result.startingBalance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'total_spending':
          result.totalSpending = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'total_transaction':
          result.totalTransaction = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'no_of_wants':
          result.noOfWants = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'no_of_needs':
          result.noOfNeeds = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'spending_wants':
          result.spendingWants = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'spending_needs':
          result.spendingNeeds = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'end_of_day_balance':
          result.endOfDayBalance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'subscription_id':
          result.subscriptionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'spending_business':
          result.spendingBusiness = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'allowcation_business':
          result.allowcationBusiness = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'spending_personal':
          result.spendingPersonal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'allocation_personal':
          result.allocationPersonal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$DailyFinancialPlannerRecord extends DailyFinancialPlannerRecord {
  @override
  final String? uid;
  @override
  final double? startingBalance;
  @override
  final double? totalSpending;
  @override
  final double? totalTransaction;
  @override
  final int? noOfWants;
  @override
  final int? noOfNeeds;
  @override
  final double? spendingWants;
  @override
  final double? spendingNeeds;
  @override
  final double? endOfDayBalance;
  @override
  final String? subscriptionId;
  @override
  final double? spendingBusiness;
  @override
  final double? allowcationBusiness;
  @override
  final double? spendingPersonal;
  @override
  final double? allocationPersonal;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DailyFinancialPlannerRecord(
          [void Function(DailyFinancialPlannerRecordBuilder)? updates]) =>
      (new DailyFinancialPlannerRecordBuilder()..update(updates))._build();

  _$DailyFinancialPlannerRecord._(
      {this.uid,
      this.startingBalance,
      this.totalSpending,
      this.totalTransaction,
      this.noOfWants,
      this.noOfNeeds,
      this.spendingWants,
      this.spendingNeeds,
      this.endOfDayBalance,
      this.subscriptionId,
      this.spendingBusiness,
      this.allowcationBusiness,
      this.spendingPersonal,
      this.allocationPersonal,
      this.ffRef})
      : super._();

  @override
  DailyFinancialPlannerRecord rebuild(
          void Function(DailyFinancialPlannerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyFinancialPlannerRecordBuilder toBuilder() =>
      new DailyFinancialPlannerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyFinancialPlannerRecord &&
        uid == other.uid &&
        startingBalance == other.startingBalance &&
        totalSpending == other.totalSpending &&
        totalTransaction == other.totalTransaction &&
        noOfWants == other.noOfWants &&
        noOfNeeds == other.noOfNeeds &&
        spendingWants == other.spendingWants &&
        spendingNeeds == other.spendingNeeds &&
        endOfDayBalance == other.endOfDayBalance &&
        subscriptionId == other.subscriptionId &&
        spendingBusiness == other.spendingBusiness &&
        allowcationBusiness == other.allowcationBusiness &&
        spendingPersonal == other.spendingPersonal &&
        allocationPersonal == other.allocationPersonal &&
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
                                                            $jc(0,
                                                                uid.hashCode),
                                                            startingBalance
                                                                .hashCode),
                                                        totalSpending.hashCode),
                                                    totalTransaction.hashCode),
                                                noOfWants.hashCode),
                                            noOfNeeds.hashCode),
                                        spendingWants.hashCode),
                                    spendingNeeds.hashCode),
                                endOfDayBalance.hashCode),
                            subscriptionId.hashCode),
                        spendingBusiness.hashCode),
                    allowcationBusiness.hashCode),
                spendingPersonal.hashCode),
            allocationPersonal.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyFinancialPlannerRecord')
          ..add('uid', uid)
          ..add('startingBalance', startingBalance)
          ..add('totalSpending', totalSpending)
          ..add('totalTransaction', totalTransaction)
          ..add('noOfWants', noOfWants)
          ..add('noOfNeeds', noOfNeeds)
          ..add('spendingWants', spendingWants)
          ..add('spendingNeeds', spendingNeeds)
          ..add('endOfDayBalance', endOfDayBalance)
          ..add('subscriptionId', subscriptionId)
          ..add('spendingBusiness', spendingBusiness)
          ..add('allowcationBusiness', allowcationBusiness)
          ..add('spendingPersonal', spendingPersonal)
          ..add('allocationPersonal', allocationPersonal)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DailyFinancialPlannerRecordBuilder
    implements
        Builder<DailyFinancialPlannerRecord,
            DailyFinancialPlannerRecordBuilder> {
  _$DailyFinancialPlannerRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  double? _startingBalance;
  double? get startingBalance => _$this._startingBalance;
  set startingBalance(double? startingBalance) =>
      _$this._startingBalance = startingBalance;

  double? _totalSpending;
  double? get totalSpending => _$this._totalSpending;
  set totalSpending(double? totalSpending) =>
      _$this._totalSpending = totalSpending;

  double? _totalTransaction;
  double? get totalTransaction => _$this._totalTransaction;
  set totalTransaction(double? totalTransaction) =>
      _$this._totalTransaction = totalTransaction;

  int? _noOfWants;
  int? get noOfWants => _$this._noOfWants;
  set noOfWants(int? noOfWants) => _$this._noOfWants = noOfWants;

  int? _noOfNeeds;
  int? get noOfNeeds => _$this._noOfNeeds;
  set noOfNeeds(int? noOfNeeds) => _$this._noOfNeeds = noOfNeeds;

  double? _spendingWants;
  double? get spendingWants => _$this._spendingWants;
  set spendingWants(double? spendingWants) =>
      _$this._spendingWants = spendingWants;

  double? _spendingNeeds;
  double? get spendingNeeds => _$this._spendingNeeds;
  set spendingNeeds(double? spendingNeeds) =>
      _$this._spendingNeeds = spendingNeeds;

  double? _endOfDayBalance;
  double? get endOfDayBalance => _$this._endOfDayBalance;
  set endOfDayBalance(double? endOfDayBalance) =>
      _$this._endOfDayBalance = endOfDayBalance;

  String? _subscriptionId;
  String? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(String? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  double? _spendingBusiness;
  double? get spendingBusiness => _$this._spendingBusiness;
  set spendingBusiness(double? spendingBusiness) =>
      _$this._spendingBusiness = spendingBusiness;

  double? _allowcationBusiness;
  double? get allowcationBusiness => _$this._allowcationBusiness;
  set allowcationBusiness(double? allowcationBusiness) =>
      _$this._allowcationBusiness = allowcationBusiness;

  double? _spendingPersonal;
  double? get spendingPersonal => _$this._spendingPersonal;
  set spendingPersonal(double? spendingPersonal) =>
      _$this._spendingPersonal = spendingPersonal;

  double? _allocationPersonal;
  double? get allocationPersonal => _$this._allocationPersonal;
  set allocationPersonal(double? allocationPersonal) =>
      _$this._allocationPersonal = allocationPersonal;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DailyFinancialPlannerRecordBuilder() {
    DailyFinancialPlannerRecord._initializeBuilder(this);
  }

  DailyFinancialPlannerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _startingBalance = $v.startingBalance;
      _totalSpending = $v.totalSpending;
      _totalTransaction = $v.totalTransaction;
      _noOfWants = $v.noOfWants;
      _noOfNeeds = $v.noOfNeeds;
      _spendingWants = $v.spendingWants;
      _spendingNeeds = $v.spendingNeeds;
      _endOfDayBalance = $v.endOfDayBalance;
      _subscriptionId = $v.subscriptionId;
      _spendingBusiness = $v.spendingBusiness;
      _allowcationBusiness = $v.allowcationBusiness;
      _spendingPersonal = $v.spendingPersonal;
      _allocationPersonal = $v.allocationPersonal;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyFinancialPlannerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyFinancialPlannerRecord;
  }

  @override
  void update(void Function(DailyFinancialPlannerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyFinancialPlannerRecord build() => _build();

  _$DailyFinancialPlannerRecord _build() {
    final _$result = _$v ??
        new _$DailyFinancialPlannerRecord._(
            uid: uid,
            startingBalance: startingBalance,
            totalSpending: totalSpending,
            totalTransaction: totalTransaction,
            noOfWants: noOfWants,
            noOfNeeds: noOfNeeds,
            spendingWants: spendingWants,
            spendingNeeds: spendingNeeds,
            endOfDayBalance: endOfDayBalance,
            subscriptionId: subscriptionId,
            spendingBusiness: spendingBusiness,
            allowcationBusiness: allowcationBusiness,
            spendingPersonal: spendingPersonal,
            allocationPersonal: allocationPersonal,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
