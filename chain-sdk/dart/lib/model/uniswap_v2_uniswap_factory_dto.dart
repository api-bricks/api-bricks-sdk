//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV2UniswapFactoryDTO {
  /// Returns a new [UniswapV2UniswapFactoryDTO] instance.
  UniswapV2UniswapFactoryDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.pairCount,
    this.totalVolumeUsd,
    this.totalVolumeEth,
    this.untrackedVolumeUsd,
    this.totalLiquidityUsd,
    this.totalLiquidityEth,
    this.txCount,
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

  /// Amount of pairs created by the Uniswap factory.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pairCount;

  /// All time USD volume across all pairs (USD is derived).
  String? totalVolumeUsd;

  /// All time volume in ETH across all pairs (ETH is derived).
  String? totalVolumeEth;

  /// Untracked volume USD.
  String? untrackedVolumeUsd;

  /// Total liquidity across all pairs stored as a derived USD amount.
  String? totalLiquidityUsd;

  /// Total liquidity across all pairs stored as a derived ETH amount.
  String? totalLiquidityEth;

  /// All time amount of transactions across all pairs.
  String? txCount;

  /// .
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV2UniswapFactoryDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.pairCount == pairCount &&
     other.totalVolumeUsd == totalVolumeUsd &&
     other.totalVolumeEth == totalVolumeEth &&
     other.untrackedVolumeUsd == untrackedVolumeUsd &&
     other.totalLiquidityUsd == totalLiquidityUsd &&
     other.totalLiquidityEth == totalLiquidityEth &&
     other.txCount == txCount &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (pairCount == null ? 0 : pairCount!.hashCode) +
    (totalVolumeUsd == null ? 0 : totalVolumeUsd!.hashCode) +
    (totalVolumeEth == null ? 0 : totalVolumeEth!.hashCode) +
    (untrackedVolumeUsd == null ? 0 : untrackedVolumeUsd!.hashCode) +
    (totalLiquidityUsd == null ? 0 : totalLiquidityUsd!.hashCode) +
    (totalLiquidityEth == null ? 0 : totalLiquidityEth!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'UniswapV2UniswapFactoryDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, pairCount=$pairCount, totalVolumeUsd=$totalVolumeUsd, totalVolumeEth=$totalVolumeEth, untrackedVolumeUsd=$untrackedVolumeUsd, totalLiquidityUsd=$totalLiquidityUsd, totalLiquidityEth=$totalLiquidityEth, txCount=$txCount, vid=$vid]';

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
    if (this.pairCount != null) {
      json[r'pair_count'] = this.pairCount;
    } else {
      json[r'pair_count'] = null;
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
    if (this.untrackedVolumeUsd != null) {
      json[r'untracked_volume_usd'] = this.untrackedVolumeUsd;
    } else {
      json[r'untracked_volume_usd'] = null;
    }
    if (this.totalLiquidityUsd != null) {
      json[r'total_liquidity_usd'] = this.totalLiquidityUsd;
    } else {
      json[r'total_liquidity_usd'] = null;
    }
    if (this.totalLiquidityEth != null) {
      json[r'total_liquidity_eth'] = this.totalLiquidityEth;
    } else {
      json[r'total_liquidity_eth'] = null;
    }
    if (this.txCount != null) {
      json[r'tx_count'] = this.txCount;
    } else {
      json[r'tx_count'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV2UniswapFactoryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV2UniswapFactoryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV2UniswapFactoryDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV2UniswapFactoryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV2UniswapFactoryDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        pairCount: mapValueOfType<int>(json, r'pair_count'),
        totalVolumeUsd: mapValueOfType<String>(json, r'total_volume_usd'),
        totalVolumeEth: mapValueOfType<String>(json, r'total_volume_eth'),
        untrackedVolumeUsd: mapValueOfType<String>(json, r'untracked_volume_usd'),
        totalLiquidityUsd: mapValueOfType<String>(json, r'total_liquidity_usd'),
        totalLiquidityEth: mapValueOfType<String>(json, r'total_liquidity_eth'),
        txCount: mapValueOfType<String>(json, r'tx_count'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<UniswapV2UniswapFactoryDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV2UniswapFactoryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV2UniswapFactoryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV2UniswapFactoryDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV2UniswapFactoryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV2UniswapFactoryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV2UniswapFactoryDTO-objects as value to a dart map
  static Map<String, List<UniswapV2UniswapFactoryDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV2UniswapFactoryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV2UniswapFactoryDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

