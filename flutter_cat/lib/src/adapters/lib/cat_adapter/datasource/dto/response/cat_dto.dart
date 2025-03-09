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
  }) = _CatDTO;

  factory CatDTO.fromJson(Map<String, dynamic> json) => _$CatDTOFromJson(json);
}

String? _imageFromJson(dynamic image) {
  if (image is Map<String, dynamic> && image.containsKey('url')) {
    return image['url'] as String?;
  }
  return null;
}
