//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SushiswapLiquidityPositionDTO {
  /// Returns a new [SushiswapLiquidityPositionDTO] instance.
  SushiswapLiquidityPositionDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.user,
    this.pair,
    this.liquidityTokenBalance,
    this.block,
    this.timestamp,
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

  /// Identifier, format: (pair address)-(user address)
  String? id;

  /// User address.
  String? user;

  /// Pair address.
  String? pair;

  /// Amount of LP tokens minted for this position.
  String? liquidityTokenBalance;

  /// Block number at which position was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? block;

  /// Creation time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestamp;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SushiswapLiquidityPositionDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.user == user &&
     other.pair == pair &&
     other.liquidityTokenBalance == liquidityTokenBalance &&
     other.block == block &&
     other.timestamp == timestamp &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (pair == null ? 0 : pair!.hashCode) +
    (liquidityTokenBalance == null ? 0 : liquidityTokenBalance!.hashCode) +
    (block == null ? 0 : block!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'SushiswapLiquidityPositionDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, user=$user, pair=$pair, liquidityTokenBalance=$liquidityTokenBalance, block=$block, timestamp=$timestamp, vid=$vid]';

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
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.pair != null) {
      json[r'pair'] = this.pair;
    } else {
      json[r'pair'] = null;
    }
    if (this.liquidityTokenBalance != null) {
      json[r'liquidity_token_balance'] = this.liquidityTokenBalance;
    } else {
      json[r'liquidity_token_balance'] = null;
    }
    if (this.block != null) {
      json[r'block'] = this.block;
    } else {
      json[r'block'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [SushiswapLiquidityPositionDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SushiswapLiquidityPositionDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SushiswapLiquidityPositionDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SushiswapLiquidityPositionDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SushiswapLiquidityPositionDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        user: mapValueOfType<String>(json, r'user'),
        pair: mapValueOfType<String>(json, r'pair'),
        liquidityTokenBalance: mapValueOfType<String>(json, r'liquidity_token_balance'),
        block: mapValueOfType<int>(json, r'block'),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<SushiswapLiquidityPositionDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SushiswapLiquidityPositionDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SushiswapLiquidityPositionDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SushiswapLiquidityPositionDTO> mapFromJson(dynamic json) {
    final map = <String, SushiswapLiquidityPositionDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SushiswapLiquidityPositionDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SushiswapLiquidityPositionDTO-objects as value to a dart map
  static Map<String, List<SushiswapLiquidityPositionDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SushiswapLiquidityPositionDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SushiswapLiquidityPositionDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

