//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurveSystemStateDTO {
  /// Returns a new [CurveSystemStateDTO] instance.
  CurveSystemStateDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.registryContract,
    this.contractCount,
    this.gaugeCount,
    this.gaugeTypeCount,
    this.poolCount,
    this.tokenCount,
    this.totalPoolCount,
    this.updated,
    this.updatedAtBlock,
    this.updatedAtTransaction,
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

  /// Singleton ID, equals to 'current'.
  String? id;

  /// Current pool registry address.
  String? registryContract;

  /// Number of contracts in the AddressProvider registry.
  String? contractCount;

  /// Number of gauges registered.
  String? gaugeCount;

  /// Number of gauge types registered.
  String? gaugeTypeCount;

  /// Number of active pools.
  String? poolCount;

  /// Number of tokens registered.
  String? tokenCount;

  /// Total number of pools (including removed ones).
  String? totalPoolCount;

  /// 
  String? updated;

  /// 
  String? updatedAtBlock;

  /// 
  String? updatedAtTransaction;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurveSystemStateDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.registryContract == registryContract &&
     other.contractCount == contractCount &&
     other.gaugeCount == gaugeCount &&
     other.gaugeTypeCount == gaugeTypeCount &&
     other.poolCount == poolCount &&
     other.tokenCount == tokenCount &&
     other.totalPoolCount == totalPoolCount &&
     other.updated == updated &&
     other.updatedAtBlock == updatedAtBlock &&
     other.updatedAtTransaction == updatedAtTransaction &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (registryContract == null ? 0 : registryContract!.hashCode) +
    (contractCount == null ? 0 : contractCount!.hashCode) +
    (gaugeCount == null ? 0 : gaugeCount!.hashCode) +
    (gaugeTypeCount == null ? 0 : gaugeTypeCount!.hashCode) +
    (poolCount == null ? 0 : poolCount!.hashCode) +
    (tokenCount == null ? 0 : tokenCount!.hashCode) +
    (totalPoolCount == null ? 0 : totalPoolCount!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (updatedAtBlock == null ? 0 : updatedAtBlock!.hashCode) +
    (updatedAtTransaction == null ? 0 : updatedAtTransaction!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'CurveSystemStateDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, registryContract=$registryContract, contractCount=$contractCount, gaugeCount=$gaugeCount, gaugeTypeCount=$gaugeTypeCount, poolCount=$poolCount, tokenCount=$tokenCount, totalPoolCount=$totalPoolCount, updated=$updated, updatedAtBlock=$updatedAtBlock, updatedAtTransaction=$updatedAtTransaction, vid=$vid]';

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
    if (this.registryContract != null) {
      json[r'registry_contract'] = this.registryContract;
    } else {
      json[r'registry_contract'] = null;
    }
    if (this.contractCount != null) {
      json[r'contract_count'] = this.contractCount;
    } else {
      json[r'contract_count'] = null;
    }
    if (this.gaugeCount != null) {
      json[r'gauge_count'] = this.gaugeCount;
    } else {
      json[r'gauge_count'] = null;
    }
    if (this.gaugeTypeCount != null) {
      json[r'gauge_type_count'] = this.gaugeTypeCount;
    } else {
      json[r'gauge_type_count'] = null;
    }
    if (this.poolCount != null) {
      json[r'pool_count'] = this.poolCount;
    } else {
      json[r'pool_count'] = null;
    }
    if (this.tokenCount != null) {
      json[r'token_count'] = this.tokenCount;
    } else {
      json[r'token_count'] = null;
    }
    if (this.totalPoolCount != null) {
      json[r'total_pool_count'] = this.totalPoolCount;
    } else {
      json[r'total_pool_count'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.updatedAtBlock != null) {
      json[r'updated_at_block'] = this.updatedAtBlock;
    } else {
      json[r'updated_at_block'] = null;
    }
    if (this.updatedAtTransaction != null) {
      json[r'updated_at_transaction'] = this.updatedAtTransaction;
    } else {
      json[r'updated_at_transaction'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [CurveSystemStateDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurveSystemStateDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurveSystemStateDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurveSystemStateDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurveSystemStateDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        registryContract: mapValueOfType<String>(json, r'registry_contract'),
        contractCount: mapValueOfType<String>(json, r'contract_count'),
        gaugeCount: mapValueOfType<String>(json, r'gauge_count'),
        gaugeTypeCount: mapValueOfType<String>(json, r'gauge_type_count'),
        poolCount: mapValueOfType<String>(json, r'pool_count'),
        tokenCount: mapValueOfType<String>(json, r'token_count'),
        totalPoolCount: mapValueOfType<String>(json, r'total_pool_count'),
        updated: mapValueOfType<String>(json, r'updated'),
        updatedAtBlock: mapValueOfType<String>(json, r'updated_at_block'),
        updatedAtTransaction: mapValueOfType<String>(json, r'updated_at_transaction'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<CurveSystemStateDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurveSystemStateDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurveSystemStateDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurveSystemStateDTO> mapFromJson(dynamic json) {
    final map = <String, CurveSystemStateDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurveSystemStateDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurveSystemStateDTO-objects as value to a dart map
  static Map<String, List<CurveSystemStateDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurveSystemStateDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurveSystemStateDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

