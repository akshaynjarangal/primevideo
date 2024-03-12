// To parse this JSON data, do
//
//     final showListModel = showListModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'show_list_model.g.dart';

List<ShowListModel> showListModelFromJson(String str) => List<ShowListModel>.from(json.decode(str).map((x) => ShowListModel.fromJson(x)));

String showListModelToJson(List<ShowListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class ShowListModel {
    @JsonKey(name: "id")
    final int? id;
    @JsonKey(name: "url")
    final String? url;
    @JsonKey(name: "name")
    final String? name;
    @JsonKey(name: "type")
    final String? type;
    @JsonKey(name: "language")
    final String? language;
    @JsonKey(name: "genres")
    final List<String>? genres;
    @JsonKey(name: "status")
    final String? status;
    @JsonKey(name: "runtime")
    final int? runtime;
    @JsonKey(name: "averageRuntime")
    final int? averageRuntime;
    @JsonKey(name: "premiered")
    final DateTime? premiered;
    @JsonKey(name: "ended")
    final DateTime? ended;
    @JsonKey(name: "officialSite")
    final String? officialSite;
    @JsonKey(name: "schedule")
    final Schedule? schedule;
    @JsonKey(name: "rating")
    final Rating? rating;
    @JsonKey(name: "weight")
    final int? weight;
    @JsonKey(name: "network")
    final Network? network;
    @JsonKey(name: "webChannel")
    final dynamic webChannel;
    @JsonKey(name: "dvdCountry")
    final dynamic dvdCountry;
    @JsonKey(name: "externals")
    final Externals? externals;
    @JsonKey(name: "image")
    final Image? image;
    @JsonKey(name: "summary")
    final String? summary;
    @JsonKey(name: "updated")
    final int? updated;
    @JsonKey(name: "_links")
    final Links? links;

    ShowListModel({
        this.id,
        this.url,
        this.name,
        this.type,
        this.language,
        this.genres,
        this.status,
        this.runtime,
        this.averageRuntime,
        this.premiered,
        this.ended,
        this.officialSite,
        this.schedule,
        this.rating,
        this.weight,
        this.network,
        this.webChannel,
        this.dvdCountry,
        this.externals,
        this.image,
        this.summary,
        this.updated,
        this.links,
    });

    ShowListModel copyWith({
        int? id,
        String? url,
        String? name,
        String? type,
        String? language,
        List<String>? genres,
        String? status,
        int? runtime,
        int? averageRuntime,
        DateTime? premiered,
        DateTime? ended,
        String? officialSite,
        Schedule? schedule,
        Rating? rating,
        int? weight,
        Network? network,
        dynamic webChannel,
        dynamic dvdCountry,
        Externals? externals,
        Image? image,
        String? summary,
        int? updated,
        Links? links,
    }) => 
        ShowListModel(
            id: id ?? this.id,
            url: url ?? this.url,
            name: name ?? this.name,
            type: type ?? this.type,
            language: language ?? this.language,
            genres: genres ?? this.genres,
            status: status ?? this.status,
            runtime: runtime ?? this.runtime,
            averageRuntime: averageRuntime ?? this.averageRuntime,
            premiered: premiered ?? this.premiered,
            ended: ended ?? this.ended,
            officialSite: officialSite ?? this.officialSite,
            schedule: schedule ?? this.schedule,
            rating: rating ?? this.rating,
            weight: weight ?? this.weight,
            network: network ?? this.network,
            webChannel: webChannel ?? this.webChannel,
            dvdCountry: dvdCountry ?? this.dvdCountry,
            externals: externals ?? this.externals,
            image: image ?? this.image,
            summary: summary ?? this.summary,
            updated: updated ?? this.updated,
            links: links ?? this.links,
        );

    factory ShowListModel.fromJson(Map<String, dynamic> json) => _$ShowListModelFromJson(json);

    Map<String, dynamic> toJson() => _$ShowListModelToJson(this);
}

@JsonSerializable()
class Externals {
    @JsonKey(name: "tvrage")
    final int? tvrage;
    @JsonKey(name: "thetvdb")
    final int? thetvdb;
    @JsonKey(name: "imdb")
    final String? imdb;

    Externals({
        this.tvrage,
        this.thetvdb,
        this.imdb,
    });

    Externals copyWith({
        int? tvrage,
        int? thetvdb,
        String? imdb,
    }) => 
        Externals(
            tvrage: tvrage ?? this.tvrage,
            thetvdb: thetvdb ?? this.thetvdb,
            imdb: imdb ?? this.imdb,
        );

    factory Externals.fromJson(Map<String, dynamic> json) => _$ExternalsFromJson(json);

    Map<String, dynamic> toJson() => _$ExternalsToJson(this);
}

@JsonSerializable()
class Image {
    @JsonKey(name: "medium")
    final String? medium;
    @JsonKey(name: "original")
    final String? original;

    Image({
        this.medium,
        this.original,
    });

    Image copyWith({
        String? medium,
        String? original,
    }) => 
        Image(
            medium: medium ?? this.medium,
            original: original ?? this.original,
        );

    factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

    Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Links {
    @JsonKey(name: "self")
    final Previousepisode? self;
    @JsonKey(name: "previousepisode")
    final Previousepisode? previousepisode;

    Links({
        this.self,
        this.previousepisode,
    });

    Links copyWith({
        Previousepisode? self,
        Previousepisode? previousepisode,
    }) => 
        Links(
            self: self ?? this.self,
            previousepisode: previousepisode ?? this.previousepisode,
        );

    factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

    Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Previousepisode {
    @JsonKey(name: "href")
    final String? href;

    Previousepisode({
        this.href,
    });

    Previousepisode copyWith({
        String? href,
    }) => 
        Previousepisode(
            href: href ?? this.href,
        );

    factory Previousepisode.fromJson(Map<String, dynamic> json) => _$PreviousepisodeFromJson(json);

    Map<String, dynamic> toJson() => _$PreviousepisodeToJson(this);
}

@JsonSerializable()
class Network {
    @JsonKey(name: "id")
    final int? id;
    @JsonKey(name: "name")
    final String? name;
    @JsonKey(name: "country")
    final Country? country;
    @JsonKey(name: "officialSite")
    final String? officialSite;

    Network({
        this.id,
        this.name,
        this.country,
        this.officialSite,
    });

    Network copyWith({
        int? id,
        String? name,
        Country? country,
        String? officialSite,
    }) => 
        Network(
            id: id ?? this.id,
            name: name ?? this.name,
            country: country ?? this.country,
            officialSite: officialSite ?? this.officialSite,
        );

    factory Network.fromJson(Map<String, dynamic> json) => _$NetworkFromJson(json);

    Map<String, dynamic> toJson() => _$NetworkToJson(this);
}

@JsonSerializable()
class Country {
    @JsonKey(name: "name")
    final String? name;
    @JsonKey(name: "code")
    final String? code;
    @JsonKey(name: "timezone")
    final String? timezone;

    Country({
        this.name,
        this.code,
        this.timezone,
    });

    Country copyWith({
        String? name,
        String? code,
        String? timezone,
    }) => 
        Country(
            name: name ?? this.name,
            code: code ?? this.code,
            timezone: timezone ?? this.timezone,
        );

    factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

    Map<String, dynamic> toJson() => _$CountryToJson(this);
}

@JsonSerializable()
class Rating {
    @JsonKey(name: "average")
    final double? average;

    Rating({
        this.average,
    });

    Rating copyWith({
        double? average,
    }) => 
        Rating(
            average: average ?? this.average,
        );

    factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);

    Map<String, dynamic> toJson() => _$RatingToJson(this);
}

@JsonSerializable()
class Schedule {
    @JsonKey(name: "time")
    final String? time;
    @JsonKey(name: "days")
    final List<String>? days;

    Schedule({
        this.time,
        this.days,
    });

    Schedule copyWith({
        String? time,
        List<String>? days,
    }) => 
        Schedule(
            time: time ?? this.time,
            days: days ?? this.days,
        );

    factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

    Map<String, dynamic> toJson() => _$ScheduleToJson(this);
}
