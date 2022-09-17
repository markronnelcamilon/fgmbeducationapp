// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meetings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MeetingsRecord> _$meetingsRecordSerializer =
    new _$MeetingsRecordSerializer();

class _$MeetingsRecordSerializer
    implements StructuredSerializer<MeetingsRecord> {
  @override
  final Iterable<Type> types = const [MeetingsRecord, _$MeetingsRecord];
  @override
  final String wireName = 'MeetingsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MeetingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.meetingDetails;
    if (value != null) {
      result
        ..add('meetingDetails')
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
  MeetingsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeetingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'meetingDetails':
          result.meetingDetails = serializers.deserialize(value,
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

class _$MeetingsRecord extends MeetingsRecord {
  @override
  final DateTime? time;
  @override
  final String? meetingDetails;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MeetingsRecord([void Function(MeetingsRecordBuilder)? updates]) =>
      (new MeetingsRecordBuilder()..update(updates))._build();

  _$MeetingsRecord._({this.time, this.meetingDetails, this.ffRef}) : super._();

  @override
  MeetingsRecord rebuild(void Function(MeetingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeetingsRecordBuilder toBuilder() =>
      new MeetingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeetingsRecord &&
        time == other.time &&
        meetingDetails == other.meetingDetails &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, time.hashCode), meetingDetails.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeetingsRecord')
          ..add('time', time)
          ..add('meetingDetails', meetingDetails)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MeetingsRecordBuilder
    implements Builder<MeetingsRecord, MeetingsRecordBuilder> {
  _$MeetingsRecord? _$v;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _meetingDetails;
  String? get meetingDetails => _$this._meetingDetails;
  set meetingDetails(String? meetingDetails) =>
      _$this._meetingDetails = meetingDetails;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MeetingsRecordBuilder() {
    MeetingsRecord._initializeBuilder(this);
  }

  MeetingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _meetingDetails = $v.meetingDetails;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeetingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeetingsRecord;
  }

  @override
  void update(void Function(MeetingsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeetingsRecord build() => _build();

  _$MeetingsRecord _build() {
    final _$result = _$v ??
        new _$MeetingsRecord._(
            time: time, meetingDetails: meetingDetails, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
