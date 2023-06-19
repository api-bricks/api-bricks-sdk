//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV3TokenDTO {
  /// Returns a new [UniswapV3TokenDTO] instance.
  UniswapV3TokenDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.vid,
    this.id,
    this.symbol,
    this.name,
    this.decimals,
    this.totalSupply,
    this.volume,
    this.volumeUsd,
    this.untrackedVolumeUsd,
    this.feesUsd,
    this.txCount,
    this.poolCount,
    this.totalValueLocked,
    this.totalValueLockedUsd,
    this.totalValueLockedUsdUntracked,
    this.derivedEth,
    this.whitelistPools = const [],
    this.tokenSymbol,
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

  /// Token address.
  String? id;

  /// Token symbol.
  String? symbol;

  /// Token name.
  String? name;

  /// Token decimals.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? decimals;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? totalSupply;

  /// Volume in token units.
  String? volume;

  /// Volume in derived USD.
  String? volumeUsd;

  /// Volume in USD even on pools with less reliable USD values.
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? poolCount;

  /// Liquidity across all pools in token units.
  String? totalValueLocked;

  /// Liquidity across all pools in derived USD.
  String? totalValueLockedUsd;

  /// TVL derived in USD untracked.
  String? totalValueLockedUsdUntracked;

  /// Derived price in ETH.
  String? derivedEth;

  /// Pools token is in that are white listed for USD pricing.
  List<String>? whitelistPools;

  String? tokenSymbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV3TokenDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.vid == vid &&
     other.id == id &&
     other.symbol == symbol &&
     other.name == name &&
     other.decimals == decimals &&
     other.totalSupply == totalSupply &&
     other.volume == volume &&
     other.volumeUsd == volumeUsd &&
     other.untrackedVolumeUsd == untrackedVolumeUsd &&
     other.feesUsd == feesUsd &&
     other.txCount == txCount &&
     other.poolCount == poolCount &&
     other.totalValueLocked == totalValueLocked &&
     other.totalValueLockedUsd == totalValueLockedUsd &&
     other.totalValueLockedUsdUntracked == totalValueLockedUsdUntracked &&
     other.derivedEth == derivedEth &&
     other.whitelistPools == whitelistPools &&
     other.tokenSymbol == tokenSymbol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (symbol == null ? 0 : symbol!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (decimals == null ? 0 : decimals!.hashCode) +
    (totalSupply == null ? 0 : totalSupply!.hashCode) +
    (volume == null ? 0 : volume!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (untrackedVolumeUsd == null ? 0 : untrackedVolumeUsd!.hashCode) +
    (feesUsd == null ? 0 : feesUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (poolCount == null ? 0 : poolCount!.hashCode) +
    (totalValueLocked == null ? 0 : totalValueLocked!.hashCode) +
    (totalValueLockedUsd == null ? 0 : totalValueLockedUsd!.hashCode) +
    (totalValueLockedUsdUntracked == null ? 0 : totalValueLockedUsdUntracked!.hashCode) +
    (derivedEth == null ? 0 : derivedEth!.hashCode) +
    (whitelistPools == null ? 0 : whitelistPools!.hashCode) +
    (tokenSymbol == null ? 0 : tokenSymbol!.hashCode);

  @override
  String toString() => 'UniswapV3TokenDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, vid=$vid, id=$id, symbol=$symbol, name=$name, decimals=$decimals, totalSupply=$totalSupply, volume=$volume, volumeUsd=$volumeUsd, untrackedVolumeUsd=$untrackedVolumeUsd, feesUsd=$feesUsd, txCount=$txCount, poolCount=$poolCount, totalValueLocked=$totalValueLocked, totalValueLockedUsd=$totalValueLockedUsd, totalValueLockedUsdUntracked=$totalValueLockedUsdUntracked, derivedEth=$derivedEth, whitelistPools=$whitelistPools, tokenSymbol=$tokenSymbol]';

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
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.decimals != null) {
      json[r'decimals'] = this.decimals;
    } else {
      json[r'decimals'] = null;
    }
    if (this.totalSupply != null) {
      json[r'total_supply'] = this.totalSupply;
    } else {
      json[r'total_supply'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
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
    if (this.poolCount != null) {
      json[r'pool_count'] = this.poolCount;
    } else {
      json[r'pool_count'] = null;
    }
    if (this.totalValueLocked != null) {
      json[r'total_value_locked'] = this.totalValueLocked;
    } else {
      json[r'total_value_locked'] = null;
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
    if (this.derivedEth != null) {
      json[r'derived_eth'] = this.derivedEth;
    } else {
      json[r'derived_eth'] = null;
    }
    if (this.whitelistPools != null) {
      json[r'whitelist_pools'] = this.whitelistPools;
    } else {
      json[r'whitelist_pools'] = null;
    }
    if (this.tokenSymbol != null) {
      json[r'token_symbol'] = this.tokenSymbol;
    } else {
      json[r'token_symbol'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV3TokenDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV3TokenDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV3TokenDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV3TokenDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV3TokenDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        vid: mapValueOfType<int>(json, r'vid'),
        id: mapValueOfType<String>(json, r'id'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        name: mapValueOfType<String>(json, r'name'),
        decimals: mapValueOfType<int>(json, r'decimals'),
        totalSupply: NumericsBigInteger.fromJson(json[r'total_supply']),
        volume: mapValueOfType<String>(json, r'volume'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        untrackedVolumeUsd: mapValueOfType<String>(json, r'untracked_volume_usd'),
        feesUsd: mapValueOfType<String>(json, r'fees_usd'),
        txCount: NumericsBigInteger.fromJson(json[r'tx_count']),
        poolCount: NumericsBigInteger.fromJson(json[r'pool_count']),
        totalValueLocked: mapValueOfType<String>(json, r'total_value_locked'),
        totalValueLockedUsd: mapValueOfType<String>(json, r'total_value_locked_usd'),
        totalValueLockedUsdUntracked: mapValueOfType<String>(json, r'total_value_locked_usd_untracked'),
        derivedEth: mapValueOfType<String>(json, r'derived_eth'),
        whitelistPools: json[r'whitelist_pools'] is List
            ? (json[r'whitelist_pools'] as List).cast<String>()
            : const [],
        tokenSymbol: mapValueOfType<String>(json, r'token_symbol'),
      );
    }
    return null;
  }

  static List<UniswapV3TokenDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV3TokenDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV3TokenDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV3TokenDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV3TokenDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV3TokenDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV3TokenDTO-objects as value to a dart map
  static Map<String, List<UniswapV3TokenDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV3TokenDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV3TokenDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

