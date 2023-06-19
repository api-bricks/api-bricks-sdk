//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SushiswapTokenDTO {
  /// Returns a new [SushiswapTokenDTO] instance.
  SushiswapTokenDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.factory_,
    this.symbol,
    this.name,
    this.decimals,
    this.totalSupply,
    this.volume,
    this.volumeUsd,
    this.untrackedVolumeUsd,
    this.txCount,
    this.liquidity,
    this.derivedEth,
    this.whitelistPairs = const [],
    this.vid,
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

  /// Token address.
  String? id;

  /// Factory address.
  String? factory_;

  /// Token symbol.
  String? symbol;

  /// Token name.
  String? name;

  /// Token decimals.
  String? decimals;

  /// Total supply of liquidity token.
  String? totalSupply;

  /// Amount of token traded all time across all pairs.
  String? volume;

  /// Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold).
  String? volumeUsd;

  /// Amount of token in USD traded all time across pairs (no minimum liquidity threshold).
  String? untrackedVolumeUsd;

  /// Amount of transactions all time in pairs including token.
  String? txCount;

  /// Total amount of token provided as liquidity across all pairs.
  String? liquidity;

  /// ETH per token.
  String? derivedEth;

  /// Array of whitelisted pairs.
  List<String>? whitelistPairs;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  String? tokenSymbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SushiswapTokenDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.factory_ == factory_ &&
     other.symbol == symbol &&
     other.name == name &&
     other.decimals == decimals &&
     other.totalSupply == totalSupply &&
     other.volume == volume &&
     other.volumeUsd == volumeUsd &&
     other.untrackedVolumeUsd == untrackedVolumeUsd &&
     other.txCount == txCount &&
     other.liquidity == liquidity &&
     other.derivedEth == derivedEth &&
     other.whitelistPairs == whitelistPairs &&
     other.vid == vid &&
     other.tokenSymbol == tokenSymbol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (factory_ == null ? 0 : factory_!.hashCode) +
    (symbol == null ? 0 : symbol!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (decimals == null ? 0 : decimals!.hashCode) +
    (totalSupply == null ? 0 : totalSupply!.hashCode) +
    (volume == null ? 0 : volume!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (untrackedVolumeUsd == null ? 0 : untrackedVolumeUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (liquidity == null ? 0 : liquidity!.hashCode) +
    (derivedEth == null ? 0 : derivedEth!.hashCode) +
    (whitelistPairs == null ? 0 : whitelistPairs!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (tokenSymbol == null ? 0 : tokenSymbol!.hashCode);

  @override
  String toString() => 'SushiswapTokenDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, factory_=$factory_, symbol=$symbol, name=$name, decimals=$decimals, totalSupply=$totalSupply, volume=$volume, volumeUsd=$volumeUsd, untrackedVolumeUsd=$untrackedVolumeUsd, txCount=$txCount, liquidity=$liquidity, derivedEth=$derivedEth, whitelistPairs=$whitelistPairs, vid=$vid, tokenSymbol=$tokenSymbol]';

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
    if (this.factory_ != null) {
      json[r'factory'] = this.factory_;
    } else {
      json[r'factory'] = null;
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
    if (this.txCount != null) {
      json[r'tx_count'] = this.txCount;
    } else {
      json[r'tx_count'] = null;
    }
    if (this.liquidity != null) {
      json[r'liquidity'] = this.liquidity;
    } else {
      json[r'liquidity'] = null;
    }
    if (this.derivedEth != null) {
      json[r'derived_eth'] = this.derivedEth;
    } else {
      json[r'derived_eth'] = null;
    }
    if (this.whitelistPairs != null) {
      json[r'whitelist_pairs'] = this.whitelistPairs;
    } else {
      json[r'whitelist_pairs'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    if (this.tokenSymbol != null) {
      json[r'token_symbol'] = this.tokenSymbol;
    } else {
      json[r'token_symbol'] = null;
    }
    return json;
  }

  /// Returns a new [SushiswapTokenDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SushiswapTokenDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SushiswapTokenDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SushiswapTokenDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SushiswapTokenDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        factory_: mapValueOfType<String>(json, r'factory'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        name: mapValueOfType<String>(json, r'name'),
        decimals: mapValueOfType<String>(json, r'decimals'),
        totalSupply: mapValueOfType<String>(json, r'total_supply'),
        volume: mapValueOfType<String>(json, r'volume'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        untrackedVolumeUsd: mapValueOfType<String>(json, r'untracked_volume_usd'),
        txCount: mapValueOfType<String>(json, r'tx_count'),
        liquidity: mapValueOfType<String>(json, r'liquidity'),
        derivedEth: mapValueOfType<String>(json, r'derived_eth'),
        whitelistPairs: json[r'whitelist_pairs'] is List
            ? (json[r'whitelist_pairs'] as List).cast<String>()
            : const [],
        vid: mapValueOfType<int>(json, r'vid'),
        tokenSymbol: mapValueOfType<String>(json, r'token_symbol'),
      );
    }
    return null;
  }

  static List<SushiswapTokenDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SushiswapTokenDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SushiswapTokenDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SushiswapTokenDTO> mapFromJson(dynamic json) {
    final map = <String, SushiswapTokenDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SushiswapTokenDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SushiswapTokenDTO-objects as value to a dart map
  static Map<String, List<SushiswapTokenDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SushiswapTokenDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SushiswapTokenDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

