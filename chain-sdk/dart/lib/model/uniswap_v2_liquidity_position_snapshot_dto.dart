//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV2LiquidityPositionSnapshotDTO {
  /// Returns a new [UniswapV2LiquidityPositionSnapshotDTO] instance.
  UniswapV2LiquidityPositionSnapshotDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.liquidityPosition,
    this.timestamp,
    this.block,
    this.user,
    this.pair,
    this.token0PriceUsd,
    this.token1PriceUsd,
    this.reserve0,
    this.reserve1,
    this.reserveUsd,
    this.liquidityTokenTotalSupply,
    this.liquidityTokenBalance,
    this.vid,
    this.blockRange,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? entryTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? recvTime;

  /// Number of block in which entity was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? blockNumber;

  /// Identifier, format: (pair address)-(user address)
  String? id;

  /// Reference to LP identifier.
  String? liquidityPosition;

  /// Creation time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestamp;

  /// Number of block in which LP snapshot was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? block;

  /// Reference to user.
  String? user;

  /// Reference to the pair liquidity is being provided on.
  String? pair;

  /// Snapshot of token0 price.
  String? token0PriceUsd;

  /// Snapshot of token0 price.
  String? token1PriceUsd;

  /// Snapshot of pair token0 reserves.
  String? reserve0;

  /// Snapshot of pair token1 reserves.
  String? reserve1;

  /// Snapshot of pair reserves in USD.
  String? reserveUsd;

  /// Snapshot of pool token supply.
  String? liquidityTokenTotalSupply;

  /// Snapshot of users pool token balance.
  String? liquidityTokenBalance;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  /// 
  String? blockRange;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV2LiquidityPositionSnapshotDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.liquidityPosition == liquidityPosition &&
     other.timestamp == timestamp &&
     other.block == block &&
     other.user == user &&
     other.pair == pair &&
     other.token0PriceUsd == token0PriceUsd &&
     other.token1PriceUsd == token1PriceUsd &&
     other.reserve0 == reserve0 &&
     other.reserve1 == reserve1 &&
     other.reserveUsd == reserveUsd &&
     other.liquidityTokenTotalSupply == liquidityTokenTotalSupply &&
     other.liquidityTokenBalance == liquidityTokenBalance &&
     other.vid == vid &&
     other.blockRange == blockRange;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (liquidityPosition == null ? 0 : liquidityPosition!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (block == null ? 0 : block!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (pair == null ? 0 : pair!.hashCode) +
    (token0PriceUsd == null ? 0 : token0PriceUsd!.hashCode) +
    (token1PriceUsd == null ? 0 : token1PriceUsd!.hashCode) +
    (reserve0 == null ? 0 : reserve0!.hashCode) +
    (reserve1 == null ? 0 : reserve1!.hashCode) +
    (reserveUsd == null ? 0 : reserveUsd!.hashCode) +
    (liquidityTokenTotalSupply == null ? 0 : liquidityTokenTotalSupply!.hashCode) +
    (liquidityTokenBalance == null ? 0 : liquidityTokenBalance!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (blockRange == null ? 0 : blockRange!.hashCode);

  @override
  String toString() => 'UniswapV2LiquidityPositionSnapshotDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, liquidityPosition=$liquidityPosition, timestamp=$timestamp, block=$block, user=$user, pair=$pair, token0PriceUsd=$token0PriceUsd, token1PriceUsd=$token1PriceUsd, reserve0=$reserve0, reserve1=$reserve1, reserveUsd=$reserveUsd, liquidityTokenTotalSupply=$liquidityTokenTotalSupply, liquidityTokenBalance=$liquidityTokenBalance, vid=$vid, blockRange=$blockRange]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entryTime != null) {
      json[r'entry_time'] = this.entryTime!.toUtc().toIso8601String();
    } else {
      json[r'entry_time'] = null;
    }
    if (this.recvTime != null) {
      json[r'recv_time'] = this.recvTime!.toUtc().toIso8601String();
    } else {
      json[r'recv_time'] = null;
    }
    if (this.blockNumber != null) {
      json[r'block_number'] = this.blockNumber;
    } else {
      json[r'block_number'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.liquidityPosition != null) {
      json[r'liquidity_position'] = this.liquidityPosition;
    } else {
      json[r'liquidity_position'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.block != null) {
      json[r'block'] = this.block;
    } else {
      json[r'block'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.pair != null) {
      json[r'pair'] = this.pair;
    } else {
      json[r'pair'] = null;
    }
    if (this.token0PriceUsd != null) {
      json[r'token_0_price_usd'] = this.token0PriceUsd;
    } else {
      json[r'token_0_price_usd'] = null;
    }
    if (this.token1PriceUsd != null) {
      json[r'token_1_price_usd'] = this.token1PriceUsd;
    } else {
      json[r'token_1_price_usd'] = null;
    }
    if (this.reserve0 != null) {
      json[r'reserve_0'] = this.reserve0;
    } else {
      json[r'reserve_0'] = null;
    }
    if (this.reserve1 != null) {
      json[r'reserve_1'] = this.reserve1;
    } else {
      json[r'reserve_1'] = null;
    }
    if (this.reserveUsd != null) {
      json[r'reserve_usd'] = this.reserveUsd;
    } else {
      json[r'reserve_usd'] = null;
    }
    if (this.liquidityTokenTotalSupply != null) {
      json[r'liquidity_token_total_supply'] = this.liquidityTokenTotalSupply;
    } else {
      json[r'liquidity_token_total_supply'] = null;
    }
    if (this.liquidityTokenBalance != null) {
      json[r'liquidity_token_balance'] = this.liquidityTokenBalance;
    } else {
      json[r'liquidity_token_balance'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    if (this.blockRange != null) {
      json[r'block_range'] = this.blockRange;
    } else {
      json[r'block_range'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV2LiquidityPositionSnapshotDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV2LiquidityPositionSnapshotDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV2LiquidityPositionSnapshotDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV2LiquidityPositionSnapshotDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV2LiquidityPositionSnapshotDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        liquidityPosition: mapValueOfType<String>(json, r'liquidity_position'),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        block: mapValueOfType<int>(json, r'block'),
        user: mapValueOfType<String>(json, r'user'),
        pair: mapValueOfType<String>(json, r'pair'),
        token0PriceUsd: mapValueOfType<String>(json, r'token_0_price_usd'),
        token1PriceUsd: mapValueOfType<String>(json, r'token_1_price_usd'),
        reserve0: mapValueOfType<String>(json, r'reserve_0'),
        reserve1: mapValueOfType<String>(json, r'reserve_1'),
        reserveUsd: mapValueOfType<String>(json, r'reserve_usd'),
        liquidityTokenTotalSupply: mapValueOfType<String>(json, r'liquidity_token_total_supply'),
        liquidityTokenBalance: mapValueOfType<String>(json, r'liquidity_token_balance'),
        vid: mapValueOfType<int>(json, r'vid'),
        blockRange: mapValueOfType<String>(json, r'block_range'),
      );
    }
    return null;
  }

  static List<UniswapV2LiquidityPositionSnapshotDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV2LiquidityPositionSnapshotDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV2LiquidityPositionSnapshotDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV2LiquidityPositionSnapshotDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV2LiquidityPositionSnapshotDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV2LiquidityPositionSnapshotDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV2LiquidityPositionSnapshotDTO-objects as value to a dart map
  static Map<String, List<UniswapV2LiquidityPositionSnapshotDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV2LiquidityPositionSnapshotDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV2LiquidityPositionSnapshotDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

