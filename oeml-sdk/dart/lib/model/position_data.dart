//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PositionData {
  /// Returns a new [PositionData] instance.
  PositionData({
    this.symbolIdExchange,
    this.symbolIdCoinapi,
    this.avgEntryPrice,
    this.quantity,
    this.side,
    this.unrealizedPnl,
    this.leverage,
    this.crossMargin,
    this.liquidationPrice,
    this.rawData,
  });

  /// Exchange symbol.
  String symbolIdExchange;

  /// CoinAPI symbol.
  String symbolIdCoinapi;

  /// Calculated average price of all fills on this position.
  num avgEntryPrice;

  /// The current position quantity.
  num quantity;

  OrdSide side;

  /// Unrealised profit or loss (PNL) of this position.
  num unrealizedPnl;

  /// Leverage for this position reported by the exchange.
  num leverage;

  /// Is cross margin mode enable for this position?
  bool crossMargin;

  /// Liquidation price. If mark price will reach this value, the position will be liquidated.
  num liquidationPrice;

  Object rawData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PositionData &&
     other.symbolIdExchange == symbolIdExchange &&
     other.symbolIdCoinapi == symbolIdCoinapi &&
     other.avgEntryPrice == avgEntryPrice &&
     other.quantity == quantity &&
     other.side == side &&
     other.unrealizedPnl == unrealizedPnl &&
     other.leverage == leverage &&
     other.crossMargin == crossMargin &&
     other.liquidationPrice == liquidationPrice &&
     other.rawData == rawData;

  @override
  int get hashCode =>
    (symbolIdExchange == null ? 0 : symbolIdExchange.hashCode) +
    (symbolIdCoinapi == null ? 0 : symbolIdCoinapi.hashCode) +
    (avgEntryPrice == null ? 0 : avgEntryPrice.hashCode) +
    (quantity == null ? 0 : quantity.hashCode) +
    (side == null ? 0 : side.hashCode) +
    (unrealizedPnl == null ? 0 : unrealizedPnl.hashCode) +
    (leverage == null ? 0 : leverage.hashCode) +
    (crossMargin == null ? 0 : crossMargin.hashCode) +
    (liquidationPrice == null ? 0 : liquidationPrice.hashCode) +
    (rawData == null ? 0 : rawData.hashCode);

  @override
  String toString() => 'PositionData[symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, avgEntryPrice=$avgEntryPrice, quantity=$quantity, side=$side, unrealizedPnl=$unrealizedPnl, leverage=$leverage, crossMargin=$crossMargin, liquidationPrice=$liquidationPrice, rawData=$rawData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (symbolIdExchange != null) {
      json[r'symbol_id_exchange'] = symbolIdExchange;
    }
    if (symbolIdCoinapi != null) {
      json[r'symbol_id_coinapi'] = symbolIdCoinapi;
    }
    if (avgEntryPrice != null) {
      json[r'avg_entry_price'] = avgEntryPrice;
    }
    if (quantity != null) {
      json[r'quantity'] = quantity;
    }
    if (side != null) {
      json[r'side'] = side;
    }
    if (unrealizedPnl != null) {
      json[r'unrealized_pnl'] = unrealizedPnl;
    }
    if (leverage != null) {
      json[r'leverage'] = leverage;
    }
    if (crossMargin != null) {
      json[r'cross_margin'] = crossMargin;
    }
    if (liquidationPrice != null) {
      json[r'liquidation_price'] = liquidationPrice;
    }
    if (rawData != null) {
      json[r'raw_data'] = rawData;
    }
    return json;
  }

  /// Returns a new [PositionData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PositionData fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PositionData(
        symbolIdExchange: json[r'symbol_id_exchange'],
        symbolIdCoinapi: json[r'symbol_id_coinapi'],
        avgEntryPrice: json[r'avg_entry_price'] == null ?
          null :
          json[r'avg_entry_price'].toDouble(),
        quantity: json[r'quantity'] == null ?
          null :
          json[r'quantity'].toDouble(),
        side: OrdSide.fromJson(json[r'side']),
        unrealizedPnl: json[r'unrealized_pnl'] == null ?
          null :
          json[r'unrealized_pnl'].toDouble(),
        leverage: json[r'leverage'] == null ?
          null :
          json[r'leverage'].toDouble(),
        crossMargin: json[r'cross_margin'],
        liquidationPrice: json[r'liquidation_price'] == null ?
          null :
          json[r'liquidation_price'].toDouble(),
        rawData: json[r'raw_data'],
    );

  static List<PositionData> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PositionData>[]
      : json.map((v) => PositionData.fromJson(v)).toList(growable: true == growable);

  static Map<String, PositionData> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PositionData>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PositionData.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PositionData-objects as value to a dart map
  static Map<String, List<PositionData>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PositionData>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PositionData.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

