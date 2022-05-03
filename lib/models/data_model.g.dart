// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      id: json['id'] as int,
      title: json['title'] as String,
      worth: json['worth'] as String,
      thumbnail: json['thumbnail'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      instructions: json['instructions'] as String,
      openGiveawayUrl: json['open_giveaway_url'] as String,
      publishedDate: json['published_date'] as String,
      type: json['type'] as String,
      platforms: json['platforms'] as String,
      endDate: json['end_date'] as String,
      users: json['users'] as int,
      status: json['status'] as String,
      gamerPowerUrl: json['gamerpower_url'] as String,
      openGiveaway: json['open_giveaway'] as String,
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'worth': instance.worth,
      'thumbnail': instance.thumbnail,
      'image': instance.image,
      'description': instance.description,
      'instructions': instance.instructions,
      'open_giveaway_url': instance.openGiveawayUrl,
      'published_date': instance.publishedDate,
      'type': instance.type,
      'platforms': instance.platforms,
      'end_date': instance.endDate,
      'users': instance.users,
      'status': instance.status,
      'gamerpower_url': instance.gamerPowerUrl,
      'open_giveaway': instance.openGiveaway,
    };
