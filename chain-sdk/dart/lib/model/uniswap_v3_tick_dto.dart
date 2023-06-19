//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV3TickDTO {
  /// Returns a new [UniswapV3TickDTO] instance.
  UniswapV3TickDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.vid,
    this.id,
    this.poolAddress,
    this.tickIdx,
    this.pool,
    this.liquidityGross,
    this.liquidityNet,
    this.price0,
    this.price1,
    this.volumeToken0,
    this.volumeToken1,
    this.volumeUsd,
    this.untrackedVolumeUsd,
    this.feesUsd,
    this.collectedFeesToken0,
    this.collectedFeesToken1,
    this.collectedFeesUsd,
    this.createdAtTimestamp,
    this.liquidityProviderCount,
    this.feeGrowthOutside0x128,
    this.feeGrowthOutside1x128,
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

  /// Identifier, format: (pool address)#(tick index)
  String? id;

  /// Pool address.
  String? poolAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? tickIdx;

  /// Pool address.
  String? pool;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? liquidityGross;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? liquidityNet;

  /// Calculated price of token0 of tick within this pool - constant.
  String? price0;

  /// Calculated price of token1 of tick within this pool - constant.
  String? price1;

  /// Lifetime volume of token0 with this tick in range.
  String? volumeToken0;

  /// Lifetime volume of token1 with this tick in range.
  String? volumeToken1;

  /// Lifetime volume in derived USD with this tick in range.
  String? volumeUsd;

  /// Lifetime volume in untracked USD with this tick in range.
  String? untrackedVolumeUsd;

  /// Fees in USD.
  String? feesUsd;

  /// All time collected fees in token0.
  String? collectedFeesToken0;

  /// All time collected fees in token1.
  String? collectedFeesToken1;

  /// All time collected fees in USD.
  String? collectedFeesUsd;

  /// Created time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAtTimestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? liquidityProviderCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? feeGrowthOutside0x128;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? feeGrowthOutside1x128;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV3TickDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.vid == vid &&
     other.id == id &&
     other.poolAddress == poolAddress &&
     other.tickIdx == tickIdx &&
     other.pool == pool &&
     other.liquidityGross == liquidityGross &&
     other.liquidityNet == liquidityNet &&
     other.price0 == price0 &&
     other.price1 == price1 &&
     other.volumeToken0 == volumeToken0 &&
     other.volumeToken1 == volumeToken1 &&
     other.volumeUsd == volumeUsd &&
     other.untrackedVolumeUsd == untrackedVolumeUsd &&
     other.feesUsd == feesUsd &&
     other.collectedFeesToken0 == collectedFeesToken0 &&
     other.collectedFeesToken1 == collectedFeesToken1 &&
     other.collectedFeesUsd == collectedFeesUsd &&
     other.createdAtTimestamp == createdAtTimestamp &&
     other.liquidityProviderCount == liquidityProviderCount &&
     other.feeGrowthOutside0x128 == feeGrowthOutside0x128 &&
     other.feeGrowthOutside1x128 == feeGrowthOutside1x128;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (poolAddress == null ? 0 : poolAddress!.hashCode) +
    (tickIdx == null ? 0 : tickIdx!.hashCode) +
    (pool == null ? 0 : pool!.hashCode) +
    (liquidityGross == null ? 0 : liquidityGross!.hashCode) +
    (liquidityNet == null ? 0 : liquidityNet!.hashCode) +
    (price0 == null ? 0 : price0!.hashCode) +
    (price1 == null ? 0 : price1!.hashCode) +
    (volumeToken0 == null ? 0 : volumeToken0!.hashCode) +
    (volumeToken1 == null ? 0 : volumeToken1!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (untrackedVolumeUsd == null ? 0 : untrackedVolumeUsd!.hashCode) +
    (feesUsd == null ? 0 : feesUsd!.hashCode) +
    (collectedFeesToken0 == null ? 0 : collectedFeesToken0!.hashCode) +
    (collectedFeesToken1 == null ? 0 : collectedFeesToken1!.hashCode) +
    (collectedFeesUsd == null ? 0 : collectedFeesUsd!.hashCode) +
    (createdAtTimestamp == null ? 0 : createdAtTimestamp!.hashCode) +
    (liquidityProviderCount == null ? 0 : liquidityProviderCount!.hashCode) +
    (feeGrowthOutside0x128 == null ? 0 : feeGrowthOutside0x128!.hashCode) +
    (feeGrowthOutside1x128 == null ? 0 : feeGrowthOutside1x128!.hashCode);

  @override
  String toString() => 'UniswapV3TickDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, vid=$vid, id=$id, poolAddress=$poolAddress, tickIdx=$tickIdx, pool=$pool, liquidityGross=$liquidityGross, liquidityNet=$liquidityNet, price0=$price0, price1=$price1, volumeToken0=$volumeToken0, volumeToken1=$volumeToken1, volumeUsd=$volumeUsd, untrackedVolumeUsd=$untrackedVolumeUsd, feesUsd=$feesUsd, collectedFeesToken0=$collectedFeesToken0, collectedFeesToken1=$collectedFeesToken1, collectedFeesUsd=$collectedFeesUsd, createdAtTimestamp=$createdAtTimestamp, liquidityProviderCount=$liquidityProviderCount, feeGrowthOutside0x128=$feeGrowthOutside0x128, feeGrowthOutside1x128=$feeGrowthOutside1x128]';

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
    if (this.poolAddress != null) {
      json[r'pool_address'] = this.poolAddress;
    } else {
      json[r'pool_address'] = null;
    }
    if (this.tickIdx != null) {
      json[r'tick_idx'] = this.tickIdx;
    } else {
      json[r'tick_idx'] = null;
    }
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    if (this.liquidityGross != null) {
      json[r'liquidity_gross'] = this.liquidityGross;
    } else {
      json[r'liquidity_gross'] = null;
    }
    if (this.liquidityNet != null) {
      json[r'liquidity_net'] = this.liquidityNet;
    } else {
      json[r'liquidity_net'] = null;
    }
    if (this.price0 != null) {
      json[r'price_0'] = this.price0;
    } else {
      json[r'price_0'] = null;
    }
    if (this.price1 != null) {
      json[r'price_1'] = this.price1;
    } else {
      json[r'price_1'] = null;
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
    if (this.createdAtTimestamp != null) {
      json[r'created_at_timestamp'] = this.createdAtTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'created_at_timestamp'] = null;
    }
    if (this.liquidityProviderCount != null) {
      json[r'liquidity_provider_count'] = this.liquidityProviderCount;
    } else {
      json[r'liquidity_provider_count'] = null;
    }
    if (this.feeGrowthOutside0x128 != null) {
      json[r'fee_growth_outside_0x128'] = this.feeGrowthOutside0x128;
    } else {
      json[r'fee_growth_outside_0x128'] = null;
    }
    if (this.feeGrowthOutside1x128 != null) {
      json[r'fee_growth_outside_1x128'] = this.feeGrowthOutside1x128;
    } else {
      json[r'fee_growth_outside_1x128'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV3TickDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV3TickDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV3TickDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV3TickDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV3TickDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        vid: mapValueOfType<int>(json, r'vid'),
        id: mapValueOfType<String>(json, r'id'),
        poolAddress: mapValueOfType<String>(json, r'pool_address'),
        tickIdx: NumericsBigInteger.fromJson(json[r'tick_idx']),
        pool: mapValueOfType<String>(json, r'pool'),
        liquidityGross: NumericsBigInteger.fromJson(json[r'liquidity_gross']),
        liquidityNet: NumericsBigInteger.fromJson(json[r'liquidity_net']),
        price0: mapValueOfType<String>(json, r'price_0'),
        price1: mapValueOfType<String>(json, r'price_1'),
        volumeToken0: mapValueOfType<String>(json, r'volume_token_0'),
        volumeToken1: mapValueOfType<String>(json, r'volume_token_1'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        untrackedVolumeUsd: mapValueOfType<String>(json, r'untracked_volume_usd'),
        feesUsd: mapValueOfType<String>(json, r'fees_usd'),
        collectedFeesToken0: mapValueOfType<String>(json, r'collected_fees_token_0'),
        collectedFeesToken1: mapValueOfType<String>(json, r'collected_fees_token_1'),
        collectedFeesUsd: mapValueOfType<String>(json, r'collected_fees_usd'),
        createdAtTimestamp: mapDateTime(json, r'created_at_timestamp', ''),
        liquidityProviderCount: NumericsBigInteger.fromJson(json[r'liquidity_provider_count']),
        feeGrowthOutside0x128: NumericsBigInteger.fromJson(json[r'fee_growth_outside_0x128']),
        feeGrowthOutside1x128: NumericsBigInteger.fromJson(json[r'fee_growth_outside_1x128']),
      );
    }
    return null;
  }

  static List<UniswapV3TickDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV3TickDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV3TickDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV3TickDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV3TickDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV3TickDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV3TickDTO-objects as value to a dart map
  static Map<String, List<UniswapV3TickDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV3TickDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV3TickDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

