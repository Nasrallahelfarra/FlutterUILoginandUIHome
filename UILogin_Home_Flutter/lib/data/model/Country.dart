// To parse this JSON data, do
//
//     final country = countryFromJson(jsonString);

import 'dart:convert';

List<Country> countryFromJson(String str) => List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

String countryToJson(List<Country> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Country {
  Country({
    this.id,
    this.twoLetterAbbreviation,
    this.threeLetterAbbreviation,
    this.fullNameLocale,
    this.fullNameEnglish,
    this.availableRegions,
  });

  String id;
  String twoLetterAbbreviation;
  String threeLetterAbbreviation;
  String fullNameLocale;
  String fullNameEnglish;
  List<AvailableRegion> availableRegions;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    id: json["id"],
    twoLetterAbbreviation: json["two_letter_abbreviation"],
    threeLetterAbbreviation: json["three_letter_abbreviation"],
    fullNameLocale: json["full_name_locale"],
    fullNameEnglish: json["full_name_english"],
    availableRegions: json["available_regions"] == null ? null : List<AvailableRegion>.from(json["available_regions"].map((x) => AvailableRegion.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "two_letter_abbreviation": twoLetterAbbreviation,
    "three_letter_abbreviation": threeLetterAbbreviation,
    "full_name_locale": fullNameLocale,
    "full_name_english": fullNameEnglish,
    "available_regions": availableRegions == null ? null : List<dynamic>.from(availableRegions.map((x) => x.toJson())),
  };
}

class AvailableRegion {
  AvailableRegion({
    this.id,
    this.code,
    this.name,
  });

  String id;
  String code;
  String name;

  factory AvailableRegion.fromJson(Map<String, dynamic> json) => AvailableRegion(
    id: json["id"],
    code: json["code"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "name": name,
  };
}
