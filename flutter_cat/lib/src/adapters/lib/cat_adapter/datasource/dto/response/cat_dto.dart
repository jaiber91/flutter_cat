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
    @JsonKey(fromJson: _imageFromJson, toJson: _imageToJson) String? imageUrl,
  }) = _Cat;

  factory CatDTO.fromJson(Map<String, dynamic> json) => _$CatDTOFromJson(json);
}

String? _imageFromJson(Map<String, dynamic>? image) => image?['url'] as String?;

Map<String, dynamic>? _imageToJson(String? url) =>
    url != null ? {'url': url} : null;
