// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookDetailDTO _$BookDetailDTOFromJson(Map<String, dynamic> json) {
  return _BookDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$BookDetailDTO {
  int get id => throw _privateConstructorUsedError;
  Publisher get publisher => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get introduction => throw _privateConstructorUsedError;
  BigCategory get bigCategory => throw _privateConstructorUsedError;
  SmallCategory get smallCategory => throw _privateConstructorUsedError;
  String get authorInfo => throw _privateConstructorUsedError;
  FileDTO get epubFile => throw _privateConstructorUsedError;
  FileDTO get coverFile => throw _privateConstructorUsedError;
  Reviews get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDetailDTOCopyWith<BookDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailDTOCopyWith<$Res> {
  factory $BookDetailDTOCopyWith(
          BookDetailDTO value, $Res Function(BookDetailDTO) then) =
      _$BookDetailDTOCopyWithImpl<$Res, BookDetailDTO>;
  @useResult
  $Res call(
      {int id,
      Publisher publisher,
      String title,
      String author,
      int price,
      String introduction,
      BigCategory bigCategory,
      SmallCategory smallCategory,
      String authorInfo,
      FileDTO epubFile,
      FileDTO coverFile,
      Reviews reviews});

  $PublisherCopyWith<$Res> get publisher;
  $BigCategoryCopyWith<$Res> get bigCategory;
  $SmallCategoryCopyWith<$Res> get smallCategory;
  $FileDTOCopyWith<$Res> get epubFile;
  $FileDTOCopyWith<$Res> get coverFile;
  $ReviewsCopyWith<$Res> get reviews;
}

/// @nodoc
class _$BookDetailDTOCopyWithImpl<$Res, $Val extends BookDetailDTO>
    implements $BookDetailDTOCopyWith<$Res> {
  _$BookDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? publisher = null,
    Object? title = null,
    Object? author = null,
    Object? price = null,
    Object? introduction = null,
    Object? bigCategory = null,
    Object? smallCategory = null,
    Object? authorInfo = null,
    Object? epubFile = null,
    Object? coverFile = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Publisher,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      bigCategory: null == bigCategory
          ? _value.bigCategory
          : bigCategory // ignore: cast_nullable_to_non_nullable
              as BigCategory,
      smallCategory: null == smallCategory
          ? _value.smallCategory
          : smallCategory // ignore: cast_nullable_to_non_nullable
              as SmallCategory,
      authorInfo: null == authorInfo
          ? _value.authorInfo
          : authorInfo // ignore: cast_nullable_to_non_nullable
              as String,
      epubFile: null == epubFile
          ? _value.epubFile
          : epubFile // ignore: cast_nullable_to_non_nullable
              as FileDTO,
      coverFile: null == coverFile
          ? _value.coverFile
          : coverFile // ignore: cast_nullable_to_non_nullable
              as FileDTO,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as Reviews,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublisherCopyWith<$Res> get publisher {
    return $PublisherCopyWith<$Res>(_value.publisher, (value) {
      return _then(_value.copyWith(publisher: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BigCategoryCopyWith<$Res> get bigCategory {
    return $BigCategoryCopyWith<$Res>(_value.bigCategory, (value) {
      return _then(_value.copyWith(bigCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SmallCategoryCopyWith<$Res> get smallCategory {
    return $SmallCategoryCopyWith<$Res>(_value.smallCategory, (value) {
      return _then(_value.copyWith(smallCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FileDTOCopyWith<$Res> get epubFile {
    return $FileDTOCopyWith<$Res>(_value.epubFile, (value) {
      return _then(_value.copyWith(epubFile: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FileDTOCopyWith<$Res> get coverFile {
    return $FileDTOCopyWith<$Res>(_value.coverFile, (value) {
      return _then(_value.copyWith(coverFile: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewsCopyWith<$Res> get reviews {
    return $ReviewsCopyWith<$Res>(_value.reviews, (value) {
      return _then(_value.copyWith(reviews: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookDetailDTOCopyWith<$Res>
    implements $BookDetailDTOCopyWith<$Res> {
  factory _$$_BookDetailDTOCopyWith(
          _$_BookDetailDTO value, $Res Function(_$_BookDetailDTO) then) =
      __$$_BookDetailDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Publisher publisher,
      String title,
      String author,
      int price,
      String introduction,
      BigCategory bigCategory,
      SmallCategory smallCategory,
      String authorInfo,
      FileDTO epubFile,
      FileDTO coverFile,
      Reviews reviews});

  @override
  $PublisherCopyWith<$Res> get publisher;
  @override
  $BigCategoryCopyWith<$Res> get bigCategory;
  @override
  $SmallCategoryCopyWith<$Res> get smallCategory;
  @override
  $FileDTOCopyWith<$Res> get epubFile;
  @override
  $FileDTOCopyWith<$Res> get coverFile;
  @override
  $ReviewsCopyWith<$Res> get reviews;
}

/// @nodoc
class __$$_BookDetailDTOCopyWithImpl<$Res>
    extends _$BookDetailDTOCopyWithImpl<$Res, _$_BookDetailDTO>
    implements _$$_BookDetailDTOCopyWith<$Res> {
  __$$_BookDetailDTOCopyWithImpl(
      _$_BookDetailDTO _value, $Res Function(_$_BookDetailDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? publisher = null,
    Object? title = null,
    Object? author = null,
    Object? price = null,
    Object? introduction = null,
    Object? bigCategory = null,
    Object? smallCategory = null,
    Object? authorInfo = null,
    Object? epubFile = null,
    Object? coverFile = null,
    Object? reviews = null,
  }) {
    return _then(_$_BookDetailDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Publisher,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      bigCategory: null == bigCategory
          ? _value.bigCategory
          : bigCategory // ignore: cast_nullable_to_non_nullable
              as BigCategory,
      smallCategory: null == smallCategory
          ? _value.smallCategory
          : smallCategory // ignore: cast_nullable_to_non_nullable
              as SmallCategory,
      authorInfo: null == authorInfo
          ? _value.authorInfo
          : authorInfo // ignore: cast_nullable_to_non_nullable
              as String,
      epubFile: null == epubFile
          ? _value.epubFile
          : epubFile // ignore: cast_nullable_to_non_nullable
              as FileDTO,
      coverFile: null == coverFile
          ? _value.coverFile
          : coverFile // ignore: cast_nullable_to_non_nullable
              as FileDTO,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as Reviews,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookDetailDTO with DiagnosticableTreeMixin implements _BookDetailDTO {
  _$_BookDetailDTO(
      {required this.id,
      required this.publisher,
      required this.title,
      required this.author,
      required this.price,
      required this.introduction,
      required this.bigCategory,
      required this.smallCategory,
      required this.authorInfo,
      required this.epubFile,
      required this.coverFile,
      required this.reviews});

  factory _$_BookDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BookDetailDTOFromJson(json);

  @override
  final int id;
  @override
  final Publisher publisher;
  @override
  final String title;
  @override
  final String author;
  @override
  final int price;
  @override
  final String introduction;
  @override
  final BigCategory bigCategory;
  @override
  final SmallCategory smallCategory;
  @override
  final String authorInfo;
  @override
  final FileDTO epubFile;
  @override
  final FileDTO coverFile;
  @override
  final Reviews reviews;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookDetailDTO(id: $id, publisher: $publisher, title: $title, author: $author, price: $price, introduction: $introduction, bigCategory: $bigCategory, smallCategory: $smallCategory, authorInfo: $authorInfo, epubFile: $epubFile, coverFile: $coverFile, reviews: $reviews)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookDetailDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('publisher', publisher))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('introduction', introduction))
      ..add(DiagnosticsProperty('bigCategory', bigCategory))
      ..add(DiagnosticsProperty('smallCategory', smallCategory))
      ..add(DiagnosticsProperty('authorInfo', authorInfo))
      ..add(DiagnosticsProperty('epubFile', epubFile))
      ..add(DiagnosticsProperty('coverFile', coverFile))
      ..add(DiagnosticsProperty('reviews', reviews));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookDetailDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.bigCategory, bigCategory) ||
                other.bigCategory == bigCategory) &&
            (identical(other.smallCategory, smallCategory) ||
                other.smallCategory == smallCategory) &&
            (identical(other.authorInfo, authorInfo) ||
                other.authorInfo == authorInfo) &&
            (identical(other.epubFile, epubFile) ||
                other.epubFile == epubFile) &&
            (identical(other.coverFile, coverFile) ||
                other.coverFile == coverFile) &&
            (identical(other.reviews, reviews) || other.reviews == reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      publisher,
      title,
      author,
      price,
      introduction,
      bigCategory,
      smallCategory,
      authorInfo,
      epubFile,
      coverFile,
      reviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookDetailDTOCopyWith<_$_BookDetailDTO> get copyWith =>
      __$$_BookDetailDTOCopyWithImpl<_$_BookDetailDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookDetailDTOToJson(
      this,
    );
  }
}

abstract class _BookDetailDTO implements BookDetailDTO {
  factory _BookDetailDTO(
      {required final int id,
      required final Publisher publisher,
      required final String title,
      required final String author,
      required final int price,
      required final String introduction,
      required final BigCategory bigCategory,
      required final SmallCategory smallCategory,
      required final String authorInfo,
      required final FileDTO epubFile,
      required final FileDTO coverFile,
      required final Reviews reviews}) = _$_BookDetailDTO;

  factory _BookDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_BookDetailDTO.fromJson;

  @override
  int get id;
  @override
  Publisher get publisher;
  @override
  String get title;
  @override
  String get author;
  @override
  int get price;
  @override
  String get introduction;
  @override
  BigCategory get bigCategory;
  @override
  SmallCategory get smallCategory;
  @override
  String get authorInfo;
  @override
  FileDTO get epubFile;
  @override
  FileDTO get coverFile;
  @override
  Reviews get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_BookDetailDTOCopyWith<_$_BookDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
