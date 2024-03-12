// To parse this JSON data, do
//
//     final castListModel = castListModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'cast_list_model.g.dart';

List<CastListModel> castListModelFromJson(String str) => List<CastListModel>.from(json.decode(str).map((x) => CastListModel.fromJson(x)));

String castListModelToJson(List<CastListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class CastListModel {
    @JsonKey(name: "person")
    final Person? person;
    @JsonKey(name: "character")
    final Character? character;
    @JsonKey(name: "self")
    final bool? self;
    @JsonKey(name: "voice")
    final bool? voice;

    CastListModel({
        this.person,
        this.character,
        this.self,
        this.voice,
    });

    CastListModel copyWith({
        Person? person,
        Character? character,
        bool? self,
        bool? voice,
    }) => 
        CastListModel(
            person: person ?? this.person,
            character: character ?? this.character,
            self: self ?? this.self,
            voice: voice ?? this.voice,
        );

    factory CastListModel.fromJson(Map<String, dynamic> json) => _$CastListModelFromJson(json);

    Map<String, dynamic> toJson() => _$CastListModelToJson(this);
}

@JsonSerializable()
class Character {
    @JsonKey(name: "id")
    final int? id;
    @JsonKey(name: "url")
    final String? url;
    @JsonKey(name: "name")
    final String? name;
    @JsonKey(name: "image")
    final Image? image;
    @JsonKey(name: "_links")
    final Links? links;

    Character({
        this.id,
        this.url,
        this.name,
        this.image,
        this.links,
    });

    Character copyWith({
        int? id,
        String? url,
        String? name,
        Image? image,
        Links? links,
    }) => 
        Character(
            id: id ?? this.id,
            url: url ?? this.url,
            name: name ?? this.name,
            image: image ?? this.image,
            links: links ?? this.links,
        );

    factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

    Map<String, dynamic> toJson() => _$CharacterToJson(this);
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
    final Self? self;

    Links({
        this.self,
    });

    Links copyWith({
        Self? self,
    }) => 
        Links(
            self: self ?? this.self,
        );

    factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

    Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Self {
    @JsonKey(name: "href")
    final String? href;

    Self({
        this.href,
    });

    Self copyWith({
        String? href,
    }) => 
        Self(
            href: href ?? this.href,
        );

    factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);

    Map<String, dynamic> toJson() => _$SelfToJson(this);
}

@JsonSerializable()
class Person {
    @JsonKey(name: "id")
    final int? id;
    @JsonKey(name: "url")
    final String? url;
    @JsonKey(name: "name")
    final String? name;
    @JsonKey(name: "country")
    final Country? country;
    @JsonKey(name: "birthday")
    final DateTime? birthday;
    @JsonKey(name: "deathday")
    final dynamic deathday;
    @JsonKey(name: "gender")
    final String? gender;
    @JsonKey(name: "image")
    final Image? image;
    @JsonKey(name: "updated")
    final int? updated;
    @JsonKey(name: "_links")
    final Links? links;

    Person({
        this.id,
        this.url,
        this.name,
        this.country,
        this.birthday,
        this.deathday,
        this.gender,
        this.image,
        this.updated,
        this.links,
    });

    Person copyWith({
        int? id,
        String? url,
        String? name,
        Country? country,
        DateTime? birthday,
        dynamic deathday,
        String? gender,
        Image? image,
        int? updated,
        Links? links,
    }) => 
        Person(
            id: id ?? this.id,
            url: url ?? this.url,
            name: name ?? this.name,
            country: country ?? this.country,
            birthday: birthday ?? this.birthday,
            deathday: deathday ?? this.deathday,
            gender: gender ?? this.gender,
            image: image ?? this.image,
            updated: updated ?? this.updated,
            links: links ?? this.links,
        );

    factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

    Map<String, dynamic> toJson() => _$PersonToJson(this);
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
