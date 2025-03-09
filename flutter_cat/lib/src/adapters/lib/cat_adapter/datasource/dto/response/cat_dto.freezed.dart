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
  return _CatDTO.fromJson(json);
}

/// @nodoc
mixin _$CatDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get temperament => throw _privateConstructorUsedError;
  int get intelligence => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', fromJson: _imageFromJson)
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'life_span')
  String? get lifeSpan => throw _privateConstructorUsedError;
  int get adaptability => throw _privateConstructorUsedError;
  @JsonKey(name: 'affection_level')
  int get affectionLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_friendly')
  int get childFriendly => throw _privateConstructorUsedError;
  @JsonKey(name: 'dog_friendly')
  int get dogFriendly => throw _privateConstructorUsedError;
  @JsonKey(name: 'energy_level')
  int get energyLevel => throw _privateConstructorUsedError;
  int get grooming => throw _privateConstructorUsedError;
  @JsonKey(name: 'health_issues')
  int get healthIssues => throw _privateConstructorUsedError;
  @JsonKey(name: 'shedding_level')
  int get sheddingLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_needs')
  int get socialNeeds => throw _privateConstructorUsedError;
  @JsonKey(name: 'stranger_friendly')
  int get strangerFriendly => throw _privateConstructorUsedError;
  int get vocalisation => throw _privateConstructorUsedError;
  @JsonKey(name: 'wikipedia_url')
  String? get wikipediaUrl => throw _privateConstructorUsedError;

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
      int intelligence,
      @JsonKey(name: 'image', fromJson: _imageFromJson) String? imageUrl,
      @JsonKey(name: 'life_span') String? lifeSpan,
      int adaptability,
      @JsonKey(name: 'affection_level') int affectionLevel,
      @JsonKey(name: 'child_friendly') int childFriendly,
      @JsonKey(name: 'dog_friendly') int dogFriendly,
      @JsonKey(name: 'energy_level') int energyLevel,
      int grooming,
      @JsonKey(name: 'health_issues') int healthIssues,
      @JsonKey(name: 'shedding_level') int sheddingLevel,
      @JsonKey(name: 'social_needs') int socialNeeds,
      @JsonKey(name: 'stranger_friendly') int strangerFriendly,
      int vocalisation,
      @JsonKey(name: 'wikipedia_url') String? wikipediaUrl});
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
    Object? intelligence = null,
    Object? imageUrl = freezed,
    Object? lifeSpan = freezed,
    Object? adaptability = null,
    Object? affectionLevel = null,
    Object? childFriendly = null,
    Object? dogFriendly = null,
    Object? energyLevel = null,
    Object? grooming = null,
    Object? healthIssues = null,
    Object? sheddingLevel = null,
    Object? socialNeeds = null,
    Object? strangerFriendly = null,
    Object? vocalisation = null,
    Object? wikipediaUrl = freezed,
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
      intelligence: null == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lifeSpan: freezed == lifeSpan
          ? _value.lifeSpan
          : lifeSpan // ignore: cast_nullable_to_non_nullable
              as String?,
      adaptability: null == adaptability
          ? _value.adaptability
          : adaptability // ignore: cast_nullable_to_non_nullable
              as int,
      affectionLevel: null == affectionLevel
          ? _value.affectionLevel
          : affectionLevel // ignore: cast_nullable_to_non_nullable
              as int,
      childFriendly: null == childFriendly
          ? _value.childFriendly
          : childFriendly // ignore: cast_nullable_to_non_nullable
              as int,
      dogFriendly: null == dogFriendly
          ? _value.dogFriendly
          : dogFriendly // ignore: cast_nullable_to_non_nullable
              as int,
      energyLevel: null == energyLevel
          ? _value.energyLevel
          : energyLevel // ignore: cast_nullable_to_non_nullable
              as int,
      grooming: null == grooming
          ? _value.grooming
          : grooming // ignore: cast_nullable_to_non_nullable
              as int,
      healthIssues: null == healthIssues
          ? _value.healthIssues
          : healthIssues // ignore: cast_nullable_to_non_nullable
              as int,
      sheddingLevel: null == sheddingLevel
          ? _value.sheddingLevel
          : sheddingLevel // ignore: cast_nullable_to_non_nullable
              as int,
      socialNeeds: null == socialNeeds
          ? _value.socialNeeds
          : socialNeeds // ignore: cast_nullable_to_non_nullable
              as int,
      strangerFriendly: null == strangerFriendly
          ? _value.strangerFriendly
          : strangerFriendly // ignore: cast_nullable_to_non_nullable
              as int,
      vocalisation: null == vocalisation
          ? _value.vocalisation
          : vocalisation // ignore: cast_nullable_to_non_nullable
              as int,
      wikipediaUrl: freezed == wikipediaUrl
          ? _value.wikipediaUrl
          : wikipediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatDTOImplCopyWith<$Res> implements $CatDTOCopyWith<$Res> {
  factory _$$CatDTOImplCopyWith(
          _$CatDTOImpl value, $Res Function(_$CatDTOImpl) then) =
      __$$CatDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String origin,
      String description,
      String temperament,
      int intelligence,
      @JsonKey(name: 'image', fromJson: _imageFromJson) String? imageUrl,
      @JsonKey(name: 'life_span') String? lifeSpan,
      int adaptability,
      @JsonKey(name: 'affection_level') int affectionLevel,
      @JsonKey(name: 'child_friendly') int childFriendly,
      @JsonKey(name: 'dog_friendly') int dogFriendly,
      @JsonKey(name: 'energy_level') int energyLevel,
      int grooming,
      @JsonKey(name: 'health_issues') int healthIssues,
      @JsonKey(name: 'shedding_level') int sheddingLevel,
      @JsonKey(name: 'social_needs') int socialNeeds,
      @JsonKey(name: 'stranger_friendly') int strangerFriendly,
      int vocalisation,
      @JsonKey(name: 'wikipedia_url') String? wikipediaUrl});
}

