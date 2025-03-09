// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatDTO _$CatDTOFromJson(Map<String, dynamic> json) {
  return _Cat.fromJson(json);
}

/// @nodoc
mixin _$CatDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get temperament => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _imageFromJson, toJson: _imageToJson)
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatDTOCopyWith<CatDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatDTOCopyWith<$Res> {
  factory $CatDTOCopyWith(CatDTO value, $Res Function(CatDTO) then) =
      _$CatDTOCopyWithImpl<$Res, CatDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      String origin,
      String description,
      String temperament,
      @JsonKey(fromJson: _imageFromJson, toJson: _imageToJson)
      String? imageUrl});
}

/// @nodoc
class _$CatDTOCopyWithImpl<$Res, $Val extends CatDTO>
    implements $CatDTOCopyWith<$Res> {
  _$CatDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? origin = null,
    Object? description = null,
    Object? temperament = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temperament: null == temperament
          ? _value.temperament
          : temperament // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatImplCopyWith<$Res> implements $CatDTOCopyWith<$Res> {
  factory _$$CatImplCopyWith(_$CatImpl value, $Res Function(_$CatImpl) then) =
      __$$CatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String origin,
      String description,
      String temperament,
      @JsonKey(fromJson: _imageFromJson, toJson: _imageToJson)
      String? imageUrl});
}

/// @nodoc
class __$$CatImplCopyWithImpl<$Res>
    extends _$CatDTOCopyWithImpl<$Res, _$CatImpl>
    implements _$$CatImplCopyWith<$Res> {
  __$$CatImplCopyWithImpl(_$CatImpl _value, $Res Function(_$CatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? origin = null,
    Object? description = null,
    Object? temperament = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$CatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temperament: null == temperament
          ? _value.temperament
          : temperament // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatImpl implements _Cat {
  _$CatImpl(
      {required this.id,
      required this.name,
      required this.origin,
      required this.description,
      required this.temperament,
      @JsonKey(fromJson: _imageFromJson, toJson: _imageToJson) this.imageUrl});

  factory _$CatImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String origin;
  @override
  final String description;
  @override
  final String temperament;
  @override
  @JsonKey(fromJson: _imageFromJson, toJson: _imageToJson)
  final String? imageUrl;

  @override
  String toString() {
    return 'CatDTO(id: $id, name: $name, origin: $origin, description: $description, temperament: $temperament, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.temperament, temperament) ||
                other.temperament == temperament) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, origin, description, temperament, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatImplCopyWith<_$CatImpl> get copyWith =>
      __$$CatImplCopyWithImpl<_$CatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatImplToJson(
      this,
    );
  }
}

abstract class _Cat implements CatDTO {
  factory _Cat(
      {required final String id,
      required final String name,
      required final String origin,
      required final String description,
      required final String temperament,
      @JsonKey(fromJson: _imageFromJson, toJson: _imageToJson)
      final String? imageUrl}) = _$CatImpl;

  factory _Cat.fromJson(Map<String, dynamic> json) = _$CatImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get origin;
  @override
  String get description;
  @override
  String get temperament;
  @override
  @JsonKey(fromJson: _imageFromJson, toJson: _imageToJson)
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CatImplCopyWith<_$CatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
