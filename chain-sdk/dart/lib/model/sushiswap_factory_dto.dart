//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SushiswapFactoryDTO {
  /// Returns a new [SushiswapFactoryDTO] instance.
  SushiswapFactoryDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.pairCount,
    this.volumeUsd,
    this.volumeEth,
    this.untrackedVolumeUsd,
    this.liquidityUsd,
    this.liquidityEth,
    this.txCount,
    this.tokenCount,
    this.userCount,
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

  /// Amount of pairs created by the Sushiswap factory.
  String? pairCount;

  /// All time USD volume across all pairs (USD is derived).
  String? volumeUsd;

  /// All time volume in ETH across all pairs (ETH is derived).
  String? volumeEth;

  /// Untracked volume USD.
  String? untrackedVolumeUsd;

  /// Total liquidity across all pairs stored as a derived USD amount.
  String? liquidityUsd;

  /// Total liquidity across all pairs stored as a derived ETH amount.
  String? liquidityEth;

  /// All time amount of transactions across all pairs.
  String? txCount;

  /// Total count of tokens.
  String? tokenCount;

  /// Users count.
  String? userCount;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SushiswapFactoryDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.pairCount == pairCount &&
     other.volumeUsd == volumeUsd &&
     other.volumeEth == volumeEth &&
     other.untrackedVolumeUsd == untrackedVolumeUsd &&
     other.liquidityUsd == liquidityUsd &&
     other.liquidityEth == liquidityEth &&
     other.txCount == txCount &&
     other.tokenCount == tokenCount &&
     other.userCount == userCount &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (pairCount == null ? 0 : pairCount!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (volumeEth == null ? 0 : volumeEth!.hashCode) +
    (untrackedVolumeUsd == null ? 0 : untrackedVolumeUsd!.hashCode) +
    (liquidityUsd == null ? 0 : liquidityUsd!.hashCode) +
    (liquidityEth == null ? 0 : liquidityEth!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (tokenCount == null ? 0 : tokenCount!.hashCode) +
    (userCount == null ? 0 : userCount!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'SushiswapFactoryDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, pairCount=$pairCount, volumeUsd=$volumeUsd, volumeEth=$volumeEth, untrackedVolumeUsd=$untrackedVolumeUsd, liquidityUsd=$liquidityUsd, liquidityEth=$liquidityEth, txCount=$txCount, tokenCount=$tokenCount, userCount=$userCount, vid=$vid]';

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
    if (this.volumeUsd != null) {
      json[r'volume_usd'] = this.volumeUsd;
    } else {
      json[r'volume_usd'] = null;
    }
    if (this.volumeEth != null) {
      json[r'volume_eth'] = this.volumeEth;
    } else {
      json[r'volume_eth'] = null;
    }
    if (this.untrackedVolumeUsd != null) {
      json[r'untracked_volume_usd'] = this.untrackedVolumeUsd;
    } else {
      json[r'untracked_volume_usd'] = null;
    }
    if (this.liquidityUsd != null) {
      json[r'liquidity_usd'] = this.liquidityUsd;
    } else {
      json[r'liquidity_usd'] = null;
    }
    if (this.liquidityEth != null) {
      json[r'liquidity_eth'] = this.liquidityEth;
    } else {
      json[r'liquidity_eth'] = null;
    }
    if (this.txCount != null) {
      json[r'tx_count'] = this.txCount;
    } else {
      json[r'tx_count'] = null;
    }
    if (this.tokenCount != null) {
      json[r'token_count'] = this.tokenCount;
    } else {
      json[r'token_count'] = null;
    }
    if (this.userCount != null) {
      json[r'user_count'] = this.userCount;
    } else {
      json[r'user_count'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [SushiswapFactoryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SushiswapFactoryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SushiswapFactoryDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SushiswapFactoryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SushiswapFactoryDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        pairCount: mapValueOfType<String>(json, r'pair_count'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        volumeEth: mapValueOfType<String>(json, r'volume_eth'),
        untrackedVolumeUsd: mapValueOfType<String>(json, r'untracked_volume_usd'),
        liquidityUsd: mapValueOfType<String>(json, r'liquidity_usd'),
        liquidityEth: mapValueOfType<String>(json, r'liquidity_eth'),
        txCount: mapValueOfType<String>(json, r'tx_count'),
        tokenCount: mapValueOfType<String>(json, r'token_count'),
        userCount: mapValueOfType<String>(json, r'user_count'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<SushiswapFactoryDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SushiswapFactoryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SushiswapFactoryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SushiswapFactoryDTO> mapFromJson(dynamic json) {
    final map = <String, SushiswapFactoryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SushiswapFactoryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SushiswapFactoryDTO-objects as value to a dart map
  static Map<String, List<SushiswapFactoryDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SushiswapFactoryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SushiswapFactoryDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

