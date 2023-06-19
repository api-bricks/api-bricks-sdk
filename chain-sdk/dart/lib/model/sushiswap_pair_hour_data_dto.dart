//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SushiswapPairHourDataDTO {
  /// Returns a new [SushiswapPairHourDataDTO] instance.
  SushiswapPairHourDataDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.date,
    this.pair,
    this.reserve0,
    this.reserve1,
    this.reserveUsd,
    this.volumeToken0,
    this.volumeToken1,
    this.volumeUsd,
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

  /// Identifier, format: (pair id)-(hour start timestamp).
  String? id;

  /// Hour start timestamp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? date;

  /// Reference to pair.
  String? pair;

  /// Reserve of token0 (updated during each transaction on pair).
  String? reserve0;

  /// Reserve of token1 (updated during each transaction on pair).
  String? reserve1;

  /// Reserve of token0 plus token1 stored as a derived USD amount.
  String? reserveUsd;

  /// Total amount of token0 swapped throughout hour.
  String? volumeToken0;

  /// Total amount of token1 swapped throughout hour.
  String? volumeToken1;

  /// Total volume within pair throughout hour.
  String? volumeUsd;

  /// Amount of transactions on pair throughout hour.
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
  bool operator ==(Object other) => identical(this, other) || other is SushiswapPairHourDataDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.date == date &&
     other.pair == pair &&
     other.reserve0 == reserve0 &&
     other.reserve1 == reserve1 &&
     other.reserveUsd == reserveUsd &&
     other.volumeToken0 == volumeToken0 &&
     other.volumeToken1 == volumeToken1 &&
     other.volumeUsd == volumeUsd &&
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
    (pair == null ? 0 : pair!.hashCode) +
    (reserve0 == null ? 0 : reserve0!.hashCode) +
    (reserve1 == null ? 0 : reserve1!.hashCode) +
    (reserveUsd == null ? 0 : reserveUsd!.hashCode) +
    (volumeToken0 == null ? 0 : volumeToken0!.hashCode) +
    (volumeToken1 == null ? 0 : volumeToken1!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'SushiswapPairHourDataDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, date=$date, pair=$pair, reserve0=$reserve0, reserve1=$reserve1, reserveUsd=$reserveUsd, volumeToken0=$volumeToken0, volumeToken1=$volumeToken1, volumeUsd=$volumeUsd, txCount=$txCount, vid=$vid]';

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
    if (this.pair != null) {
      json[r'pair'] = this.pair;
    } else {
      json[r'pair'] = null;
    }
    if (this.reserve0 != null) {
      json[r'reserve_0'] = this.reserve0;
    } else {
      json[r'reserve_0'] = null;
    }
    if (this.reserve1 != null) {
      json[r'reserve_1'] = this.reserve1;
    } else {
      json[r'reserve_1'] = null;
    }
    if (this.reserveUsd != null) {
      json[r'reserve_usd'] = this.reserveUsd;
    } else {
      json[r'reserve_usd'] = null;
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

  /// Returns a new [SushiswapPairHourDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SushiswapPairHourDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SushiswapPairHourDataDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SushiswapPairHourDataDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SushiswapPairHourDataDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        date: mapValueOfType<int>(json, r'date'),
        pair: mapValueOfType<String>(json, r'pair'),
        reserve0: mapValueOfType<String>(json, r'reserve_0'),
        reserve1: mapValueOfType<String>(json, r'reserve_1'),
        reserveUsd: mapValueOfType<String>(json, r'reserve_usd'),
        volumeToken0: mapValueOfType<String>(json, r'volume_token_0'),
        volumeToken1: mapValueOfType<String>(json, r'volume_token_1'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        txCount: mapValueOfType<String>(json, r'tx_count'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<SushiswapPairHourDataDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SushiswapPairHourDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SushiswapPairHourDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SushiswapPairHourDataDTO> mapFromJson(dynamic json) {
    final map = <String, SushiswapPairHourDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SushiswapPairHourDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SushiswapPairHourDataDTO-objects as value to a dart map
  static Map<String, List<SushiswapPairHourDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SushiswapPairHourDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SushiswapPairHourDataDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

