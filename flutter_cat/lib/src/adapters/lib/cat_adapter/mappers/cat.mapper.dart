import 'package:domain/cat/cat_domain.dart';
import '../datasource/dto/response/cat_dto.dart';

extension CatMapper on CatDTO {
  CatDomain toDomain() {
    return CatDomain(
      id: id,
      name: name,
      origin: origin,
      description: description,
      temperament: temperament,
      intelligence: intelligence,
      imageUrl: imageUrl,
    );
  }
}
