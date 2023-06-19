//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurveContractVersionDTO {
  /// Returns a new [CurveContractVersionDTO] instance.
  CurveContractVersionDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.contract,
    this.address,
    this.version,
    this.added,
    this.addedAtBlock,
    this.addedAtTransaction,
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
  String? contract;

  /// 
  String? address;

  /// 
  String? version;

  /// 
  String? added;

  /// 
  String? addedAtBlock;

  /// 
  String? addedAtTransaction;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurveContractVersionDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.contract == contract &&
     other.address == address &&
     other.version == version &&
     other.added == added &&
     other.addedAtBlock == addedAtBlock &&
     other.addedAtTransaction == addedAtTransaction &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (contract == null ? 0 : contract!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (added == null ? 0 : added!.hashCode) +
    (addedAtBlock == null ? 0 : addedAtBlock!.hashCode) +
    (addedAtTransaction == null ? 0 : addedAtTransaction!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'CurveContractVersionDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, contract=$contract, address=$address, version=$version, added=$added, addedAtBlock=$addedAtBlock, addedAtTransaction=$addedAtTransaction, vid=$vid]';

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
    if (this.contract != null) {
      json[r'contract'] = this.contract;
    } else {
      json[r'contract'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.added != null) {
      json[r'added'] = this.added;
    } else {
      json[r'added'] = null;
    }
    if (this.addedAtBlock != null) {
      json[r'added_at_block'] = this.addedAtBlock;
    } else {
      json[r'added_at_block'] = null;
    }
    if (this.addedAtTransaction != null) {
      json[r'added_at_transaction'] = this.addedAtTransaction;
    } else {
      json[r'added_at_transaction'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [CurveContractVersionDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurveContractVersionDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurveContractVersionDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurveContractVersionDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurveContractVersionDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        contract: mapValueOfType<String>(json, r'contract'),
        address: mapValueOfType<String>(json, r'address'),
        version: mapValueOfType<String>(json, r'version'),
        added: mapValueOfType<String>(json, r'added'),
        addedAtBlock: mapValueOfType<String>(json, r'added_at_block'),
        addedAtTransaction: mapValueOfType<String>(json, r'added_at_transaction'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<CurveContractVersionDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurveContractVersionDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurveContractVersionDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurveContractVersionDTO> mapFromJson(dynamic json) {
    final map = <String, CurveContractVersionDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurveContractVersionDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurveContractVersionDTO-objects as value to a dart map
  static Map<String, List<CurveContractVersionDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurveContractVersionDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurveContractVersionDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

