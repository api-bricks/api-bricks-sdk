//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV3UniswapDayDataDTO {
  /// Returns a new [UniswapV3UniswapDayDataDTO] instance.
  UniswapV3UniswapDayDataDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.vid,
    this.id,
    this.date,
    this.volumeEth,
    this.volumeUsd,
    this.volumeUsdUntracked,
    this.feesUsd,
    this.txCount,
    this.tvlUsd,
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

  /// Timestamp rounded to current day by dividing by 86400.
  String? id;

  /// Timestamp rounded to current day by dividing by 86400.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? date;

  /// Total volume across all pairs on this day, stored as a derived amount of ETH.
  String? volumeEth;

  /// Total volume across all pairs on this day, stored as a derived amount of USD.
  String? volumeUsd;

  /// Total daily volume in Uniswap derived in terms of USD untracked.
  String? volumeUsdUntracked;

  /// Fees in USD
  String? feesUsd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? txCount;

  /// Tvl in terms of USD.
  String? tvlUsd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV3UniswapDayDataDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.vid == vid &&
     other.id == id &&
     other.date == date &&
     other.volumeEth == volumeEth &&
     other.volumeUsd == volumeUsd &&
     other.volumeUsdUntracked == volumeUsdUntracked &&
     other.feesUsd == feesUsd &&
     other.txCount == txCount &&
     other.tvlUsd == tvlUsd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (volumeEth == null ? 0 : volumeEth!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (volumeUsdUntracked == null ? 0 : volumeUsdUntracked!.hashCode) +
    (feesUsd == null ? 0 : feesUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (tvlUsd == null ? 0 : tvlUsd!.hashCode);

  @override
  String toString() => 'UniswapV3UniswapDayDataDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, vid=$vid, id=$id, date=$date, volumeEth=$volumeEth, volumeUsd=$volumeUsd, volumeUsdUntracked=$volumeUsdUntracked, feesUsd=$feesUsd, txCount=$txCount, tvlUsd=$tvlUsd]';

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
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.volumeEth != null) {
      json[r'volume_eth'] = this.volumeEth;
    } else {
      json[r'volume_eth'] = null;
    }
    if (this.volumeUsd != null) {
      json[r'volume_usd'] = this.volumeUsd;
    } else {
      json[r'volume_usd'] = null;
    }
    if (this.volumeUsdUntracked != null) {
      json[r'volume_usd_untracked'] = this.volumeUsdUntracked;
    } else {
      json[r'volume_usd_untracked'] = null;
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
    if (this.tvlUsd != null) {
      json[r'tvl_usd'] = this.tvlUsd;
    } else {
      json[r'tvl_usd'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV3UniswapDayDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV3UniswapDayDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV3UniswapDayDataDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV3UniswapDayDataDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV3UniswapDayDataDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        vid: mapValueOfType<int>(json, r'vid'),
        id: mapValueOfType<String>(json, r'id'),
        date: mapValueOfType<int>(json, r'date'),
        volumeEth: mapValueOfType<String>(json, r'volume_eth'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        volumeUsdUntracked: mapValueOfType<String>(json, r'volume_usd_untracked'),
        feesUsd: mapValueOfType<String>(json, r'fees_usd'),
        txCount: NumericsBigInteger.fromJson(json[r'tx_count']),
        tvlUsd: mapValueOfType<String>(json, r'tvl_usd'),
      );
    }
    return null;
  }

  static List<UniswapV3UniswapDayDataDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV3UniswapDayDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV3UniswapDayDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV3UniswapDayDataDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV3UniswapDayDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV3UniswapDayDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV3UniswapDayDataDTO-objects as value to a dart map
  static Map<String, List<UniswapV3UniswapDayDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV3UniswapDayDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV3UniswapDayDataDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

