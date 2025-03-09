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
    };