/// @nodoc
class __$$CatDTOImplCopyWithImpl<$Res>
    extends _$CatDTOCopyWithImpl<$Res, _$CatDTOImpl>
    implements _$$CatDTOImplCopyWith<$Res> {
  __$$CatDTOImplCopyWithImpl(
      _$CatDTOImpl _value, $Res Function(_$CatDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? origin = null,
    Object? description = null,
    Object? temperament = null,
    Object? intelligence = null,
    Object? imageUrl = freezed,
    Object? lifeSpan = freezed,
    Object? adaptability = null,
    Object? affectionLevel = null,
    Object? childFriendly = null,
    Object? dogFriendly = null,
    Object? energyLevel = null,
    Object? grooming = null,
    Object? healthIssues = null,
    Object? sheddingLevel = null,
    Object? socialNeeds = null,
    Object? strangerFriendly = null,
    Object? vocalisation = null,
    Object? wikipediaUrl = freezed,
  }) {
    return _then(_$CatDTOImpl(
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
      intelligence: null == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lifeSpan: freezed == lifeSpan
          ? _value.lifeSpan
          : lifeSpan // ignore: cast_nullable_to_non_nullable
              as String?,
      adaptability: null == adaptability
          ? _value.adaptability
          : adaptability // ignore: cast_nullable_to_non_nullable
              as int,
      affectionLevel: null == affectionLevel
          ? _value.affectionLevel
          : affectionLevel // ignore: cast_nullable_to_non_nullable
              as int,
      childFriendly: null == childFriendly
          ? _value.childFriendly
          : childFriendly // ignore: cast_nullable_to_non_nullable
              as int,
      dogFriendly: null == dogFriendly
          ? _value.dogFriendly
          : dogFriendly // ignore: cast_nullable_to_non_nullable
              as int,
      energyLevel: null == energyLevel
          ? _value.energyLevel
          : energyLevel // ignore: cast_nullable_to_non_nullable
              as int,
      grooming: null == grooming
          ? _value.grooming
          : grooming // ignore: cast_nullable_to_non_nullable
              as int,
      healthIssues: null == healthIssues
          ? _value.healthIssues
          : healthIssues // ignore: cast_nullable_to_non_nullable
              as int,
      sheddingLevel: null == sheddingLevel
          ? _value.sheddingLevel
          : sheddingLevel // ignore: cast_nullable_to_non_nullable
              as int,
      socialNeeds: null == socialNeeds
          ? _value.socialNeeds
          : socialNeeds // ignore: cast_nullable_to_non_nullable
              as int,
      strangerFriendly: null == strangerFriendly
          ? _value.strangerFriendly
          : strangerFriendly // ignore: cast_nullable_to_non_nullable
              as int,
      vocalisation: null == vocalisation
          ? _value.vocalisation
          : vocalisation // ignore: cast_nullable_to_non_nullable
              as int,
      wikipediaUrl: freezed == wikipediaUrl
          ? _value.wikipediaUrl
          : wikipediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatDTOImpl implements _CatDTO {
  _$CatDTOImpl(
      {required this.id,
      required this.name,
      required this.origin,
      required this.description,
      required this.temperament,
      required this.intelligence,
      @JsonKey(name: 'image', fromJson: _imageFromJson) this.imageUrl,
      @JsonKey(name: 'life_span') this.lifeSpan,
      required this.adaptability,
      @JsonKey(name: 'affection_level') required this.affectionLevel,
      @JsonKey(name: 'child_friendly') required this.childFriendly,
      @JsonKey(name: 'dog_friendly') required this.dogFriendly,
      @JsonKey(name: 'energy_level') required this.energyLevel,
      required this.grooming,
      @JsonKey(name: 'health_issues') required this.healthIssues,
      @JsonKey(name: 'shedding_level') required this.sheddingLevel,
      @JsonKey(name: 'social_needs') required this.socialNeeds,
      @JsonKey(name: 'stranger_friendly') required this.strangerFriendly,
      required this.vocalisation,
      @JsonKey(name: 'wikipedia_url') this.wikipediaUrl});

  factory _$CatDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatDTOImplFromJson(json);

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
  final int intelligence;
  @override
  @JsonKey(name: 'image', fromJson: _imageFromJson)
  final String? imageUrl;
  @override
  @JsonKey(name: 'life_span')
  final String? lifeSpan;
  @override
  final int adaptability;
  @override
  @JsonKey(name: 'affection_level')
  final int affectionLevel;
  @override
  @JsonKey(name: 'child_friendly')
  final int childFriendly;
  @override
  @JsonKey(name: 'dog_friendly')
  final int dogFriendly;
  @override
  @JsonKey(name: 'energy_level')
  final int energyLevel;
  @override
  final int grooming;
  @override
  @JsonKey(name: 'health_issues')
  final int healthIssues;
  @override
  @JsonKey(name: 'shedding_level')
  final int sheddingLevel;
  @override
  @JsonKey(name: 'social_needs')
  final int socialNeeds;
  @override
  @JsonKey(name: 'stranger_friendly')
  final int strangerFriendly;
  @override
  final int vocalisation;
  @override
  @JsonKey(name: 'wikipedia_url')
  final String? wikipediaUrl;

  @override
  String toString() {
    return 'CatDTO(id: $id, name: $name, origin: $origin, description: $description, temperament: $temperament, intelligence: $intelligence, imageUrl: $imageUrl, lifeSpan: $lifeSpan, adaptability: $adaptability, affectionLevel: $affectionLevel, childFriendly: $childFriendly, dogFriendly: $dogFriendly, energyLevel: $energyLevel, grooming: $grooming, healthIssues: $healthIssues, sheddingLevel: $sheddingLevel, socialNeeds: $socialNeeds, strangerFriendly: $strangerFriendly, vocalisation: $vocalisation, wikipediaUrl: $wikipediaUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.temperament, temperament) ||
                other.temperament == temperament) &&
            (identical(other.intelligence, intelligence) ||
                other.intelligence == intelligence) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.lifeSpan, lifeSpan) ||
                other.lifeSpan == lifeSpan) &&
            (identical(other.adaptability, adaptability) ||
                other.adaptability == adaptability) &&
            (identical(other.affectionLevel, affectionLevel) ||
                other.affectionLevel == affectionLevel) &&
            (identical(other.childFriendly, childFriendly) ||
                other.childFriendly == childFriendly) &&
            (identical(other.dogFriendly, dogFriendly) ||
                other.dogFriendly == dogFriendly) &&
            (identical(other.energyLevel, energyLevel) ||
                other.energyLevel == energyLevel) &&
            (identical(other.grooming, grooming) ||
                other.grooming == grooming) &&
            (identical(other.healthIssues, healthIssues) ||
                other.healthIssues == healthIssues) &&
            (identical(other.sheddingLevel, sheddingLevel) ||
                other.sheddingLevel == sheddingLevel) &&
            (identical(other.socialNeeds, socialNeeds) ||
                other.socialNeeds == socialNeeds) &&
            (identical(other.strangerFriendly, strangerFriendly) ||
                other.strangerFriendly == strangerFriendly) &&
            (identical(other.vocalisation, vocalisation) ||
                other.vocalisation == vocalisation) &&
            (identical(other.wikipediaUrl, wikipediaUrl) ||
                other.wikipediaUrl == wikipediaUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        origin,
        description,
        temperament,
        intelligence,
        imageUrl,
        lifeSpan,
        adaptability,
        affectionLevel,
        childFriendly,
        dogFriendly,
        energyLevel,
        grooming,
        healthIssues,
        sheddingLevel,
        socialNeeds,
        strangerFriendly,
        vocalisation,
        wikipediaUrl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatDTOImplCopyWith<_$CatDTOImpl> get copyWith =>
      __$$CatDTOImplCopyWithImpl<_$CatDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatDTOImplToJson(
      this,
    );
  }
}

abstract class _CatDTO implements CatDTO {
  factory _CatDTO(
      {required final String id,
      required final String name,
      required final String origin,
      required final String description,
      required final String temperament,
      required final int intelligence,
      @JsonKey(name: 'image', fromJson: _imageFromJson) final String? imageUrl,
      @JsonKey(name: 'life_span') final String? lifeSpan,
      required final int adaptability,
      @JsonKey(name: 'affection_level') required final int affectionLevel,
      @JsonKey(name: 'child_friendly') required final int childFriendly,
      @JsonKey(name: 'dog_friendly') required final int dogFriendly,
      @JsonKey(name: 'energy_level') required final int energyLevel,
      required final int grooming,
      @JsonKey(name: 'health_issues') required final int healthIssues,
      @JsonKey(name: 'shedding_level') required final int sheddingLevel,
      @JsonKey(name: 'social_needs') required final int socialNeeds,
      @JsonKey(name: 'stranger_friendly') required final int strangerFriendly,
      required final int vocalisation,
      @JsonKey(name: 'wikipedia_url')
      final String? wikipediaUrl}) = _$CatDTOImpl;

  factory _CatDTO.fromJson(Map<String, dynamic> json) = _$CatDTOImpl.fromJson;

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
  int get intelligence;
  @override
  @JsonKey(name: 'image', fromJson: _imageFromJson)
  String? get imageUrl;
  @override
  @JsonKey(name: 'life_span')
  String? get lifeSpan;
  @override
  int get adaptability;
  @override
  @JsonKey(name: 'affection_level')
  int get affectionLevel;
  @override
  @JsonKey(name: 'child_friendly')
  int get childFriendly;
  @override
  @JsonKey(name: 'dog_friendly')
  int get dogFriendly;
  @override
  @JsonKey(name: 'energy_level')
  int get energyLevel;
  @override
  int get grooming;
  @override
  @JsonKey(name: 'health_issues')
  int get healthIssues;
  @override
  @JsonKey(name: 'shedding_level')
  int get sheddingLevel;
  @override
  @JsonKey(name: 'social_needs')
  int get socialNeeds;
  @override
  @JsonKey(name: 'stranger_friendly')
  int get strangerFriendly;
  @override
  int get vocalisation;
  @override
  @JsonKey(name: 'wikipedia_url')
  String? get wikipediaUrl;
  @override
  @JsonKey(ignore: true)
  _$$CatDTOImplCopyWith<_$CatDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
