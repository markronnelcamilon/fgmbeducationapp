// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vision_board_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VisionBoardRecord> _$visionBoardRecordSerializer =
    new _$VisionBoardRecordSerializer();

class _$VisionBoardRecordSerializer
    implements StructuredSerializer<VisionBoardRecord> {
  @override
  final Iterable<Type> types = const [VisionBoardRecord, _$VisionBoardRecord];
  @override
  final String wireName = 'VisionBoardRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VisionBoardRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userID;
    if (value != null) {
      result
        ..add('userID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAchievement;
    if (value != null) {
      result
        ..add('isAchievement')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
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
  VisionBoardRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VisionBoardRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAchievement':
          result.isAchievement = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
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

class _$VisionBoardRecord extends VisionBoardRecord {
  @override
  final String? userID;
  @override
  final String? image;
  @override
  final bool? isAchievement;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VisionBoardRecord(
          [void Function(VisionBoardRecordBuilder)? updates]) =>
      (new VisionBoardRecordBuilder()..update(updates))._build();

  _$VisionBoardRecord._(
      {this.userID, this.image, this.isAchievement, this.date, this.ffRef})
      : super._();

  @override
  VisionBoardRecord rebuild(void Function(VisionBoardRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VisionBoardRecordBuilder toBuilder() =>
      new VisionBoardRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VisionBoardRecord &&
        userID == other.userID &&
        image == other.image &&
        isAchievement == other.isAchievement &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, userID.hashCode), image.hashCode),
                isAchievement.hashCode),
            date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VisionBoardRecord')
          ..add('userID', userID)
          ..add('image', image)
          ..add('isAchievement', isAchievement)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VisionBoardRecordBuilder
    implements Builder<VisionBoardRecord, VisionBoardRecordBuilder> {
  _$VisionBoardRecord? _$v;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  bool? _isAchievement;
  bool? get isAchievement => _$this._isAchievement;
  set isAchievement(bool? isAchievement) =>
      _$this._isAchievement = isAchievement;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VisionBoardRecordBuilder() {
    VisionBoardRecord._initializeBuilder(this);
  }

  VisionBoardRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userID = $v.userID;
      _image = $v.image;
      _isAchievement = $v.isAchievement;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VisionBoardRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VisionBoardRecord;
  }

  @override
  void update(void Function(VisionBoardRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VisionBoardRecord build() => _build();

  _$VisionBoardRecord _build() {
    final _$result = _$v ??
        new _$VisionBoardRecord._(
            userID: userID,
            image: image,
            isAchievement: isAchievement,
            date: date,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
