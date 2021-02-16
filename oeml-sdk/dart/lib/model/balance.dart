//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Balance {
  /// Returns a new [Balance] instance.
  Balance({
    this.exchangeId,
    this.data = const [],
  });

  /// Exchange identifier used to identify the routing destination.
  String exchangeId;

  List<BalanceData> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Balance &&
     other.exchangeId == exchangeId &&
     other.data == data;

  @override
  int get hashCode =>
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'Balance[exchangeId=$exchangeId, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (exchangeId != null) {
      json[r'exchange_id'] = exchangeId;
    }
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [Balance] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Balance fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Balance(
        exchangeId: json[r'exchange_id'],
        data: BalanceData.listFromJson(json[r'data']),
    );

  static List<Balance> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Balance>[]
      : json.map((v) => Balance.fromJson(v)).toList(growable: true == growable);

  static Map<String, Balance> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Balance>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Balance.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Balance-objects as value to a dart map
  static Map<String, List<Balance>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Balance>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Balance.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

