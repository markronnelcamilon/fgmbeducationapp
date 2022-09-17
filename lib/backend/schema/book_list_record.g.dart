// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BookListRecord> _$bookListRecordSerializer =
    new _$BookListRecordSerializer();

class _$BookListRecordSerializer
    implements StructuredSerializer<BookListRecord> {
  @override
  final Iterable<Type> types = const [BookListRecord, _$BookListRecord];
  @override
  final String wireName = 'BookListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BookListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bookName;
    if (value != null) {
      result
        ..add('bookName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amazonLink;
    if (value != null) {
      result
        ..add('amazonLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bookAuthor;
    if (value != null) {
      result
        ..add('bookAuthor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bookImage;
    if (value != null) {
      result
        ..add('bookImage')
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
  BookListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bookName':
          result.bookName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amazonLink':
          result.amazonLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bookAuthor':
          result.bookAuthor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bookImage':
          result.bookImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFeatured':
          result.isFeatured = serializers.deserialize(value,
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

class _$BookListRecord extends BookListRecord {
  @override
  final String? bookName;
  @override
  final String? amazonLink;
  @override
  final String? bookAuthor;
  @override
  final String? bookImage;
  @override
  final bool? isFeatured;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BookListRecord([void Function(BookListRecordBuilder)? updates]) =>
      (new BookListRecordBuilder()..update(updates))._build();

  _$BookListRecord._(
      {this.bookName,
      this.amazonLink,
      this.bookAuthor,
      this.bookImage,
      this.isFeatured,
      this.ffRef})
      : super._();

  @override
  BookListRecord rebuild(void Function(BookListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookListRecordBuilder toBuilder() =>
      new BookListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookListRecord &&
        bookName == other.bookName &&
        amazonLink == other.amazonLink &&
        bookAuthor == other.bookAuthor &&
        bookImage == other.bookImage &&
        isFeatured == other.isFeatured &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, bookName.hashCode), amazonLink.hashCode),
                    bookAuthor.hashCode),
                bookImage.hashCode),
            isFeatured.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookListRecord')
          ..add('bookName', bookName)
          ..add('amazonLink', amazonLink)
          ..add('bookAuthor', bookAuthor)
          ..add('bookImage', bookImage)
          ..add('isFeatured', isFeatured)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BookListRecordBuilder
    implements Builder<BookListRecord, BookListRecordBuilder> {
  _$BookListRecord? _$v;

  String? _bookName;
  String? get bookName => _$this._bookName;
  set bookName(String? bookName) => _$this._bookName = bookName;

  String? _amazonLink;
  String? get amazonLink => _$this._amazonLink;
  set amazonLink(String? amazonLink) => _$this._amazonLink = amazonLink;

  String? _bookAuthor;
  String? get bookAuthor => _$this._bookAuthor;
  set bookAuthor(String? bookAuthor) => _$this._bookAuthor = bookAuthor;

  String? _bookImage;
  String? get bookImage => _$this._bookImage;
  set bookImage(String? bookImage) => _$this._bookImage = bookImage;

  bool? _isFeatured;
  bool? get isFeatured => _$this._isFeatured;
  set isFeatured(bool? isFeatured) => _$this._isFeatured = isFeatured;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BookListRecordBuilder() {
    BookListRecord._initializeBuilder(this);
  }

  BookListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookName = $v.bookName;
      _amazonLink = $v.amazonLink;
      _bookAuthor = $v.bookAuthor;
      _bookImage = $v.bookImage;
      _isFeatured = $v.isFeatured;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookListRecord;
  }

  @override
  void update(void Function(BookListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookListRecord build() => _build();

  _$BookListRecord _build() {
    final _$result = _$v ??
        new _$BookListRecord._(
            bookName: bookName,
            amazonLink: amazonLink,
            bookAuthor: bookAuthor,
            bookImage: bookImage,
            isFeatured: isFeatured,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
