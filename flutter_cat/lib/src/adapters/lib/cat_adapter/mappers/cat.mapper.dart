import 'package:domain/cat_domain/cat_domain.dart';
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
      lifeSpan: lifeSpan,
      adaptability: adaptability,
      affectionLevel: affectionLevel,
      childFriendly: childFriendly,
      dogFriendly: dogFriendly,
      energyLevel: energyLevel,
      grooming: grooming,
      healthIssues: healthIssues,
      sheddingLevel: sheddingLevel,
      socialNeeds: socialNeeds,
      strangerFriendly: strangerFriendly,
      vocalisation: vocalisation,
      wikipediaUrl: wikipediaUrl,
    );
  }
}
