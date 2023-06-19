//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SushiswapTokenDayDataDTO {
  /// Returns a new [SushiswapTokenDayDataDTO] instance.
  SushiswapTokenDayDataDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.date,
    this.token,
    this.volume,
    this.volumeEth,
    this.volumeUsd,
    this.txCount,
    this.liquidity,
    this.liquidityEth,
    this.liquidityUsd,
    this.priceUsd,
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

  /// Identifier, day start timestamp in unix / 86400.
  String? id;

  /// Unix timestamp for start of day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? date;

  /// Reference to token entity.
  String? token;

  /// Amount of token swapped across all pairs throughout day.
  String? volume;

  /// Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.
  String? volumeEth;

  /// Amount of token swapped across all pairs throughout day stored as a derived amount of USD.
  String? volumeUsd;

  /// Amount of transactions with this token across all pairs.
  String? txCount;

  /// Token amount of token deposited across all pairs.
  String? liquidity;

  /// Token amount of token deposited across all pairs stored as amount of ETH.
  String? liquidityEth;

  /// Token amount of token deposited across all pairs stored as amount of USD.
  String? liquidityUsd;

  /// Price of token in derived USD.
  String? priceUsd;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SushiswapTokenDayDataDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.date == date &&
     other.token == token &&
     other.volume == volume &&
     other.volumeEth == volumeEth &&
     other.volumeUsd == volumeUsd &&
     other.txCount == txCount &&
     other.liquidity == liquidity &&
     other.liquidityEth == liquidityEth &&
     other.liquidityUsd == liquidityUsd &&
     other.priceUsd == priceUsd &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (volume == null ? 0 : volume!.hashCode) +
    (volumeEth == null ? 0 : volumeEth!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (liquidity == null ? 0 : liquidity!.hashCode) +
    (liquidityEth == null ? 0 : liquidityEth!.hashCode) +
    (liquidityUsd == null ? 0 : liquidityUsd!.hashCode) +
    (priceUsd == null ? 0 : priceUsd!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'SushiswapTokenDayDataDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, date=$date, token=$token, volume=$volume, volumeEth=$volumeEth, volumeUsd=$volumeUsd, txCount=$txCount, liquidity=$liquidity, liquidityEth=$liquidityEth, liquidityUsd=$liquidityUsd, priceUsd=$priceUsd, vid=$vid]';

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
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
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
    if (this.priceUsd != null) {
      json[r'price_usd'] = this.priceUsd;
    } else {
      json[r'price_usd'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [SushiswapTokenDayDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SushiswapTokenDayDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SushiswapTokenDayDataDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SushiswapTokenDayDataDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SushiswapTokenDayDataDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        date: mapValueOfType<int>(json, r'date'),
        token: mapValueOfType<String>(json, r'token'),
        volume: mapValueOfType<String>(json, r'volume'),
        volumeEth: mapValueOfType<String>(json, r'volume_eth'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        txCount: mapValueOfType<String>(json, r'tx_count'),
        liquidity: mapValueOfType<String>(json, r'liquidity'),
        liquidityEth: mapValueOfType<String>(json, r'liquidity_eth'),
        liquidityUsd: mapValueOfType<String>(json, r'liquidity_usd'),
        priceUsd: mapValueOfType<String>(json, r'price_usd'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<SushiswapTokenDayDataDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SushiswapTokenDayDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SushiswapTokenDayDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SushiswapTokenDayDataDTO> mapFromJson(dynamic json) {
    final map = <String, SushiswapTokenDayDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SushiswapTokenDayDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SushiswapTokenDayDataDTO-objects as value to a dart map
  static Map<String, List<SushiswapTokenDayDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SushiswapTokenDayDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SushiswapTokenDayDataDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

