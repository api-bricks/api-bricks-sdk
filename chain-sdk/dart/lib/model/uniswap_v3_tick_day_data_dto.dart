//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV3TickDayDataDTO {
  /// Returns a new [UniswapV3TickDayDataDTO] instance.
  UniswapV3TickDayDataDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.date,
    this.pool,
    this.tick,
    this.liquidityGross,
    this.liquidityNet,
    this.volumeToken0,
    this.volumeToken1,
    this.volumeUsd,
    this.feesUsd,
    this.feeGrowthOutside0x128,
    this.feeGrowthOutside1x128,
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

  /// Identifier, format: (pool address)-(tick index)-(timestamp).
  String? id;

  /// Timestamp rounded to current day by dividing by 86400.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? date;

  /// Pointer to pool.
  String? pool;

  /// Pointer to tick.
  String? tick;

  /// Total liquidity pool has as tick lower or upper at end of period.
  String? liquidityGross;

  /// How much liquidity changes when tick crossed at end of period.
  String? liquidityNet;

  /// Hourly volume of token0 with this tick in range.
  String? volumeToken0;

  /// Hourly volume of token1 with this tick in range.
  String? volumeToken1;

  /// Hourly volume in derived USD with this tick in range.
  String? volumeUsd;

  /// Fees in USD.
  String? feesUsd;

  /// Variable needed for fee computation.
  String? feeGrowthOutside0x128;

  /// Variable needed for fee computation.
  String? feeGrowthOutside1x128;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV3TickDayDataDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.date == date &&
     other.pool == pool &&
     other.tick == tick &&
     other.liquidityGross == liquidityGross &&
     other.liquidityNet == liquidityNet &&
     other.volumeToken0 == volumeToken0 &&
     other.volumeToken1 == volumeToken1 &&
     other.volumeUsd == volumeUsd &&
     other.feesUsd == feesUsd &&
     other.feeGrowthOutside0x128 == feeGrowthOutside0x128 &&
     other.feeGrowthOutside1x128 == feeGrowthOutside1x128 &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (pool == null ? 0 : pool!.hashCode) +
    (tick == null ? 0 : tick!.hashCode) +
    (liquidityGross == null ? 0 : liquidityGross!.hashCode) +
    (liquidityNet == null ? 0 : liquidityNet!.hashCode) +
    (volumeToken0 == null ? 0 : volumeToken0!.hashCode) +
    (volumeToken1 == null ? 0 : volumeToken1!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (feesUsd == null ? 0 : feesUsd!.hashCode) +
    (feeGrowthOutside0x128 == null ? 0 : feeGrowthOutside0x128!.hashCode) +
    (feeGrowthOutside1x128 == null ? 0 : feeGrowthOutside1x128!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'UniswapV3TickDayDataDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, date=$date, pool=$pool, tick=$tick, liquidityGross=$liquidityGross, liquidityNet=$liquidityNet, volumeToken0=$volumeToken0, volumeToken1=$volumeToken1, volumeUsd=$volumeUsd, feesUsd=$feesUsd, feeGrowthOutside0x128=$feeGrowthOutside0x128, feeGrowthOutside1x128=$feeGrowthOutside1x128, vid=$vid]';

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
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    if (this.tick != null) {
      json[r'tick'] = this.tick;
    } else {
      json[r'tick'] = null;
    }
    if (this.liquidityGross != null) {
      json[r'liquidity_gross'] = this.liquidityGross;
    } else {
      json[r'liquidity_gross'] = null;
    }
    if (this.liquidityNet != null) {
      json[r'liquidity_net'] = this.liquidityNet;
    } else {
      json[r'liquidity_net'] = null;
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
    if (this.feesUsd != null) {
      json[r'fees_usd'] = this.feesUsd;
    } else {
      json[r'fees_usd'] = null;
    }
    if (this.feeGrowthOutside0x128 != null) {
      json[r'fee_growth_outside_0x128'] = this.feeGrowthOutside0x128;
    } else {
      json[r'fee_growth_outside_0x128'] = null;
    }
    if (this.feeGrowthOutside1x128 != null) {
      json[r'fee_growth_outside_1x128'] = this.feeGrowthOutside1x128;
    } else {
      json[r'fee_growth_outside_1x128'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV3TickDayDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV3TickDayDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV3TickDayDataDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV3TickDayDataDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV3TickDayDataDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        date: mapValueOfType<int>(json, r'date'),
        pool: mapValueOfType<String>(json, r'pool'),
        tick: mapValueOfType<String>(json, r'tick'),
        liquidityGross: mapValueOfType<String>(json, r'liquidity_gross'),
        liquidityNet: mapValueOfType<String>(json, r'liquidity_net'),
        volumeToken0: mapValueOfType<String>(json, r'volume_token_0'),
        volumeToken1: mapValueOfType<String>(json, r'volume_token_1'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        feesUsd: mapValueOfType<String>(json, r'fees_usd'),
        feeGrowthOutside0x128: mapValueOfType<String>(json, r'fee_growth_outside_0x128'),
        feeGrowthOutside1x128: mapValueOfType<String>(json, r'fee_growth_outside_1x128'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<UniswapV3TickDayDataDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV3TickDayDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV3TickDayDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV3TickDayDataDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV3TickDayDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV3TickDayDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV3TickDayDataDTO-objects as value to a dart map
  static Map<String, List<UniswapV3TickDayDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV3TickDayDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV3TickDayDataDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

