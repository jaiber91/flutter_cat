// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatImpl _$$CatImplFromJson(Map<String, dynamic> json) => _$CatImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      origin: json['origin'] as String,
      description: json['description'] as String,
      temperament: json['temperament'] as String,
      imageUrl: _imageFromJson(json['imageUrl'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$CatImplToJson(_$CatImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'origin': instance.origin,
      'description': instance.description,
      'temperament': instance.temperament,
      'imageUrl': _imageToJson(instance.imageUrl),
    };
