//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV3PoolHourDataDTO {
  /// Returns a new [UniswapV3PoolHourDataDTO] instance.
  UniswapV3PoolHourDataDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.periodStartUnix,
    this.pool,
    this.liquidity,
    this.sqrtPrice,
    this.token0Price,
    this.token1Price,
    this.tick,
    this.feeGrowthGlobal0x128,
    this.feeGrowthGlobal1x128,
    this.tvlUsd,
    this.volumeToken0,
    this.volumeToken1,
    this.volumeUsd,
    this.feesUsd,
    this.txCount,
    this.open,
    this.high,
    this.low,
    this.close,
    this.vid,
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

  /// Identifier, format: (pool address)-(day id)
  String? id;

  /// Unix timestamp for start of hour.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? periodStartUnix;

  /// Pointer to pool.
  String? pool;

  /// In range liquidity at end of period.
  String? liquidity;

  /// Current price tracker at end of period.
  String? sqrtPrice;

  /// Price of token0 - derived from sqrtPrice.
  String? token0Price;

  /// Price of token1 - derived from sqrtPrice.
  String? token1Price;

  /// Current tick at end of period.
  String? tick;

  /// Tracker for global fee growth.
  String? feeGrowthGlobal0x128;

  /// Tracker for global fee growth.
  String? feeGrowthGlobal1x128;

  /// Total value locked derived in USD at end of period.
  String? tvlUsd;

  /// Volume in token0.
  String? volumeToken0;

  /// Volume in token1.
  String? volumeToken1;

  /// Volume in USD.
  String? volumeUsd;

  /// Fees in USD.
  String? feesUsd;

  /// Number of transactions during period.
  String? txCount;

  /// Opening price of token0.
  String? open;

  /// High price of token0.
  String? high;

  /// Low price of token0.
  String? low;

  /// Close price of token0.
  String? close;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV3PoolHourDataDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.periodStartUnix == periodStartUnix &&
     other.pool == pool &&
     other.liquidity == liquidity &&
     other.sqrtPrice == sqrtPrice &&
     other.token0Price == token0Price &&
     other.token1Price == token1Price &&
     other.tick == tick &&
     other.feeGrowthGlobal0x128 == feeGrowthGlobal0x128 &&
     other.feeGrowthGlobal1x128 == feeGrowthGlobal1x128 &&
     other.tvlUsd == tvlUsd &&
     other.volumeToken0 == volumeToken0 &&
     other.volumeToken1 == volumeToken1 &&
     other.volumeUsd == volumeUsd &&
     other.feesUsd == feesUsd &&
     other.txCount == txCount &&
     other.open == open &&
     other.high == high &&
     other.low == low &&
     other.close == close &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (periodStartUnix == null ? 0 : periodStartUnix!.hashCode) +
    (pool == null ? 0 : pool!.hashCode) +
    (liquidity == null ? 0 : liquidity!.hashCode) +
    (sqrtPrice == null ? 0 : sqrtPrice!.hashCode) +
    (token0Price == null ? 0 : token0Price!.hashCode) +
    (token1Price == null ? 0 : token1Price!.hashCode) +
    (tick == null ? 0 : tick!.hashCode) +
    (feeGrowthGlobal0x128 == null ? 0 : feeGrowthGlobal0x128!.hashCode) +
    (feeGrowthGlobal1x128 == null ? 0 : feeGrowthGlobal1x128!.hashCode) +
    (tvlUsd == null ? 0 : tvlUsd!.hashCode) +
    (volumeToken0 == null ? 0 : volumeToken0!.hashCode) +
    (volumeToken1 == null ? 0 : volumeToken1!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (feesUsd == null ? 0 : feesUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (open == null ? 0 : open!.hashCode) +
    (high == null ? 0 : high!.hashCode) +
    (low == null ? 0 : low!.hashCode) +
    (close == null ? 0 : close!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'UniswapV3PoolHourDataDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, periodStartUnix=$periodStartUnix, pool=$pool, liquidity=$liquidity, sqrtPrice=$sqrtPrice, token0Price=$token0Price, token1Price=$token1Price, tick=$tick, feeGrowthGlobal0x128=$feeGrowthGlobal0x128, feeGrowthGlobal1x128=$feeGrowthGlobal1x128, tvlUsd=$tvlUsd, volumeToken0=$volumeToken0, volumeToken1=$volumeToken1, volumeUsd=$volumeUsd, feesUsd=$feesUsd, txCount=$txCount, open=$open, high=$high, low=$low, close=$close, vid=$vid]';

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
    if (this.periodStartUnix != null) {
      json[r'period_start_unix'] = this.periodStartUnix;
    } else {
      json[r'period_start_unix'] = null;
    }
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    if (this.liquidity != null) {
      json[r'liquidity'] = this.liquidity;
    } else {
      json[r'liquidity'] = null;
    }
    if (this.sqrtPrice != null) {
      json[r'sqrt_price'] = this.sqrtPrice;
    } else {
      json[r'sqrt_price'] = null;
    }
    if (this.token0Price != null) {
      json[r'token_0_price'] = this.token0Price;
    } else {
      json[r'token_0_price'] = null;
    }
    if (this.token1Price != null) {
      json[r'token_1_price'] = this.token1Price;
    } else {
      json[r'token_1_price'] = null;
    }
    if (this.tick != null) {
      json[r'tick'] = this.tick;
    } else {
      json[r'tick'] = null;
    }
    if (this.feeGrowthGlobal0x128 != null) {
      json[r'fee_growth_global_0x128'] = this.feeGrowthGlobal0x128;
    } else {
      json[r'fee_growth_global_0x128'] = null;
    }
    if (this.feeGrowthGlobal1x128 != null) {
      json[r'fee_growth_global_1x128'] = this.feeGrowthGlobal1x128;
    } else {
      json[r'fee_growth_global_1x128'] = null;
    }
    if (this.tvlUsd != null) {
      json[r'tvl_usd'] = this.tvlUsd;
    } else {
      json[r'tvl_usd'] = null;
    }
    if (this.volumeToken0 != null) {
      json[r'volume_token_0'] = this.volumeToken0;
    } else {
      json[r'volume_token_0'] = null;
    }
    if (this.volumeToken1 != null) {
      json[r'volume_token_1'] = this.volumeToken1;
    } else {
      json[r'volume_token_1'] = null;
    }
    if (this.volumeUsd != null) {
      json[r'volume_usd'] = this.volumeUsd;
    } else {
      json[r'volume_usd'] = null;
    }
    if (this.feesUsd != null) {
      json[r'fees_usd'] = this.feesUsd;
    } else {
      json[r'fees_usd'] = null;
    }
    if (this.txCount != null) {
      json[r'tx_count'] = this.txCount;
    } else {
      json[r'tx_count'] = null;
    }
    if (this.open != null) {
      json[r'open'] = this.open;
    } else {
      json[r'open'] = null;
    }
    if (this.high != null) {
      json[r'high'] = this.high;
    } else {
      json[r'high'] = null;
    }
    if (this.low != null) {
      json[r'low'] = this.low;
    } else {
      json[r'low'] = null;
    }
    if (this.close != null) {
      json[r'close'] = this.close;
    } else {
      json[r'close'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV3PoolHourDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV3PoolHourDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV3PoolHourDataDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV3PoolHourDataDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV3PoolHourDataDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        periodStartUnix: mapValueOfType<int>(json, r'period_start_unix'),
        pool: mapValueOfType<String>(json, r'pool'),
        liquidity: mapValueOfType<String>(json, r'liquidity'),
        sqrtPrice: mapValueOfType<String>(json, r'sqrt_price'),
        token0Price: mapValueOfType<String>(json, r'token_0_price'),
        token1Price: mapValueOfType<String>(json, r'token_1_price'),
        tick: mapValueOfType<String>(json, r'tick'),
        feeGrowthGlobal0x128: mapValueOfType<String>(json, r'fee_growth_global_0x128'),
        feeGrowthGlobal1x128: mapValueOfType<String>(json, r'fee_growth_global_1x128'),
        tvlUsd: mapValueOfType<String>(json, r'tvl_usd'),
        volumeToken0: mapValueOfType<String>(json, r'volume_token_0'),
        volumeToken1: mapValueOfType<String>(json, r'volume_token_1'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        feesUsd: mapValueOfType<String>(json, r'fees_usd'),
        txCount: mapValueOfType<String>(json, r'tx_count'),
        open: mapValueOfType<String>(json, r'open'),
        high: mapValueOfType<String>(json, r'high'),
        low: mapValueOfType<String>(json, r'low'),
        close: mapValueOfType<String>(json, r'close'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<UniswapV3PoolHourDataDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV3PoolHourDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV3PoolHourDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV3PoolHourDataDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV3PoolHourDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV3PoolHourDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV3PoolHourDataDTO-objects as value to a dart map
  static Map<String, List<UniswapV3PoolHourDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV3PoolHourDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV3PoolHourDataDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

