//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV2TokenDayDataDTO {
  /// Returns a new [UniswapV2TokenDayDataDTO] instance.
  UniswapV2TokenDayDataDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.date,
    this.token,
    this.dailyVolumeToken,
    this.dailyVolumeEth,
    this.dailyVolumeUsd,
    this.dailyTxns,
    this.totalLiquidityToken,
    this.totalLiquidityEth,
    this.totalLiquidityUsd,
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

  /// Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
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
  String? dailyVolumeToken;

  /// Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.
  String? dailyVolumeEth;

  /// Amount of token swapped across all pairs throughout day stored as a derived amount of USD.
  String? dailyVolumeUsd;

  /// Amount of transactions with this token across all pairs.
  String? dailyTxns;

  /// Token amount of token deposited across all pairs.
  String? totalLiquidityToken;

  /// Token amount of token deposited across all pairs stored as amount of ETH.
  String? totalLiquidityEth;

  /// Token amount of token deposited across all pairs stored as amount of USD.
  String? totalLiquidityUsd;

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
  bool operator ==(Object other) => identical(this, other) || other is UniswapV2TokenDayDataDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.date == date &&
     other.token == token &&
     other.dailyVolumeToken == dailyVolumeToken &&
     other.dailyVolumeEth == dailyVolumeEth &&
     other.dailyVolumeUsd == dailyVolumeUsd &&
     other.dailyTxns == dailyTxns &&
     other.totalLiquidityToken == totalLiquidityToken &&
     other.totalLiquidityEth == totalLiquidityEth &&
     other.totalLiquidityUsd == totalLiquidityUsd &&
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
    (dailyVolumeToken == null ? 0 : dailyVolumeToken!.hashCode) +
    (dailyVolumeEth == null ? 0 : dailyVolumeEth!.hashCode) +
    (dailyVolumeUsd == null ? 0 : dailyVolumeUsd!.hashCode) +
    (dailyTxns == null ? 0 : dailyTxns!.hashCode) +
    (totalLiquidityToken == null ? 0 : totalLiquidityToken!.hashCode) +
    (totalLiquidityEth == null ? 0 : totalLiquidityEth!.hashCode) +
    (totalLiquidityUsd == null ? 0 : totalLiquidityUsd!.hashCode) +
    (priceUsd == null ? 0 : priceUsd!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'UniswapV2TokenDayDataDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, date=$date, token=$token, dailyVolumeToken=$dailyVolumeToken, dailyVolumeEth=$dailyVolumeEth, dailyVolumeUsd=$dailyVolumeUsd, dailyTxns=$dailyTxns, totalLiquidityToken=$totalLiquidityToken, totalLiquidityEth=$totalLiquidityEth, totalLiquidityUsd=$totalLiquidityUsd, priceUsd=$priceUsd, vid=$vid]';

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
    if (this.dailyVolumeToken != null) {
      json[r'daily_volume_token'] = this.dailyVolumeToken;
    } else {
      json[r'daily_volume_token'] = null;
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
    if (this.dailyTxns != null) {
      json[r'daily_txns'] = this.dailyTxns;
    } else {
      json[r'daily_txns'] = null;
    }
    if (this.totalLiquidityToken != null) {
      json[r'total_liquidity_token'] = this.totalLiquidityToken;
    } else {
      json[r'total_liquidity_token'] = null;
    }
    if (this.totalLiquidityEth != null) {
      json[r'total_liquidity_eth'] = this.totalLiquidityEth;
    } else {
      json[r'total_liquidity_eth'] = null;
    }
    if (this.totalLiquidityUsd != null) {
      json[r'total_liquidity_usd'] = this.totalLiquidityUsd;
    } else {
      json[r'total_liquidity_usd'] = null;
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

  /// Returns a new [UniswapV2TokenDayDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV2TokenDayDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV2TokenDayDataDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV2TokenDayDataDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV2TokenDayDataDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        date: mapValueOfType<int>(json, r'date'),
        token: mapValueOfType<String>(json, r'token'),
        dailyVolumeToken: mapValueOfType<String>(json, r'daily_volume_token'),
        dailyVolumeEth: mapValueOfType<String>(json, r'daily_volume_eth'),
        dailyVolumeUsd: mapValueOfType<String>(json, r'daily_volume_usd'),
        dailyTxns: mapValueOfType<String>(json, r'daily_txns'),
        totalLiquidityToken: mapValueOfType<String>(json, r'total_liquidity_token'),
        totalLiquidityEth: mapValueOfType<String>(json, r'total_liquidity_eth'),
        totalLiquidityUsd: mapValueOfType<String>(json, r'total_liquidity_usd'),
        priceUsd: mapValueOfType<String>(json, r'price_usd'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<UniswapV2TokenDayDataDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV2TokenDayDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV2TokenDayDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV2TokenDayDataDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV2TokenDayDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV2TokenDayDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV2TokenDayDataDTO-objects as value to a dart map
  static Map<String, List<UniswapV2TokenDayDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV2TokenDayDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV2TokenDayDataDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

