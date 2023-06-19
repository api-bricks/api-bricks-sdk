//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV3FactoryDTO {
  /// Returns a new [UniswapV3FactoryDTO] instance.
  UniswapV3FactoryDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.poolCount,
    this.txCount,
    this.totalVolumeUsd,
    this.totalVolumeEth,
    this.totalFeesUsd,
    this.totalFeesEth,
    this.untrackedVolumeUsd,
    this.totalValueLockedUsd,
    this.totalValueLockedEth,
    this.totalValueLockedUsdUntracked,
    this.totalValueLockedEthUntracked,
    this.owner,
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

  /// Factory address.
  String? id;

  /// Amount of pools created.
  String? poolCount;

  /// Amount of transactions all time.
  String? txCount;

  /// Total volume all time in derived USD.
  String? totalVolumeUsd;

  /// Total volume all time in derived ETH.
  String? totalVolumeEth;

  /// Total swap fees all time in USD.
  String? totalFeesUsd;

  /// All volume even through less reliable USD values.
  String? totalFeesEth;

  /// All volume even through less reliable USD values.
  String? untrackedVolumeUsd;

  /// Total value locked derived in USD.
  String? totalValueLockedUsd;

  /// Total value locked derived in ETH.
  String? totalValueLockedEth;

  /// Total value locked derived in USD untracked.
  String? totalValueLockedUsdUntracked;

  /// Total value locked derived in ETH untracked.
  String? totalValueLockedEthUntracked;

  /// Current owner of the factory.
  String? owner;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV3FactoryDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.poolCount == poolCount &&
     other.txCount == txCount &&
     other.totalVolumeUsd == totalVolumeUsd &&
     other.totalVolumeEth == totalVolumeEth &&
     other.totalFeesUsd == totalFeesUsd &&
     other.totalFeesEth == totalFeesEth &&
     other.untrackedVolumeUsd == untrackedVolumeUsd &&
     other.totalValueLockedUsd == totalValueLockedUsd &&
     other.totalValueLockedEth == totalValueLockedEth &&
     other.totalValueLockedUsdUntracked == totalValueLockedUsdUntracked &&
     other.totalValueLockedEthUntracked == totalValueLockedEthUntracked &&
     other.owner == owner &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (poolCount == null ? 0 : poolCount!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (totalVolumeUsd == null ? 0 : totalVolumeUsd!.hashCode) +
    (totalVolumeEth == null ? 0 : totalVolumeEth!.hashCode) +
    (totalFeesUsd == null ? 0 : totalFeesUsd!.hashCode) +
    (totalFeesEth == null ? 0 : totalFeesEth!.hashCode) +
    (untrackedVolumeUsd == null ? 0 : untrackedVolumeUsd!.hashCode) +
    (totalValueLockedUsd == null ? 0 : totalValueLockedUsd!.hashCode) +
    (totalValueLockedEth == null ? 0 : totalValueLockedEth!.hashCode) +
    (totalValueLockedUsdUntracked == null ? 0 : totalValueLockedUsdUntracked!.hashCode) +
    (totalValueLockedEthUntracked == null ? 0 : totalValueLockedEthUntracked!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'UniswapV3FactoryDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, poolCount=$poolCount, txCount=$txCount, totalVolumeUsd=$totalVolumeUsd, totalVolumeEth=$totalVolumeEth, totalFeesUsd=$totalFeesUsd, totalFeesEth=$totalFeesEth, untrackedVolumeUsd=$untrackedVolumeUsd, totalValueLockedUsd=$totalValueLockedUsd, totalValueLockedEth=$totalValueLockedEth, totalValueLockedUsdUntracked=$totalValueLockedUsdUntracked, totalValueLockedEthUntracked=$totalValueLockedEthUntracked, owner=$owner, vid=$vid]';

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
    if (this.poolCount != null) {
      json[r'pool_count'] = this.poolCount;
    } else {
      json[r'pool_count'] = null;
    }
    if (this.txCount != null) {
      json[r'tx_count'] = this.txCount;
    } else {
      json[r'tx_count'] = null;
    }
    if (this.totalVolumeUsd != null) {
      json[r'total_volume_usd'] = this.totalVolumeUsd;
    } else {
      json[r'total_volume_usd'] = null;
    }
    if (this.totalVolumeEth != null) {
      json[r'total_volume_eth'] = this.totalVolumeEth;
    } else {
      json[r'total_volume_eth'] = null;
    }
    if (this.totalFeesUsd != null) {
      json[r'total_fees_usd'] = this.totalFeesUsd;
    } else {
      json[r'total_fees_usd'] = null;
    }
    if (this.totalFeesEth != null) {
      json[r'total_fees_eth'] = this.totalFeesEth;
    } else {
      json[r'total_fees_eth'] = null;
    }
    if (this.untrackedVolumeUsd != null) {
      json[r'untracked_volume_usd'] = this.untrackedVolumeUsd;
    } else {
      json[r'untracked_volume_usd'] = null;
    }
    if (this.totalValueLockedUsd != null) {
      json[r'total_value_locked_usd'] = this.totalValueLockedUsd;
    } else {
      json[r'total_value_locked_usd'] = null;
    }
    if (this.totalValueLockedEth != null) {
      json[r'total_value_locked_eth'] = this.totalValueLockedEth;
    } else {
      json[r'total_value_locked_eth'] = null;
    }
    if (this.totalValueLockedUsdUntracked != null) {
      json[r'total_value_locked_usd_untracked'] = this.totalValueLockedUsdUntracked;
    } else {
      json[r'total_value_locked_usd_untracked'] = null;
    }
    if (this.totalValueLockedEthUntracked != null) {
      json[r'total_value_locked_eth_untracked'] = this.totalValueLockedEthUntracked;
    } else {
      json[r'total_value_locked_eth_untracked'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV3FactoryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV3FactoryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV3FactoryDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV3FactoryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV3FactoryDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        poolCount: mapValueOfType<String>(json, r'pool_count'),
        txCount: mapValueOfType<String>(json, r'tx_count'),
        totalVolumeUsd: mapValueOfType<String>(json, r'total_volume_usd'),
        totalVolumeEth: mapValueOfType<String>(json, r'total_volume_eth'),
        totalFeesUsd: mapValueOfType<String>(json, r'total_fees_usd'),
        totalFeesEth: mapValueOfType<String>(json, r'total_fees_eth'),
        untrackedVolumeUsd: mapValueOfType<String>(json, r'untracked_volume_usd'),
        totalValueLockedUsd: mapValueOfType<String>(json, r'total_value_locked_usd'),
        totalValueLockedEth: mapValueOfType<String>(json, r'total_value_locked_eth'),
        totalValueLockedUsdUntracked: mapValueOfType<String>(json, r'total_value_locked_usd_untracked'),
        totalValueLockedEthUntracked: mapValueOfType<String>(json, r'total_value_locked_eth_untracked'),
        owner: mapValueOfType<String>(json, r'owner'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<UniswapV3FactoryDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV3FactoryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV3FactoryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV3FactoryDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV3FactoryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV3FactoryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV3FactoryDTO-objects as value to a dart map
  static Map<String, List<UniswapV3FactoryDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV3FactoryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV3FactoryDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

