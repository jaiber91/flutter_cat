import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_dto.freezed.dart';
part 'cat_dto.g.dart';

@freezed
class CatDTO with _$CatDTO {
  factory CatDTO({
    required String id,
    required String name,
    required String origin,
    required String description,
    required String temperament,
    required int intelligence,
    @JsonKey(name: 'image', fromJson: _imageFromJson) String? imageUrl,
    @JsonKey(name: 'life_span') String? lifeSpan,
    required int adaptability,
    @JsonKey(name: 'affection_level') required int affectionLevel,
    @JsonKey(name: 'child_friendly') required int childFriendly,
    @JsonKey(name: 'dog_friendly') required int dogFriendly,
    @JsonKey(name: 'energy_level') required int energyLevel,
    required int grooming,
    @JsonKey(name: 'health_issues') required int healthIssues,
    @JsonKey(name: 'shedding_level') required int sheddingLevel,
    @JsonKey(name: 'social_needs') required int socialNeeds,
    @JsonKey(name: 'stranger_friendly') required int strangerFriendly,
    required int vocalisation,
    @JsonKey(name: 'wikipedia_url') String? wikipediaUrl,
  }) = _CatDTO;

  factory CatDTO.fromJson(Map<String, dynamic> json) => _$CatDTOFromJson(json);
}

String? _imageFromJson(dynamic image) {
  if (image is Map<String, dynamic> && image.containsKey('url')) {
    return image['url'] as String?;
  }
  return null;
}
