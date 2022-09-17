// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsletter_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsletterRecord> _$newsletterRecordSerializer =
    new _$NewsletterRecordSerializer();

class _$NewsletterRecordSerializer
    implements StructuredSerializer<NewsletterRecord> {
  @override
  final Iterable<Type> types = const [NewsletterRecord, _$NewsletterRecord];
  @override
  final String wireName = 'NewsletterRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NewsletterRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
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
    value = object.body;
    if (value != null) {
      result
        ..add('body')
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
  NewsletterRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsletterRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$NewsletterRecord extends NewsletterRecord {
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? body;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NewsletterRecord(
          [void Function(NewsletterRecordBuilder)? updates]) =>
      (new NewsletterRecordBuilder()..update(updates))._build();

  _$NewsletterRecord._(
      {this.title, this.image, this.body, this.date, this.ffRef})
      : super._();

  @override
  NewsletterRecord rebuild(void Function(NewsletterRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsletterRecordBuilder toBuilder() =>
      new NewsletterRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsletterRecord &&
        title == other.title &&
        image == other.image &&
        body == other.body &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, title.hashCode), image.hashCode), body.hashCode),
            date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsletterRecord')
          ..add('title', title)
          ..add('image', image)
          ..add('body', body)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NewsletterRecordBuilder
    implements Builder<NewsletterRecord, NewsletterRecordBuilder> {
  _$NewsletterRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NewsletterRecordBuilder() {
    NewsletterRecord._initializeBuilder(this);
  }

  NewsletterRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _image = $v.image;
      _body = $v.body;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsletterRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsletterRecord;
  }

  @override
  void update(void Function(NewsletterRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsletterRecord build() => _build();

  _$NewsletterRecord _build() {
    final _$result = _$v ??
        new _$NewsletterRecord._(
            title: title, image: image, body: body, date: date, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
