//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BalanceDataInner {
  /// Returns a new [BalanceDataInner] instance.
  BalanceDataInner({
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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assetIdExchange;

  /// CoinAPI currency code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assetIdCoinapi;

  /// Value of the current total currency balance on the exchange.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? balance;

  /// Value of the current available currency balance on the exchange that can be used as collateral.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? available;

  /// Value of the current locked currency balance by the exchange.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? locked;

  /// Source of the last modification. 
  BalanceDataInnerLastUpdatedByEnum? lastUpdatedBy;

  /// Current exchange rate to the USD for the single unit of the currency. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? rateUsd;

  /// Value of the current total traded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? traded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BalanceDataInner &&
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
    // ignore: unnecessary_parenthesis
    (assetIdExchange == null ? 0 : assetIdExchange!.hashCode) +
    (assetIdCoinapi == null ? 0 : assetIdCoinapi!.hashCode) +
    (balance == null ? 0 : balance!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (lastUpdatedBy == null ? 0 : lastUpdatedBy!.hashCode) +
    (rateUsd == null ? 0 : rateUsd!.hashCode) +
    (traded == null ? 0 : traded!.hashCode);

  @override
  String toString() => 'BalanceDataInner[assetIdExchange=$assetIdExchange, assetIdCoinapi=$assetIdCoinapi, balance=$balance, available=$available, locked=$locked, lastUpdatedBy=$lastUpdatedBy, rateUsd=$rateUsd, traded=$traded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assetIdExchange != null) {
      json[r'asset_id_exchange'] = this.assetIdExchange;
    } else {
      json[r'asset_id_exchange'] = null;
    }
    if (this.assetIdCoinapi != null) {
      json[r'asset_id_coinapi'] = this.assetIdCoinapi;
    } else {
      json[r'asset_id_coinapi'] = null;
    }
    if (this.balance != null) {
      json[r'balance'] = this.balance;
    } else {
      json[r'balance'] = null;
    }
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.lastUpdatedBy != null) {
      json[r'last_updated_by'] = this.lastUpdatedBy;
    } else {
      json[r'last_updated_by'] = null;
    }
    if (this.rateUsd != null) {
      json[r'rate_usd'] = this.rateUsd;
    } else {
      json[r'rate_usd'] = null;
    }
    if (this.traded != null) {
      json[r'traded'] = this.traded;
    } else {
      json[r'traded'] = null;
    }
    return json;
  }

  /// Returns a new [BalanceDataInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BalanceDataInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BalanceDataInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BalanceDataInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BalanceDataInner(
        assetIdExchange: mapValueOfType<String>(json, r'asset_id_exchange'),
        assetIdCoinapi: mapValueOfType<String>(json, r'asset_id_coinapi'),
        balance: mapValueOfType<double>(json, r'balance'),
        available: mapValueOfType<double>(json, r'available'),
        locked: mapValueOfType<double>(json, r'locked'),
        lastUpdatedBy: BalanceDataInnerLastUpdatedByEnum.fromJson(json[r'last_updated_by']),
        rateUsd: mapValueOfType<double>(json, r'rate_usd'),
        traded: mapValueOfType<double>(json, r'traded'),
      );
    }
    return null;
  }

  static List<BalanceDataInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BalanceDataInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BalanceDataInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BalanceDataInner> mapFromJson(dynamic json) {
    final map = <String, BalanceDataInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BalanceDataInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BalanceDataInner-objects as value to a dart map
  static Map<String, List<BalanceDataInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BalanceDataInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BalanceDataInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Source of the last modification. 
class BalanceDataInnerLastUpdatedByEnum {
  /// Instantiate a new enum with the provided [value].
  const BalanceDataInnerLastUpdatedByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INITIALIZATION = BalanceDataInnerLastUpdatedByEnum._(r'INITIALIZATION');
  static const BALANCE_MANAGER = BalanceDataInnerLastUpdatedByEnum._(r'BALANCE_MANAGER');
  static const EXCHANGE = BalanceDataInnerLastUpdatedByEnum._(r'EXCHANGE');

  /// List of all possible values in this [enum][BalanceDataInnerLastUpdatedByEnum].
  static const values = <BalanceDataInnerLastUpdatedByEnum>[
    INITIALIZATION,
    BALANCE_MANAGER,
    EXCHANGE,
  ];

  static BalanceDataInnerLastUpdatedByEnum? fromJson(dynamic value) => BalanceDataInnerLastUpdatedByEnumTypeTransformer().decode(value);

  static List<BalanceDataInnerLastUpdatedByEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BalanceDataInnerLastUpdatedByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BalanceDataInnerLastUpdatedByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BalanceDataInnerLastUpdatedByEnum] to String,
/// and [decode] dynamic data back to [BalanceDataInnerLastUpdatedByEnum].
class BalanceDataInnerLastUpdatedByEnumTypeTransformer {
  factory BalanceDataInnerLastUpdatedByEnumTypeTransformer() => _instance ??= const BalanceDataInnerLastUpdatedByEnumTypeTransformer._();

  const BalanceDataInnerLastUpdatedByEnumTypeTransformer._();

  String encode(BalanceDataInnerLastUpdatedByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BalanceDataInnerLastUpdatedByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BalanceDataInnerLastUpdatedByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INITIALIZATION': return BalanceDataInnerLastUpdatedByEnum.INITIALIZATION;
        case r'BALANCE_MANAGER': return BalanceDataInnerLastUpdatedByEnum.BALANCE_MANAGER;
        case r'EXCHANGE': return BalanceDataInnerLastUpdatedByEnum.EXCHANGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BalanceDataInnerLastUpdatedByEnumTypeTransformer] instance.
  static BalanceDataInnerLastUpdatedByEnumTypeTransformer? _instance;
}


