//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV2PairDayDataDTO {
  /// Returns a new [UniswapV2PairDayDataDTO] instance.
  UniswapV2PairDayDataDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.date,
    this.pairAddress,
    this.token0,
    this.token1,
    this.reserve0,
    this.reserve1,
    this.totalSupply,
    this.reserveUsd,
    this.dailyVolumeToken0,
    this.dailyVolumeToken1,
    this.dailyVolumeUsd,
    this.dailyTxns,
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

  /// 
  String? id;

  /// Unix timestamp for start of day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? date;

  /// Address for pair contract.
  String? pairAddress;

  /// Reference to token0.
  String? token0;

  /// Reference to token1.
  String? token1;

  /// Reserve of token0 (updated during each transaction on pair).
  String? reserve0;

  /// Reserve of token1 (updated during each transaction on pair).
  String? reserve1;

  /// Total supply of liquidity token distributed to LPs.
  String? totalSupply;

  /// Reserve of token0 plus token1 stored as a derived USD amount.
  String? reserveUsd;

  /// Total amount of token0 swapped throughout day.
  String? dailyVolumeToken0;

  /// Total amount of token1 swapped throughout day.
  String? dailyVolumeToken1;

  /// Total volume within pair throughout day.
  String? dailyVolumeUsd;

  /// Amount of transactions on pair throughout day.
  String? dailyTxns;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV2PairDayDataDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.date == date &&
     other.pairAddress == pairAddress &&
     other.token0 == token0 &&
     other.token1 == token1 &&
     other.reserve0 == reserve0 &&
     other.reserve1 == reserve1 &&
     other.totalSupply == totalSupply &&
     other.reserveUsd == reserveUsd &&
     other.dailyVolumeToken0 == dailyVolumeToken0 &&
     other.dailyVolumeToken1 == dailyVolumeToken1 &&
     other.dailyVolumeUsd == dailyVolumeUsd &&
     other.dailyTxns == dailyTxns &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (pairAddress == null ? 0 : pairAddress!.hashCode) +
    (token0 == null ? 0 : token0!.hashCode) +
    (token1 == null ? 0 : token1!.hashCode) +
    (reserve0 == null ? 0 : reserve0!.hashCode) +
    (reserve1 == null ? 0 : reserve1!.hashCode) +
    (totalSupply == null ? 0 : totalSupply!.hashCode) +
    (reserveUsd == null ? 0 : reserveUsd!.hashCode) +
    (dailyVolumeToken0 == null ? 0 : dailyVolumeToken0!.hashCode) +
    (dailyVolumeToken1 == null ? 0 : dailyVolumeToken1!.hashCode) +
    (dailyVolumeUsd == null ? 0 : dailyVolumeUsd!.hashCode) +
    (dailyTxns == null ? 0 : dailyTxns!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'UniswapV2PairDayDataDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, date=$date, pairAddress=$pairAddress, token0=$token0, token1=$token1, reserve0=$reserve0, reserve1=$reserve1, totalSupply=$totalSupply, reserveUsd=$reserveUsd, dailyVolumeToken0=$dailyVolumeToken0, dailyVolumeToken1=$dailyVolumeToken1, dailyVolumeUsd=$dailyVolumeUsd, dailyTxns=$dailyTxns, vid=$vid]';

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
    if (this.pairAddress != null) {
      json[r'pair_address'] = this.pairAddress;
    } else {
      json[r'pair_address'] = null;
    }
    if (this.token0 != null) {
      json[r'token_0'] = this.token0;
    } else {
      json[r'token_0'] = null;
    }
    if (this.token1 != null) {
      json[r'token_1'] = this.token1;
    } else {
      json[r'token_1'] = null;
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
    if (this.totalSupply != null) {
      json[r'total_supply'] = this.totalSupply;
    } else {
      json[r'total_supply'] = null;
    }
    if (this.reserveUsd != null) {
      json[r'reserve_usd'] = this.reserveUsd;
    } else {
      json[r'reserve_usd'] = null;
    }
    if (this.dailyVolumeToken0 != null) {
      json[r'daily_volume_token_0'] = this.dailyVolumeToken0;
    } else {
      json[r'daily_volume_token_0'] = null;
    }
    if (this.dailyVolumeToken1 != null) {
      json[r'daily_volume_token_1'] = this.dailyVolumeToken1;
    } else {
      json[r'daily_volume_token_1'] = null;
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
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV2PairDayDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV2PairDayDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV2PairDayDataDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV2PairDayDataDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV2PairDayDataDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        date: mapValueOfType<int>(json, r'date'),
        pairAddress: mapValueOfType<String>(json, r'pair_address'),
        token0: mapValueOfType<String>(json, r'token_0'),
        token1: mapValueOfType<String>(json, r'token_1'),
        reserve0: mapValueOfType<String>(json, r'reserve_0'),
        reserve1: mapValueOfType<String>(json, r'reserve_1'),
        totalSupply: mapValueOfType<String>(json, r'total_supply'),
        reserveUsd: mapValueOfType<String>(json, r'reserve_usd'),
        dailyVolumeToken0: mapValueOfType<String>(json, r'daily_volume_token_0'),
        dailyVolumeToken1: mapValueOfType<String>(json, r'daily_volume_token_1'),
        dailyVolumeUsd: mapValueOfType<String>(json, r'daily_volume_usd'),
        dailyTxns: mapValueOfType<String>(json, r'daily_txns'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<UniswapV2PairDayDataDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV2PairDayDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV2PairDayDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV2PairDayDataDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV2PairDayDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV2PairDayDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV2PairDayDataDTO-objects as value to a dart map
  static Map<String, List<UniswapV2PairDayDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV2PairDayDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV2PairDayDataDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

