// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CastListModel _$CastListModelFromJson(Map<String, dynamic> json) =>
    CastListModel(
      person: json['person'] == null
          ? null
          : Person.fromJson(json['person'] as Map<String, dynamic>),
      character: json['character'] == null
          ? null
          : Character.fromJson(json['character'] as Map<String, dynamic>),
      self: json['self'] as bool?,
      voice: json['voice'] as bool?,
    );

Map<String, dynamic> _$CastListModelToJson(CastListModel instance) =>
    <String, dynamic>{
      'person': instance.person,
      'character': instance.character,
      'self': instance.self,
      'voice': instance.voice,
    };

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['id'] as int?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'image': instance.image,
      '_links': instance.links,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      medium: json['medium'] as String?,
      original: json['original'] as String?,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'medium': instance.medium,
      'original': instance.original,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      self: json['self'] == null
          ? null
          : Self.fromJson(json['self'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self,
    };

Self _$SelfFromJson(Map<String, dynamic> json) => Self(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$SelfToJson(Self instance) => <String, dynamic>{
      'href': instance.href,
    };

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      id: json['id'] as int?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      deathday: json['deathday'],
      gender: json['gender'] as String?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      updated: json['updated'] as int?,
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'country': instance.country,
      'birthday': instance.birthday?.toIso8601String(),
      'deathday': instance.deathday,
      'gender': instance.gender,
      'image': instance.image,
      'updated': instance.updated,
      '_links': instance.links,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      name: json['name'] as String?,
      code: json['code'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'timezone': instance.timezone,
    };
