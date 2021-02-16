//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BalanceData {
  /// Returns a new [BalanceData] instance.
  BalanceData({
    this.assetIdExchange,
    this.assetIdCoinapi,
    this.balance,
    this.available,
    this.locked,
    this.lastUpdatedBy,
    this.rateUsd,
    this.traded,
  });

  /// Exchange currency code.
  String assetIdExchange;

  /// CoinAPI currency code.
  String assetIdCoinapi;

  /// Value of the current total currency balance on the exchange.
  double balance;

  /// Value of the current available currency balance on the exchange that can be used as collateral.
  double available;

  /// Value of the current locked currency balance by the exchange.
  double locked;

  /// Source of the last modification. 
  BalanceDataLastUpdatedByEnum lastUpdatedBy;

  /// Current exchange rate to the USD for the single unit of the currency. 
  double rateUsd;

  /// Value of the current total traded.
  double traded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BalanceData &&
     other.assetIdExchange == assetIdExchange &&
     other.assetIdCoinapi == assetIdCoinapi &&
     other.balance == balance &&
     other.available == available &&
     other.locked == locked &&
     other.lastUpdatedBy == lastUpdatedBy &&
     other.rateUsd == rateUsd &&
     other.traded == traded;

  @override
  int get hashCode =>
    (assetIdExchange == null ? 0 : assetIdExchange.hashCode) +
    (assetIdCoinapi == null ? 0 : assetIdCoinapi.hashCode) +
    (balance == null ? 0 : balance.hashCode) +
    (available == null ? 0 : available.hashCode) +
    (locked == null ? 0 : locked.hashCode) +
    (lastUpdatedBy == null ? 0 : lastUpdatedBy.hashCode) +
    (rateUsd == null ? 0 : rateUsd.hashCode) +
    (traded == null ? 0 : traded.hashCode);

  @override
  String toString() => 'BalanceData[assetIdExchange=$assetIdExchange, assetIdCoinapi=$assetIdCoinapi, balance=$balance, available=$available, locked=$locked, lastUpdatedBy=$lastUpdatedBy, rateUsd=$rateUsd, traded=$traded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (assetIdExchange != null) {
      json[r'asset_id_exchange'] = assetIdExchange;
    }
    if (assetIdCoinapi != null) {
      json[r'asset_id_coinapi'] = assetIdCoinapi;
    }
    if (balance != null) {
      json[r'balance'] = balance;
    }
    if (available != null) {
      json[r'available'] = available;
    }
    if (locked != null) {
      json[r'locked'] = locked;
    }
    if (lastUpdatedBy != null) {
      json[r'last_updated_by'] = lastUpdatedBy;
    }
    if (rateUsd != null) {
      json[r'rate_usd'] = rateUsd;
    }
    if (traded != null) {
      json[r'traded'] = traded;
    }
    return json;
  }

  /// Returns a new [BalanceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BalanceData fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BalanceData(
        assetIdExchange: json[r'asset_id_exchange'],
        assetIdCoinapi: json[r'asset_id_coinapi'],
        balance: json[r'balance'],
        available: json[r'available'],
        locked: json[r'locked'],
        lastUpdatedBy: BalanceDataLastUpdatedByEnum.fromJson(json[r'last_updated_by']),
        rateUsd: json[r'rate_usd'],
        traded: json[r'traded'],
    );

  static List<BalanceData> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BalanceData>[]
      : json.map((v) => BalanceData.fromJson(v)).toList(growable: true == growable);

  static Map<String, BalanceData> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BalanceData>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BalanceData.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BalanceData-objects as value to a dart map
  static Map<String, List<BalanceData>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BalanceData>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BalanceData.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Source of the last modification. 
class BalanceDataLastUpdatedByEnum {
  /// Instantiate a new enum with the provided [value].
  const BalanceDataLastUpdatedByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BalanceDataLastUpdatedByEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const INITIALIZATION = BalanceDataLastUpdatedByEnum._(r'INITIALIZATION');
  static const BALANCE_MANAGER = BalanceDataLastUpdatedByEnum._(r'BALANCE_MANAGER');
  static const EXCHANGE = BalanceDataLastUpdatedByEnum._(r'EXCHANGE');

  /// List of all possible values in this [enum][BalanceDataLastUpdatedByEnum].
  static const values = <BalanceDataLastUpdatedByEnum>[
    INITIALIZATION,
    BALANCE_MANAGER,
    EXCHANGE,
  ];

  static BalanceDataLastUpdatedByEnum fromJson(dynamic value) =>
    BalanceDataLastUpdatedByEnumTypeTransformer().decode(value);

  static List<BalanceDataLastUpdatedByEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BalanceDataLastUpdatedByEnum>[]
      : json
          .map((value) => BalanceDataLastUpdatedByEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [BalanceDataLastUpdatedByEnum] to String,
/// and [decode] dynamic data back to [BalanceDataLastUpdatedByEnum].
class BalanceDataLastUpdatedByEnumTypeTransformer {
  const BalanceDataLastUpdatedByEnumTypeTransformer._();

  factory BalanceDataLastUpdatedByEnumTypeTransformer() => _instance ??= BalanceDataLastUpdatedByEnumTypeTransformer._();

  String encode(BalanceDataLastUpdatedByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BalanceDataLastUpdatedByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BalanceDataLastUpdatedByEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'INITIALIZATION': return BalanceDataLastUpdatedByEnum.INITIALIZATION;
      case r'BALANCE_MANAGER': return BalanceDataLastUpdatedByEnum.BALANCE_MANAGER;
      case r'EXCHANGE': return BalanceDataLastUpdatedByEnum.EXCHANGE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [BalanceDataLastUpdatedByEnumTypeTransformer] instance.
  static BalanceDataLastUpdatedByEnumTypeTransformer _instance;
}

