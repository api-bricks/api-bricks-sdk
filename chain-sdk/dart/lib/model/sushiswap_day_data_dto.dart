//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SushiswapDayDataDTO {
  /// Returns a new [SushiswapDayDataDTO] instance.
  SushiswapDayDataDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.date,
    this.factory_,
    this.volumeEth,
    this.volumeUsd,
    this.untrackedVolume,
    this.liquidityEth,
    this.liquidityUsd,
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

  /// Factory address.
  String? factory_;

  /// Total volume across all pairs on this day, stored as a derived amount of ETH.
  String? volumeEth;

  /// Total volume across all pairs on this day, stored as a derived amount of USD.
  String? volumeUsd;

  /// Total volume across all pairs on this day, untracked
  String? untrackedVolume;

  /// Total liquidity across all pairs in ETH up to and including this day.
  String? liquidityEth;

  /// Total liquidity across all pairs in USD up to and including this day.
  String? liquidityUsd;

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
  bool operator ==(Object other) => identical(this, other) || other is SushiswapDayDataDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.date == date &&
     other.factory_ == factory_ &&
     other.volumeEth == volumeEth &&
     other.volumeUsd == volumeUsd &&
     other.untrackedVolume == untrackedVolume &&
     other.liquidityEth == liquidityEth &&
     other.liquidityUsd == liquidityUsd &&
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
    (factory_ == null ? 0 : factory_!.hashCode) +
    (volumeEth == null ? 0 : volumeEth!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (untrackedVolume == null ? 0 : untrackedVolume!.hashCode) +
    (liquidityEth == null ? 0 : liquidityEth!.hashCode) +
    (liquidityUsd == null ? 0 : liquidityUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'SushiswapDayDataDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, date=$date, factory_=$factory_, volumeEth=$volumeEth, volumeUsd=$volumeUsd, untrackedVolume=$untrackedVolume, liquidityEth=$liquidityEth, liquidityUsd=$liquidityUsd, txCount=$txCount, vid=$vid]';

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
    if (this.factory_ != null) {
      json[r'factory'] = this.factory_;
    } else {
      json[r'factory'] = null;
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
    if (this.untrackedVolume != null) {
      json[r'untracked_volume'] = this.untrackedVolume;
    } else {
      json[r'untracked_volume'] = null;
    }
    if (this.liquidityEth != null) {
      json[r'liquidity_eth'] = this.liquidityEth;
    } else {
      json[r'liquidity_eth'] = null;
    }
    if (this.liquidityUsd != null) {
      json[r'liquidity_usd'] = this.liquidityUsd;
    } else {
      json[r'liquidity_usd'] = null;
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

  /// Returns a new [SushiswapDayDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SushiswapDayDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SushiswapDayDataDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SushiswapDayDataDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SushiswapDayDataDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        date: mapValueOfType<int>(json, r'date'),
        factory_: mapValueOfType<String>(json, r'factory'),
        volumeEth: mapValueOfType<String>(json, r'volume_eth'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        untrackedVolume: mapValueOfType<String>(json, r'untracked_volume'),
        liquidityEth: mapValueOfType<String>(json, r'liquidity_eth'),
        liquidityUsd: mapValueOfType<String>(json, r'liquidity_usd'),
        txCount: mapValueOfType<String>(json, r'tx_count'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<SushiswapDayDataDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SushiswapDayDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SushiswapDayDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SushiswapDayDataDTO> mapFromJson(dynamic json) {
    final map = <String, SushiswapDayDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SushiswapDayDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SushiswapDayDataDTO-objects as value to a dart map
  static Map<String, List<SushiswapDayDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SushiswapDayDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SushiswapDayDataDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

