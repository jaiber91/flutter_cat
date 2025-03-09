// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatDTOImpl _$$CatDTOImplFromJson(Map<String, dynamic> json) => _$CatDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      origin: json['origin'] as String,
      description: json['description'] as String,
      temperament: json['temperament'] as String,
      intelligence: (json['intelligence'] as num).toInt(),
      imageUrl: _imageFromJson(json['image']),
      lifeSpan: json['life_span'] as String?,
      adaptability: (json['adaptability'] as num).toInt(),
      affectionLevel: (json['affection_level'] as num).toInt(),
      childFriendly: (json['child_friendly'] as num).toInt(),
      dogFriendly: (json['dog_friendly'] as num).toInt(),
      energyLevel: (json['energy_level'] as num).toInt(),
      grooming: (json['grooming'] as num).toInt(),
      healthIssues: (json['health_issues'] as num).toInt(),
      sheddingLevel: (json['shedding_level'] as num).toInt(),
      socialNeeds: (json['social_needs'] as num).toInt(),
      strangerFriendly: (json['stranger_friendly'] as num).toInt(),
      vocalisation: (json['vocalisation'] as num).toInt(),
      wikipediaUrl: json['wikipedia_url'] as String?,
    );

Map<String, dynamic> _$$CatDTOImplToJson(_$CatDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'origin': instance.origin,
      'description': instance.description,
      'temperament': instance.temperament,
      'intelligence': instance.intelligence,
      'image': instance.imageUrl,
      'life_span': instance.lifeSpan,
      'adaptability': instance.adaptability,
      'affection_level': instance.affectionLevel,
      'child_friendly': instance.childFriendly,
      'dog_friendly': instance.dogFriendly,
      'energy_level': instance.energyLevel,
      'grooming': instance.grooming,
      'health_issues': instance.healthIssues,
      'shedding_level': instance.sheddingLevel,
      'social_needs': instance.socialNeeds,
      'stranger_friendly': instance.strangerFriendly,
      'vocalisation': instance.vocalisation,
      'wikipedia_url': instance.wikipediaUrl,
    };
