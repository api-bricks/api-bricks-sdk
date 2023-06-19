//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurveRemoveLiquidityOneEventDTO {
  /// Returns a new [CurveRemoveLiquidityOneEventDTO] instance.
  CurveRemoveLiquidityOneEventDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.pool,
    this.provider,
    this.tokenAmount,
    this.coinAmount,
    this.block,
    this.timestamp,
    this.transaction,
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

  /// 
  String? pool;

  /// 
  String? provider;

  /// 
  String? tokenAmount;

  /// 
  String? coinAmount;

  /// 
  String? block;

  /// 
  String? timestamp;

  /// 
  String? transaction;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurveRemoveLiquidityOneEventDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.pool == pool &&
     other.provider == provider &&
     other.tokenAmount == tokenAmount &&
     other.coinAmount == coinAmount &&
     other.block == block &&
     other.timestamp == timestamp &&
     other.transaction == transaction &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (pool == null ? 0 : pool!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (tokenAmount == null ? 0 : tokenAmount!.hashCode) +
    (coinAmount == null ? 0 : coinAmount!.hashCode) +
    (block == null ? 0 : block!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (transaction == null ? 0 : transaction!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'CurveRemoveLiquidityOneEventDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, pool=$pool, provider=$provider, tokenAmount=$tokenAmount, coinAmount=$coinAmount, block=$block, timestamp=$timestamp, transaction=$transaction, vid=$vid]';

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
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.tokenAmount != null) {
      json[r'token_amount'] = this.tokenAmount;
    } else {
      json[r'token_amount'] = null;
    }
    if (this.coinAmount != null) {
      json[r'coin_amount'] = this.coinAmount;
    } else {
      json[r'coin_amount'] = null;
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
    if (this.transaction != null) {
      json[r'transaction'] = this.transaction;
    } else {
      json[r'transaction'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [CurveRemoveLiquidityOneEventDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurveRemoveLiquidityOneEventDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurveRemoveLiquidityOneEventDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurveRemoveLiquidityOneEventDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurveRemoveLiquidityOneEventDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        pool: mapValueOfType<String>(json, r'pool'),
        provider: mapValueOfType<String>(json, r'provider'),
        tokenAmount: mapValueOfType<String>(json, r'token_amount'),
        coinAmount: mapValueOfType<String>(json, r'coin_amount'),
        block: mapValueOfType<String>(json, r'block'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<CurveRemoveLiquidityOneEventDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurveRemoveLiquidityOneEventDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurveRemoveLiquidityOneEventDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurveRemoveLiquidityOneEventDTO> mapFromJson(dynamic json) {
    final map = <String, CurveRemoveLiquidityOneEventDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurveRemoveLiquidityOneEventDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurveRemoveLiquidityOneEventDTO-objects as value to a dart map
  static Map<String, List<CurveRemoveLiquidityOneEventDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurveRemoveLiquidityOneEventDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurveRemoveLiquidityOneEventDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

