// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowListModel _$ShowListModelFromJson(Map<String, dynamic> json) =>
    ShowListModel(
      id: json['id'] as int?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      language: json['language'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as String?,
      runtime: json['runtime'] as int?,
      averageRuntime: json['averageRuntime'] as int?,
      premiered: json['premiered'] == null
          ? null
          : DateTime.parse(json['premiered'] as String),
      ended: json['ended'] == null
          ? null
          : DateTime.parse(json['ended'] as String),
      officialSite: json['officialSite'] as String?,
      schedule: json['schedule'] == null
          ? null
          : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      weight: json['weight'] as int?,
      network: json['network'] == null
          ? null
          : Network.fromJson(json['network'] as Map<String, dynamic>),
      webChannel: json['webChannel'],
      dvdCountry: json['dvdCountry'],
      externals: json['externals'] == null
          ? null
          : Externals.fromJson(json['externals'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
      updated: json['updated'] as int?,
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShowListModelToJson(ShowListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
      'language': instance.language,
      'genres': instance.genres,
      'status': instance.status,
      'runtime': instance.runtime,
      'averageRuntime': instance.averageRuntime,
      'premiered': instance.premiered?.toIso8601String(),
      'ended': instance.ended?.toIso8601String(),
      'officialSite': instance.officialSite,
      'schedule': instance.schedule,
      'rating': instance.rating,
      'weight': instance.weight,
      'network': instance.network,
      'webChannel': instance.webChannel,
      'dvdCountry': instance.dvdCountry,
      'externals': instance.externals,
      'image': instance.image,
      'summary': instance.summary,
      'updated': instance.updated,
      '_links': instance.links,
    };

Externals _$ExternalsFromJson(Map<String, dynamic> json) => Externals(
      tvrage: json['tvrage'] as int?,
      thetvdb: json['thetvdb'] as int?,
      imdb: json['imdb'] as String?,
    );

Map<String, dynamic> _$ExternalsToJson(Externals instance) => <String, dynamic>{
      'tvrage': instance.tvrage,
      'thetvdb': instance.thetvdb,
      'imdb': instance.imdb,
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
          : Previousepisode.fromJson(json['self'] as Map<String, dynamic>),
      previousepisode: json['previousepisode'] == null
          ? null
          : Previousepisode.fromJson(
              json['previousepisode'] as Map<String, dynamic>,),
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self,
      'previousepisode': instance.previousepisode,
    };

Previousepisode _$PreviousepisodeFromJson(Map<String, dynamic> json) =>
    Previousepisode(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$PreviousepisodeToJson(Previousepisode instance) =>
    <String, dynamic>{
      'href': instance.href,
    };

Network _$NetworkFromJson(Map<String, dynamic> json) => Network(
      id: json['id'] as int?,
      name: json['name'] as String?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      officialSite: json['officialSite'] as String?,
    );

Map<String, dynamic> _$NetworkToJson(Network instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'officialSite': instance.officialSite,
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

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      average: (json['average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'average': instance.average,
    };

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => Schedule(
      time: json['time'] as String?,
      days: (json['days'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'time': instance.time,
      'days': instance.days,
    };
