// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_allocation_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BusinessAllocationRecord> _$businessAllocationRecordSerializer =
    new _$BusinessAllocationRecordSerializer();

class _$BusinessAllocationRecordSerializer
    implements StructuredSerializer<BusinessAllocationRecord> {
  @override
  final Iterable<Type> types = const [
    BusinessAllocationRecord,
    _$BusinessAllocationRecord
  ];
  @override
  final String wireName = 'BusinessAllocationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BusinessAllocationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.allocationDeductionPercentage;
    if (value != null) {
      result
        ..add('allocationDeductionPercentage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
    value = object.allocationDeduction;
    if (value != null) {
      result
        ..add('allocationDeduction')
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
  BusinessAllocationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BusinessAllocationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'allocationDeductionPercentage':
          result.allocationDeductionPercentage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'allocationDeduction':
          result.allocationDeduction = serializers.deserialize(value,
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

class _$BusinessAllocationRecord extends BusinessAllocationRecord {
  @override
  final double? allocationDeductionPercentage;
  @override
  final String? uid;
  @override
  final double? amount;
  @override
  final String? allocationDeduction;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BusinessAllocationRecord(
          [void Function(BusinessAllocationRecordBuilder)? updates]) =>
      (new BusinessAllocationRecordBuilder()..update(updates))._build();

  _$BusinessAllocationRecord._(
      {this.allocationDeductionPercentage,
      this.uid,
      this.amount,
      this.allocationDeduction,
      this.ffRef})
      : super._();

  @override
  BusinessAllocationRecord rebuild(
          void Function(BusinessAllocationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BusinessAllocationRecordBuilder toBuilder() =>
      new BusinessAllocationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BusinessAllocationRecord &&
        allocationDeductionPercentage == other.allocationDeductionPercentage &&
        uid == other.uid &&
        amount == other.amount &&
        allocationDeduction == other.allocationDeduction &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, allocationDeductionPercentage.hashCode),
                    uid.hashCode),
                amount.hashCode),
            allocationDeduction.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BusinessAllocationRecord')
          ..add('allocationDeductionPercentage', allocationDeductionPercentage)
          ..add('uid', uid)
          ..add('amount', amount)
          ..add('allocationDeduction', allocationDeduction)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BusinessAllocationRecordBuilder
    implements
        Builder<BusinessAllocationRecord, BusinessAllocationRecordBuilder> {
  _$BusinessAllocationRecord? _$v;

  double? _allocationDeductionPercentage;
  double? get allocationDeductionPercentage =>
      _$this._allocationDeductionPercentage;
  set allocationDeductionPercentage(double? allocationDeductionPercentage) =>
      _$this._allocationDeductionPercentage = allocationDeductionPercentage;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _allocationDeduction;
  String? get allocationDeduction => _$this._allocationDeduction;
  set allocationDeduction(String? allocationDeduction) =>
      _$this._allocationDeduction = allocationDeduction;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BusinessAllocationRecordBuilder() {
    BusinessAllocationRecord._initializeBuilder(this);
  }

  BusinessAllocationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationDeductionPercentage = $v.allocationDeductionPercentage;
      _uid = $v.uid;
      _amount = $v.amount;
      _allocationDeduction = $v.allocationDeduction;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BusinessAllocationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BusinessAllocationRecord;
  }

  @override
  void update(void Function(BusinessAllocationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BusinessAllocationRecord build() => _build();

  _$BusinessAllocationRecord _build() {
    final _$result = _$v ??
        new _$BusinessAllocationRecord._(
            allocationDeductionPercentage: allocationDeductionPercentage,
            uid: uid,
            amount: amount,
            allocationDeduction: allocationDeduction,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
