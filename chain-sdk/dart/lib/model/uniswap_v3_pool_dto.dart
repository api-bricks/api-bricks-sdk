//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV3PoolDTO {
  /// Returns a new [UniswapV3PoolDTO] instance.
  UniswapV3PoolDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.vid,
    this.id,
    this.createdAtTimestamp,
    this.token0,
    this.token1,
    this.feeTier,
    this.liquidity,
    this.sqrtPrice,
    this.feeGrowthGlobal0x128,
    this.feeGrowthGlobal1x128,
    this.token0Price,
    this.token1Price,
    this.tick,
    this.observationIndex,
    this.volumeToken0,
    this.volumeToken1,
    this.volumeUsd,
    this.untrackedVolumeUsd,
    this.feesUsd,
    this.txCount,
    this.collectedFeesToken0,
    this.collectedFeesToken1,
    this.collectedFeesUsd,
    this.totalValueLockedToken0,
    this.totalValueLockedToken1,
    this.totalValueLockedEth,
    this.totalValueLockedUsd,
    this.totalValueLockedUsdUntracked,
    this.liquidityProviderCount,
    this.evaluatedAsk,
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

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  /// Pool address.
  String? id;

  /// Creation time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAtTimestamp;

  /// Reference to token0 as stored in pool contract.
  String? token0;

  /// Reference to token1 as stored in pool contract.
  String? token1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? feeTier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? liquidity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? sqrtPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? feeGrowthGlobal0x128;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? feeGrowthGlobal1x128;

  /// Token0 per token1.
  String? token0Price;

  /// Token1 per token0.
  String? token1Price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? tick;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? observationIndex;

  /// All time token0 swapped.
  String? volumeToken0;

  /// All time token1 swapped.
  String? volumeToken1;

  /// All time USD swapped.
  String? volumeUsd;

  /// All time USD swapped, unfiltered for unreliable USD pools.
  String? untrackedVolumeUsd;

  /// Fees in USD.
  String? feesUsd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? txCount;

  /// All time fees collected token0.
  String? collectedFeesToken0;

  /// All time fees collected token1.
  String? collectedFeesToken1;

  /// All time fees collected derived USD.
  String? collectedFeesUsd;

  /// Total token 0 across all ticks.
  String? totalValueLockedToken0;

  /// 
  String? totalValueLockedToken1;

  /// Total token 1 across all ticks.
  String? totalValueLockedEth;

  /// Total value locked USD.
  String? totalValueLockedUsd;

  /// Total value locked derived ETH.
  String? totalValueLockedUsdUntracked;

  /// Liquidity providers count, used to detect new exchanges.
  String? liquidityProviderCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? evaluatedAsk;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV3PoolDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.vid == vid &&
     other.id == id &&
     other.createdAtTimestamp == createdAtTimestamp &&
     other.token0 == token0 &&
     other.token1 == token1 &&
     other.feeTier == feeTier &&
     other.liquidity == liquidity &&
     other.sqrtPrice == sqrtPrice &&
     other.feeGrowthGlobal0x128 == feeGrowthGlobal0x128 &&
     other.feeGrowthGlobal1x128 == feeGrowthGlobal1x128 &&
     other.token0Price == token0Price &&
     other.token1Price == token1Price &&
     other.tick == tick &&
     other.observationIndex == observationIndex &&
     other.volumeToken0 == volumeToken0 &&
     other.volumeToken1 == volumeToken1 &&
     other.volumeUsd == volumeUsd &&
     other.untrackedVolumeUsd == untrackedVolumeUsd &&
     other.feesUsd == feesUsd &&
     other.txCount == txCount &&
     other.collectedFeesToken0 == collectedFeesToken0 &&
     other.collectedFeesToken1 == collectedFeesToken1 &&
     other.collectedFeesUsd == collectedFeesUsd &&
     other.totalValueLockedToken0 == totalValueLockedToken0 &&
     other.totalValueLockedToken1 == totalValueLockedToken1 &&
     other.totalValueLockedEth == totalValueLockedEth &&
     other.totalValueLockedUsd == totalValueLockedUsd &&
     other.totalValueLockedUsdUntracked == totalValueLockedUsdUntracked &&
     other.liquidityProviderCount == liquidityProviderCount &&
     other.evaluatedAsk == evaluatedAsk;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (createdAtTimestamp == null ? 0 : createdAtTimestamp!.hashCode) +
    (token0 == null ? 0 : token0!.hashCode) +
    (token1 == null ? 0 : token1!.hashCode) +
    (feeTier == null ? 0 : feeTier!.hashCode) +
    (liquidity == null ? 0 : liquidity!.hashCode) +
    (sqrtPrice == null ? 0 : sqrtPrice!.hashCode) +
    (feeGrowthGlobal0x128 == null ? 0 : feeGrowthGlobal0x128!.hashCode) +
    (feeGrowthGlobal1x128 == null ? 0 : feeGrowthGlobal1x128!.hashCode) +
    (token0Price == null ? 0 : token0Price!.hashCode) +
    (token1Price == null ? 0 : token1Price!.hashCode) +
    (tick == null ? 0 : tick!.hashCode) +
    (observationIndex == null ? 0 : observationIndex!.hashCode) +
    (volumeToken0 == null ? 0 : volumeToken0!.hashCode) +
    (volumeToken1 == null ? 0 : volumeToken1!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (untrackedVolumeUsd == null ? 0 : untrackedVolumeUsd!.hashCode) +
    (feesUsd == null ? 0 : feesUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (collectedFeesToken0 == null ? 0 : collectedFeesToken0!.hashCode) +
    (collectedFeesToken1 == null ? 0 : collectedFeesToken1!.hashCode) +
    (collectedFeesUsd == null ? 0 : collectedFeesUsd!.hashCode) +
    (totalValueLockedToken0 == null ? 0 : totalValueLockedToken0!.hashCode) +
    (totalValueLockedToken1 == null ? 0 : totalValueLockedToken1!.hashCode) +
    (totalValueLockedEth == null ? 0 : totalValueLockedEth!.hashCode) +
    (totalValueLockedUsd == null ? 0 : totalValueLockedUsd!.hashCode) +
    (totalValueLockedUsdUntracked == null ? 0 : totalValueLockedUsdUntracked!.hashCode) +
    (liquidityProviderCount == null ? 0 : liquidityProviderCount!.hashCode) +
    (evaluatedAsk == null ? 0 : evaluatedAsk!.hashCode);

  @override
  String toString() => 'UniswapV3PoolDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, vid=$vid, id=$id, createdAtTimestamp=$createdAtTimestamp, token0=$token0, token1=$token1, feeTier=$feeTier, liquidity=$liquidity, sqrtPrice=$sqrtPrice, feeGrowthGlobal0x128=$feeGrowthGlobal0x128, feeGrowthGlobal1x128=$feeGrowthGlobal1x128, token0Price=$token0Price, token1Price=$token1Price, tick=$tick, observationIndex=$observationIndex, volumeToken0=$volumeToken0, volumeToken1=$volumeToken1, volumeUsd=$volumeUsd, untrackedVolumeUsd=$untrackedVolumeUsd, feesUsd=$feesUsd, txCount=$txCount, collectedFeesToken0=$collectedFeesToken0, collectedFeesToken1=$collectedFeesToken1, collectedFeesUsd=$collectedFeesUsd, totalValueLockedToken0=$totalValueLockedToken0, totalValueLockedToken1=$totalValueLockedToken1, totalValueLockedEth=$totalValueLockedEth, totalValueLockedUsd=$totalValueLockedUsd, totalValueLockedUsdUntracked=$totalValueLockedUsdUntracked, liquidityProviderCount=$liquidityProviderCount, evaluatedAsk=$evaluatedAsk]';

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
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.createdAtTimestamp != null) {
      json[r'created_at_timestamp'] = this.createdAtTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'created_at_timestamp'] = null;
    }
    if (this.token0 != null) {
      json[r'token_0'] = this.token0;
    } else {
      json[r'token_0'] = null;
    }
    if (this.token1 != null) {
      json[r'token_1'] = this.token1;
    } else {
      json[r'token_1'] = null;
    }
    if (this.feeTier != null) {
      json[r'fee_tier'] = this.feeTier;
    } else {
      json[r'fee_tier'] = null;
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
    if (this.observationIndex != null) {
      json[r'observation_index'] = this.observationIndex;
    } else {
      json[r'observation_index'] = null;
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
    if (this.untrackedVolumeUsd != null) {
      json[r'untracked_volume_usd'] = this.untrackedVolumeUsd;
    } else {
      json[r'untracked_volume_usd'] = null;
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
    if (this.collectedFeesToken0 != null) {
      json[r'collected_fees_token_0'] = this.collectedFeesToken0;
    } else {
      json[r'collected_fees_token_0'] = null;
    }
    if (this.collectedFeesToken1 != null) {
      json[r'collected_fees_token_1'] = this.collectedFeesToken1;
    } else {
      json[r'collected_fees_token_1'] = null;
    }
    if (this.collectedFeesUsd != null) {
      json[r'collected_fees_usd'] = this.collectedFeesUsd;
    } else {
      json[r'collected_fees_usd'] = null;
    }
    if (this.totalValueLockedToken0 != null) {
      json[r'total_value_locked_token_0'] = this.totalValueLockedToken0;
    } else {
      json[r'total_value_locked_token_0'] = null;
    }
    if (this.totalValueLockedToken1 != null) {
      json[r'total_value_locked_token_1'] = this.totalValueLockedToken1;
    } else {
      json[r'total_value_locked_token_1'] = null;
    }
    if (this.totalValueLockedEth != null) {
      json[r'total_value_locked_eth'] = this.totalValueLockedEth;
    } else {
      json[r'total_value_locked_eth'] = null;
    }
    if (this.totalValueLockedUsd != null) {
      json[r'total_value_locked_usd'] = this.totalValueLockedUsd;
    } else {
      json[r'total_value_locked_usd'] = null;
    }
    if (this.totalValueLockedUsdUntracked != null) {
      json[r'total_value_locked_usd_untracked'] = this.totalValueLockedUsdUntracked;
    } else {
      json[r'total_value_locked_usd_untracked'] = null;
    }
    if (this.liquidityProviderCount != null) {
      json[r'liquidity_provider_count'] = this.liquidityProviderCount;
    } else {
      json[r'liquidity_provider_count'] = null;
    }
    if (this.evaluatedAsk != null) {
      json[r'evaluated_ask'] = this.evaluatedAsk;
    } else {
      json[r'evaluated_ask'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV3PoolDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV3PoolDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV3PoolDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV3PoolDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV3PoolDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        vid: mapValueOfType<int>(json, r'vid'),
        id: mapValueOfType<String>(json, r'id'),
        createdAtTimestamp: mapDateTime(json, r'created_at_timestamp', ''),
        token0: mapValueOfType<String>(json, r'token_0'),
        token1: mapValueOfType<String>(json, r'token_1'),
        feeTier: NumericsBigInteger.fromJson(json[r'fee_tier']),
        liquidity: NumericsBigInteger.fromJson(json[r'liquidity']),
        sqrtPrice: NumericsBigInteger.fromJson(json[r'sqrt_price']),
        feeGrowthGlobal0x128: NumericsBigInteger.fromJson(json[r'fee_growth_global_0x128']),
        feeGrowthGlobal1x128: NumericsBigInteger.fromJson(json[r'fee_growth_global_1x128']),
        token0Price: mapValueOfType<String>(json, r'token_0_price'),
        token1Price: mapValueOfType<String>(json, r'token_1_price'),
        tick: NumericsBigInteger.fromJson(json[r'tick']),
        observationIndex: NumericsBigInteger.fromJson(json[r'observation_index']),
        volumeToken0: mapValueOfType<String>(json, r'volume_token_0'),
        volumeToken1: mapValueOfType<String>(json, r'volume_token_1'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        untrackedVolumeUsd: mapValueOfType<String>(json, r'untracked_volume_usd'),
        feesUsd: mapValueOfType<String>(json, r'fees_usd'),
        txCount: NumericsBigInteger.fromJson(json[r'tx_count']),
        collectedFeesToken0: mapValueOfType<String>(json, r'collected_fees_token_0'),
        collectedFeesToken1: mapValueOfType<String>(json, r'collected_fees_token_1'),
        collectedFeesUsd: mapValueOfType<String>(json, r'collected_fees_usd'),
        totalValueLockedToken0: mapValueOfType<String>(json, r'total_value_locked_token_0'),
        totalValueLockedToken1: mapValueOfType<String>(json, r'total_value_locked_token_1'),
        totalValueLockedEth: mapValueOfType<String>(json, r'total_value_locked_eth'),
        totalValueLockedUsd: mapValueOfType<String>(json, r'total_value_locked_usd'),
        totalValueLockedUsdUntracked: mapValueOfType<String>(json, r'total_value_locked_usd_untracked'),
        liquidityProviderCount: mapValueOfType<String>(json, r'liquidity_provider_count'),
        evaluatedAsk: mapValueOfType<double>(json, r'evaluated_ask'),
      );
    }
    return null;
  }

  static List<UniswapV3PoolDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV3PoolDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV3PoolDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV3PoolDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV3PoolDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV3PoolDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV3PoolDTO-objects as value to a dart map
  static Map<String, List<UniswapV3PoolDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV3PoolDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV3PoolDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

