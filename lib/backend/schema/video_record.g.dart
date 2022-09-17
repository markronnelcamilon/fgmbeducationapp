// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoRecord> _$videoRecordSerializer = new _$VideoRecordSerializer();

class _$VideoRecordSerializer implements StructuredSerializer<VideoRecord> {
  @override
  final Iterable<Type> types = const [VideoRecord, _$VideoRecord];
  @override
  final String wireName = 'VideoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoTitle;
    if (value != null) {
      result
        ..add('videoTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoDesription;
    if (value != null) {
      result
        ..add('videoDesription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFeatured;
    if (value != null) {
      result
        ..add('isFeatured')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
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
  VideoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'videoTitle':
          result.videoTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'videoDesription':
          result.videoDesription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFeatured':
          result.isFeatured = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
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

class _$VideoRecord extends VideoRecord {
  @override
  final String? id;
  @override
  final String? videoTitle;
  @override
  final String? video;
  @override
  final String? videoDesription;
  @override
  final bool? isFeatured;
  @override
  final String? thumbnail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VideoRecord([void Function(VideoRecordBuilder)? updates]) =>
      (new VideoRecordBuilder()..update(updates))._build();

  _$VideoRecord._(
      {this.id,
      this.videoTitle,
      this.video,
      this.videoDesription,
      this.isFeatured,
      this.thumbnail,
      this.ffRef})
      : super._();

  @override
  VideoRecord rebuild(void Function(VideoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoRecordBuilder toBuilder() => new VideoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoRecord &&
        id == other.id &&
        videoTitle == other.videoTitle &&
        video == other.video &&
        videoDesription == other.videoDesription &&
        isFeatured == other.isFeatured &&
        thumbnail == other.thumbnail &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), videoTitle.hashCode),
                        video.hashCode),
                    videoDesription.hashCode),
                isFeatured.hashCode),
            thumbnail.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoRecord')
          ..add('id', id)
          ..add('videoTitle', videoTitle)
          ..add('video', video)
          ..add('videoDesription', videoDesription)
          ..add('isFeatured', isFeatured)
          ..add('thumbnail', thumbnail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VideoRecordBuilder implements Builder<VideoRecord, VideoRecordBuilder> {
  _$VideoRecord? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _videoTitle;
  String? get videoTitle => _$this._videoTitle;
  set videoTitle(String? videoTitle) => _$this._videoTitle = videoTitle;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  String? _videoDesription;
  String? get videoDesription => _$this._videoDesription;
  set videoDesription(String? videoDesription) =>
      _$this._videoDesription = videoDesription;

  bool? _isFeatured;
  bool? get isFeatured => _$this._isFeatured;
  set isFeatured(bool? isFeatured) => _$this._isFeatured = isFeatured;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VideoRecordBuilder() {
    VideoRecord._initializeBuilder(this);
  }

  VideoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _videoTitle = $v.videoTitle;
      _video = $v.video;
      _videoDesription = $v.videoDesription;
      _isFeatured = $v.isFeatured;
      _thumbnail = $v.thumbnail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoRecord;
  }

  @override
  void update(void Function(VideoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoRecord build() => _build();

  _$VideoRecord _build() {
    final _$result = _$v ??
        new _$VideoRecord._(
            id: id,
            videoTitle: videoTitle,
            video: video,
            videoDesription: videoDesription,
            isFeatured: isFeatured,
            thumbnail: thumbnail,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
