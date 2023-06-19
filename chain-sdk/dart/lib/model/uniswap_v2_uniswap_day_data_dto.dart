//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV2UniswapDayDataDTO {
  /// Returns a new [UniswapV2UniswapDayDataDTO] instance.
  UniswapV2UniswapDayDataDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.date,
    this.dailyVolumeEth,
    this.dailyVolumeUsd,
    this.dailyVolumeUntracked,
    this.totalVolumeEth,
    this.totalLiquidityEth,
    this.totalVolumeUsd,
    this.totalLiquidityUsd,
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

  /// Unix timestamp for start of day / 86400 giving a unique day index.
  String? id;

  /// Unix timestamp for start of day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? date;

  /// Total volume across all pairs on this day, stored as a derived amount of ETH.
  String? dailyVolumeEth;

  /// Total volume across all pairs on this day, stored as a derived amount of USD.
  String? dailyVolumeUsd;

  /// Total volume across all pairs on this day, untracked.
  String? dailyVolumeUntracked;

  /// All time volume across all pairs in ETH up to and including this day.
  String? totalVolumeEth;

  /// Total liquidity across all pairs in ETH up to and including this day.
  String? totalLiquidityEth;

  /// All time volume across all pairs in USD up to and including this day.
  String? totalVolumeUsd;

  /// Total liquidity across all pairs in USD up to and including this day.
  String? totalLiquidityUsd;

  /// Number of transactions throughout this day.
  String? txCount;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV2UniswapDayDataDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.date == date &&
     other.dailyVolumeEth == dailyVolumeEth &&
     other.dailyVolumeUsd == dailyVolumeUsd &&
     other.dailyVolumeUntracked == dailyVolumeUntracked &&
     other.totalVolumeEth == totalVolumeEth &&
     other.totalLiquidityEth == totalLiquidityEth &&
     other.totalVolumeUsd == totalVolumeUsd &&
     other.totalLiquidityUsd == totalLiquidityUsd &&
     other.txCount == txCount &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (dailyVolumeEth == null ? 0 : dailyVolumeEth!.hashCode) +
    (dailyVolumeUsd == null ? 0 : dailyVolumeUsd!.hashCode) +
    (dailyVolumeUntracked == null ? 0 : dailyVolumeUntracked!.hashCode) +
    (totalVolumeEth == null ? 0 : totalVolumeEth!.hashCode) +
    (totalLiquidityEth == null ? 0 : totalLiquidityEth!.hashCode) +
    (totalVolumeUsd == null ? 0 : totalVolumeUsd!.hashCode) +
    (totalLiquidityUsd == null ? 0 : totalLiquidityUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'UniswapV2UniswapDayDataDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, date=$date, dailyVolumeEth=$dailyVolumeEth, dailyVolumeUsd=$dailyVolumeUsd, dailyVolumeUntracked=$dailyVolumeUntracked, totalVolumeEth=$totalVolumeEth, totalLiquidityEth=$totalLiquidityEth, totalVolumeUsd=$totalVolumeUsd, totalLiquidityUsd=$totalLiquidityUsd, txCount=$txCount, vid=$vid]';

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
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.dailyVolumeEth != null) {
      json[r'daily_volume_eth'] = this.dailyVolumeEth;
    } else {
      json[r'daily_volume_eth'] = null;
    }
    if (this.dailyVolumeUsd != null) {
      json[r'daily_volume_usd'] = this.dailyVolumeUsd;
    } else {
      json[r'daily_volume_usd'] = null;
    }
    if (this.dailyVolumeUntracked != null) {
      json[r'daily_volume_untracked'] = this.dailyVolumeUntracked;
    } else {
      json[r'daily_volume_untracked'] = null;
    }
    if (this.totalVolumeEth != null) {
      json[r'total_volume_eth'] = this.totalVolumeEth;
    } else {
      json[r'total_volume_eth'] = null;
    }
    if (this.totalLiquidityEth != null) {
      json[r'total_liquidity_eth'] = this.totalLiquidityEth;
    } else {
      json[r'total_liquidity_eth'] = null;
    }
    if (this.totalVolumeUsd != null) {
      json[r'total_volume_usd'] = this.totalVolumeUsd;
    } else {
      json[r'total_volume_usd'] = null;
    }
    if (this.totalLiquidityUsd != null) {
      json[r'total_liquidity_usd'] = this.totalLiquidityUsd;
    } else {
      json[r'total_liquidity_usd'] = null;
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

  /// Returns a new [UniswapV2UniswapDayDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV2UniswapDayDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV2UniswapDayDataDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV2UniswapDayDataDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV2UniswapDayDataDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        date: mapValueOfType<int>(json, r'date'),
        dailyVolumeEth: mapValueOfType<String>(json, r'daily_volume_eth'),
        dailyVolumeUsd: mapValueOfType<String>(json, r'daily_volume_usd'),
        dailyVolumeUntracked: mapValueOfType<String>(json, r'daily_volume_untracked'),
        totalVolumeEth: mapValueOfType<String>(json, r'total_volume_eth'),
        totalLiquidityEth: mapValueOfType<String>(json, r'total_liquidity_eth'),
        totalVolumeUsd: mapValueOfType<String>(json, r'total_volume_usd'),
        totalLiquidityUsd: mapValueOfType<String>(json, r'total_liquidity_usd'),
        txCount: mapValueOfType<String>(json, r'tx_count'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<UniswapV2UniswapDayDataDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV2UniswapDayDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV2UniswapDayDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV2UniswapDayDataDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV2UniswapDayDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV2UniswapDayDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV2UniswapDayDataDTO-objects as value to a dart map
  static Map<String, List<UniswapV2UniswapDayDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV2UniswapDayDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV2UniswapDayDataDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

