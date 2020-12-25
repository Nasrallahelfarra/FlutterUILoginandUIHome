// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';


User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    this.groupId,
    this.defaultBilling,
    this.defaultShipping,
    this.createdAt,
    this.updatedAt,
    this.createdIn,
    this.email,
    this.firstname,
    this.lastname,
    this.storeId,
    this.websiteId,
    this.addresses,
    this.disableAutoGroupChange,
    this.extensionAttributes,
  });

  int id;
  int groupId;
  String defaultBilling;
  String defaultShipping;
  DateTime createdAt;
  DateTime updatedAt;
  String createdIn;
  String email;
  String firstname;
  String lastname;
  int storeId;
  int websiteId;
  List<Address> addresses;
  int disableAutoGroupChange;
  ExtensionAttributes extensionAttributes;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    groupId: json["group_id"],
    defaultBilling: json["default_billing"],
    defaultShipping: json["default_shipping"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    createdIn: json["created_in"],
    email: json["email"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    storeId: json["store_id"],
    websiteId: json["website_id"],
    addresses: List<Address>.from(json["addresses"].map((x) => Address.fromJson(x))),
    disableAutoGroupChange: json["disable_auto_group_change"],
    extensionAttributes: ExtensionAttributes.fromJson(json["extension_attributes"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "group_id": groupId,
    "default_billing": defaultBilling,
    "default_shipping": defaultShipping,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "created_in": createdIn,
    "email": email,
    "firstname": firstname,
    "lastname": lastname,
    "store_id": storeId,
    "website_id": websiteId,
    "addresses": List<dynamic>.from(addresses.map((x) => x.toJson())),
    "disable_auto_group_change": disableAutoGroupChange,
    "extension_attributes": extensionAttributes.toJson(),
  };
}

class Address {
  Address({
    this.id,
    this.customerId,
    this.region,
    this.regionId,
    this.countryId,
    this.street,
    this.company,
    this.telephone,
    this.postcode,
    this.city,
    this.firstname,
    this.lastname,
    this.defaultShipping,
    this.defaultBilling,
  });

  int id;
  int customerId;
  Region region;
  int regionId;
  String countryId;
  List<String> street;
  String company;
  String telephone;
  String postcode;
  String city;
  String firstname;
  String lastname;
  bool defaultShipping;
  bool defaultBilling;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    id: json["id"],
    customerId: json["customer_id"],
    region: Region.fromJson(json["region"]),
    regionId: json["region_id"],
    countryId: json["country_id"],
    street: List<String>.from(json["street"].map((x) => x)),
    company: json["company"],
    telephone: json["telephone"],
    postcode: json["postcode"],
    city: json["city"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    defaultShipping: json["default_shipping"],
    defaultBilling: json["default_billing"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "customer_id": customerId,
    "region": region.toJson(),
    "region_id": regionId,
    "country_id": countryId,
    "street": List<dynamic>.from(street.map((x) => x)),
    "company": company,
    "telephone": telephone,
    "postcode": postcode,
    "city": city,
    "firstname": firstname,
    "lastname": lastname,
    "default_shipping": defaultShipping,
    "default_billing": defaultBilling,
  };
}

class Region {
  Region({
    this.regionCode,
    this.region,
    this.regionId,
  });

  String regionCode;
  String region;
  int regionId;

  factory Region.fromJson(Map<String, dynamic> json) => Region(
    regionCode: json["region_code"],
    region: json["region"],
    regionId: json["region_id"],
  );

  Map<String, dynamic> toJson() => {
    "region_code": regionCode,
    "region": region,
    "region_id": regionId,
  };
}


class ExtensionAttributes {
  ExtensionAttributes({
    this.isSubscribed,
  });

  bool isSubscribed;

  factory ExtensionAttributes.fromJson(Map<String, dynamic> json) => ExtensionAttributes(
    isSubscribed: json["is_subscribed"],
  );

  Map<String, dynamic> toJson() => {
    "is_subscribed": isSubscribed,
  };
}
