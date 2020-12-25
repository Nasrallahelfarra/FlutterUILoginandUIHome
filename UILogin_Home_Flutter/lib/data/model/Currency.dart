// To parse this JSON data, do
//
//     final currency = currencyFromJson(jsonString);

import 'dart:convert';

Currency currencyFromJson(String str) => Currency.fromJson(json.decode(str));

String currencyToJson(Currency data) => json.encode(data.toJson());

class Currency {
  Currency({
    this.baseCurrencyCode,
    this.baseCurrencySymbol,
    this.defaultDisplayCurrencyCode,
    this.defaultDisplayCurrencySymbol,
    this.availableCurrencyCodes,
    this.exchangeRates,
  });

  String baseCurrencyCode;
  String baseCurrencySymbol;
  String defaultDisplayCurrencyCode;
  String defaultDisplayCurrencySymbol;
  List<String> availableCurrencyCodes;
  List<ExchangeRate> exchangeRates;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    baseCurrencyCode: json["base_currency_code"],
    baseCurrencySymbol: json["base_currency_symbol"],
    defaultDisplayCurrencyCode: json["default_display_currency_code"],
    defaultDisplayCurrencySymbol: json["default_display_currency_symbol"],
    availableCurrencyCodes: List<String>.from(json["available_currency_codes"].map((x) => x)),
    exchangeRates: List<ExchangeRate>.from(json["exchange_rates"].map((x) => ExchangeRate.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "base_currency_code": baseCurrencyCode,
    "base_currency_symbol": baseCurrencySymbol,
    "default_display_currency_code": defaultDisplayCurrencyCode,
    "default_display_currency_symbol": defaultDisplayCurrencySymbol,
    "available_currency_codes": List<dynamic>.from(availableCurrencyCodes.map((x) => x)),
    "exchange_rates": List<dynamic>.from(exchangeRates.map((x) => x.toJson())),
  };
}

class ExchangeRate {
  ExchangeRate({
    this.currencyTo,
    this.rate,
    this.currencyAr
  });

  String currencyTo;
  String currencyAr;
  double rate;

  factory ExchangeRate.fromJson(Map<String, dynamic> json) => ExchangeRate(
    currencyTo: json["currency_to"],
    currencyAr: (json["currencyAr"]==null)?null:json["currencyAr"],

    rate: json["rate"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "currency_to": currencyTo,
    "currencyAr": currencyAr,
    "rate": rate,
  };
}
