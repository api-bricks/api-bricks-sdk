//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurveGaugeLiquidityDTO {
  /// Returns a new [CurveGaugeLiquidityDTO] instance.
  CurveGaugeLiquidityDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.user,
    this.gauge,
    this.originalBalance,
    this.originalSupply,
    this.workingBalance,
    this.workingSupply,
    this.timestamp,
    this.block,
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
  String? user;

  /// 
  String? gauge;

  /// 
  String? originalBalance;

  /// 
  String? originalSupply;

  /// 
  String? workingBalance;

  /// 
  String? workingSupply;

  /// 
  String? timestamp;

  /// 
  String? block;

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
  bool operator ==(Object other) => identical(this, other) || other is CurveGaugeLiquidityDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.user == user &&
     other.gauge == gauge &&
     other.originalBalance == originalBalance &&
     other.originalSupply == originalSupply &&
     other.workingBalance == workingBalance &&
     other.workingSupply == workingSupply &&
     other.timestamp == timestamp &&
     other.block == block &&
     other.transaction == transaction &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (gauge == null ? 0 : gauge!.hashCode) +
    (originalBalance == null ? 0 : originalBalance!.hashCode) +
    (originalSupply == null ? 0 : originalSupply!.hashCode) +
    (workingBalance == null ? 0 : workingBalance!.hashCode) +
    (workingSupply == null ? 0 : workingSupply!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (block == null ? 0 : block!.hashCode) +
    (transaction == null ? 0 : transaction!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'CurveGaugeLiquidityDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, user=$user, gauge=$gauge, originalBalance=$originalBalance, originalSupply=$originalSupply, workingBalance=$workingBalance, workingSupply=$workingSupply, timestamp=$timestamp, block=$block, transaction=$transaction, vid=$vid]';

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
    if (this.gauge != null) {
      json[r'gauge'] = this.gauge;
    } else {
      json[r'gauge'] = null;
    }
    if (this.originalBalance != null) {
      json[r'original_balance'] = this.originalBalance;
    } else {
      json[r'original_balance'] = null;
    }
    if (this.originalSupply != null) {
      json[r'original_supply'] = this.originalSupply;
    } else {
      json[r'original_supply'] = null;
    }
    if (this.workingBalance != null) {
      json[r'working_balance'] = this.workingBalance;
    } else {
      json[r'working_balance'] = null;
    }
    if (this.workingSupply != null) {
      json[r'working_supply'] = this.workingSupply;
    } else {
      json[r'working_supply'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.block != null) {
      json[r'block'] = this.block;
    } else {
      json[r'block'] = null;
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

  /// Returns a new [CurveGaugeLiquidityDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurveGaugeLiquidityDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurveGaugeLiquidityDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurveGaugeLiquidityDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurveGaugeLiquidityDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        user: mapValueOfType<String>(json, r'user'),
        gauge: mapValueOfType<String>(json, r'gauge'),
        originalBalance: mapValueOfType<String>(json, r'original_balance'),
        originalSupply: mapValueOfType<String>(json, r'original_supply'),
        workingBalance: mapValueOfType<String>(json, r'working_balance'),
        workingSupply: mapValueOfType<String>(json, r'working_supply'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        block: mapValueOfType<String>(json, r'block'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<CurveGaugeLiquidityDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurveGaugeLiquidityDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurveGaugeLiquidityDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurveGaugeLiquidityDTO> mapFromJson(dynamic json) {
    final map = <String, CurveGaugeLiquidityDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurveGaugeLiquidityDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurveGaugeLiquidityDTO-objects as value to a dart map
  static Map<String, List<CurveGaugeLiquidityDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurveGaugeLiquidityDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurveGaugeLiquidityDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

