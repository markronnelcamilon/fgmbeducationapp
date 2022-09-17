// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SystemDataRecord> _$systemDataRecordSerializer =
    new _$SystemDataRecordSerializer();

class _$SystemDataRecordSerializer
    implements StructuredSerializer<SystemDataRecord> {
  @override
  final Iterable<Type> types = const [SystemDataRecord, _$SystemDataRecord];
  @override
  final String wireName = 'SystemDataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SystemDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.privacyPolicyTitle;
    if (value != null) {
      result
        ..add('privacy_policy_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.privacyPolicy;
    if (value != null) {
      result
        ..add('privacy_policy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dayChallengeDesc;
    if (value != null) {
      result
        ..add('dayChallengeDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.goalBookDesc;
    if (value != null) {
      result
        ..add('goalBookDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.financialPlannerDesc;
    if (value != null) {
      result
        ..add('financialPlannerDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.successPlanner;
    if (value != null) {
      result
        ..add('successPlanner')
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
  SystemDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SystemDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'privacy_policy_title':
          result.privacyPolicyTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'privacy_policy':
          result.privacyPolicy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dayChallengeDesc':
          result.dayChallengeDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'goalBookDesc':
          result.goalBookDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'financialPlannerDesc':
          result.financialPlannerDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'successPlanner':
          result.successPlanner = serializers.deserialize(value,
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

class _$SystemDataRecord extends SystemDataRecord {
  @override
  final String? privacyPolicyTitle;
  @override
  final String? privacyPolicy;
  @override
  final String? dayChallengeDesc;
  @override
  final String? goalBookDesc;
  @override
  final String? financialPlannerDesc;
  @override
  final String? successPlanner;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SystemDataRecord(
          [void Function(SystemDataRecordBuilder)? updates]) =>
      (new SystemDataRecordBuilder()..update(updates))._build();

  _$SystemDataRecord._(
      {this.privacyPolicyTitle,
      this.privacyPolicy,
      this.dayChallengeDesc,
      this.goalBookDesc,
      this.financialPlannerDesc,
      this.successPlanner,
      this.ffRef})
      : super._();

  @override
  SystemDataRecord rebuild(void Function(SystemDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemDataRecordBuilder toBuilder() =>
      new SystemDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemDataRecord &&
        privacyPolicyTitle == other.privacyPolicyTitle &&
        privacyPolicy == other.privacyPolicy &&
        dayChallengeDesc == other.dayChallengeDesc &&
        goalBookDesc == other.goalBookDesc &&
        financialPlannerDesc == other.financialPlannerDesc &&
        successPlanner == other.successPlanner &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, privacyPolicyTitle.hashCode),
                            privacyPolicy.hashCode),
                        dayChallengeDesc.hashCode),
                    goalBookDesc.hashCode),
                financialPlannerDesc.hashCode),
            successPlanner.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemDataRecord')
          ..add('privacyPolicyTitle', privacyPolicyTitle)
          ..add('privacyPolicy', privacyPolicy)
          ..add('dayChallengeDesc', dayChallengeDesc)
          ..add('goalBookDesc', goalBookDesc)
          ..add('financialPlannerDesc', financialPlannerDesc)
          ..add('successPlanner', successPlanner)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SystemDataRecordBuilder
    implements Builder<SystemDataRecord, SystemDataRecordBuilder> {
  _$SystemDataRecord? _$v;

  String? _privacyPolicyTitle;
  String? get privacyPolicyTitle => _$this._privacyPolicyTitle;
  set privacyPolicyTitle(String? privacyPolicyTitle) =>
      _$this._privacyPolicyTitle = privacyPolicyTitle;

  String? _privacyPolicy;
  String? get privacyPolicy => _$this._privacyPolicy;
  set privacyPolicy(String? privacyPolicy) =>
      _$this._privacyPolicy = privacyPolicy;

  String? _dayChallengeDesc;
  String? get dayChallengeDesc => _$this._dayChallengeDesc;
  set dayChallengeDesc(String? dayChallengeDesc) =>
      _$this._dayChallengeDesc = dayChallengeDesc;

  String? _goalBookDesc;
  String? get goalBookDesc => _$this._goalBookDesc;
  set goalBookDesc(String? goalBookDesc) => _$this._goalBookDesc = goalBookDesc;

  String? _financialPlannerDesc;
  String? get financialPlannerDesc => _$this._financialPlannerDesc;
  set financialPlannerDesc(String? financialPlannerDesc) =>
      _$this._financialPlannerDesc = financialPlannerDesc;

  String? _successPlanner;
  String? get successPlanner => _$this._successPlanner;
  set successPlanner(String? successPlanner) =>
      _$this._successPlanner = successPlanner;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SystemDataRecordBuilder() {
    SystemDataRecord._initializeBuilder(this);
  }

  SystemDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _privacyPolicyTitle = $v.privacyPolicyTitle;
      _privacyPolicy = $v.privacyPolicy;
      _dayChallengeDesc = $v.dayChallengeDesc;
      _goalBookDesc = $v.goalBookDesc;
      _financialPlannerDesc = $v.financialPlannerDesc;
      _successPlanner = $v.successPlanner;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SystemDataRecord;
  }

  @override
  void update(void Function(SystemDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemDataRecord build() => _build();

  _$SystemDataRecord _build() {
    final _$result = _$v ??
        new _$SystemDataRecord._(
            privacyPolicyTitle: privacyPolicyTitle,
            privacyPolicy: privacyPolicy,
            dayChallengeDesc: dayChallengeDesc,
            goalBookDesc: goalBookDesc,
            financialPlannerDesc: financialPlannerDesc,
            successPlanner: successPlanner,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
