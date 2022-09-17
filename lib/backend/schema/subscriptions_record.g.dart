// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscriptions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubscriptionsRecord> _$subscriptionsRecordSerializer =
    new _$SubscriptionsRecordSerializer();

class _$SubscriptionsRecordSerializer
    implements StructuredSerializer<SubscriptionsRecord> {
  @override
  final Iterable<Type> types = const [
    SubscriptionsRecord,
    _$SubscriptionsRecord
  ];
  @override
  final String wireName = 'SubscriptionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SubscriptionsRecord object,
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
    value = object.subscriptionName;
    if (value != null) {
      result
        ..add('subscriptionName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateSubscribed;
    if (value != null) {
      result
        ..add('dateSubscribed')
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
  SubscriptionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubscriptionsRecordBuilder();

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
        case 'subscriptionName':
          result.subscriptionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateSubscribed':
          result.dateSubscribed = serializers.deserialize(value,
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

class _$SubscriptionsRecord extends SubscriptionsRecord {
  @override
  final String? uid;
  @override
  final String? subscriptionName;
  @override
  final DateTime? dateSubscribed;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SubscriptionsRecord(
          [void Function(SubscriptionsRecordBuilder)? updates]) =>
      (new SubscriptionsRecordBuilder()..update(updates))._build();

  _$SubscriptionsRecord._(
      {this.uid, this.subscriptionName, this.dateSubscribed, this.ffRef})
      : super._();

  @override
  SubscriptionsRecord rebuild(
          void Function(SubscriptionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionsRecordBuilder toBuilder() =>
      new SubscriptionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionsRecord &&
        uid == other.uid &&
        subscriptionName == other.subscriptionName &&
        dateSubscribed == other.dateSubscribed &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, uid.hashCode), subscriptionName.hashCode),
            dateSubscribed.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionsRecord')
          ..add('uid', uid)
          ..add('subscriptionName', subscriptionName)
          ..add('dateSubscribed', dateSubscribed)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SubscriptionsRecordBuilder
    implements Builder<SubscriptionsRecord, SubscriptionsRecordBuilder> {
  _$SubscriptionsRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _subscriptionName;
  String? get subscriptionName => _$this._subscriptionName;
  set subscriptionName(String? subscriptionName) =>
      _$this._subscriptionName = subscriptionName;

  DateTime? _dateSubscribed;
  DateTime? get dateSubscribed => _$this._dateSubscribed;
  set dateSubscribed(DateTime? dateSubscribed) =>
      _$this._dateSubscribed = dateSubscribed;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SubscriptionsRecordBuilder() {
    SubscriptionsRecord._initializeBuilder(this);
  }

  SubscriptionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _subscriptionName = $v.subscriptionName;
      _dateSubscribed = $v.dateSubscribed;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubscriptionsRecord;
  }

  @override
  void update(void Function(SubscriptionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionsRecord build() => _build();

  _$SubscriptionsRecord _build() {
    final _$result = _$v ??
        new _$SubscriptionsRecord._(
            uid: uid,
            subscriptionName: subscriptionName,
            dateSubscribed: dateSubscribed,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
