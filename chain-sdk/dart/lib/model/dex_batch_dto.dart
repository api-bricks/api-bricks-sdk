//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DexBatchDTO {
  /// Returns a new [DexBatchDTO] instance.
  DexBatchDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.startEpoch,
    this.endEpoch,
    this.solution,
    this.firstSolutionEpoch,
    this.lastRevertEpoch,
    this.txHash,
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

  /// Identifier.
  String? id;

  /// Start epoch.
  String? startEpoch;

  /// End epoch.
  String? endEpoch;

  /// Reference to solution.
  String? solution;

  /// First solution epoch.
  String? firstSolutionEpoch;

  /// Last revert epoch.
  String? lastRevertEpoch;

  /// Transaction hash.
  String? txHash;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DexBatchDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.startEpoch == startEpoch &&
     other.endEpoch == endEpoch &&
     other.solution == solution &&
     other.firstSolutionEpoch == firstSolutionEpoch &&
     other.lastRevertEpoch == lastRevertEpoch &&
     other.txHash == txHash &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (startEpoch == null ? 0 : startEpoch!.hashCode) +
    (endEpoch == null ? 0 : endEpoch!.hashCode) +
    (solution == null ? 0 : solution!.hashCode) +
    (firstSolutionEpoch == null ? 0 : firstSolutionEpoch!.hashCode) +
    (lastRevertEpoch == null ? 0 : lastRevertEpoch!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'DexBatchDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, startEpoch=$startEpoch, endEpoch=$endEpoch, solution=$solution, firstSolutionEpoch=$firstSolutionEpoch, lastRevertEpoch=$lastRevertEpoch, txHash=$txHash, vid=$vid]';

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
    if (this.startEpoch != null) {
      json[r'start_epoch'] = this.startEpoch;
    } else {
      json[r'start_epoch'] = null;
    }
    if (this.endEpoch != null) {
      json[r'end_epoch'] = this.endEpoch;
    } else {
      json[r'end_epoch'] = null;
    }
    if (this.solution != null) {
      json[r'solution'] = this.solution;
    } else {
      json[r'solution'] = null;
    }
    if (this.firstSolutionEpoch != null) {
      json[r'first_solution_epoch'] = this.firstSolutionEpoch;
    } else {
      json[r'first_solution_epoch'] = null;
    }
    if (this.lastRevertEpoch != null) {
      json[r'last_revert_epoch'] = this.lastRevertEpoch;
    } else {
      json[r'last_revert_epoch'] = null;
    }
    if (this.txHash != null) {
      json[r'tx_hash'] = this.txHash;
    } else {
      json[r'tx_hash'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [DexBatchDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DexBatchDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DexBatchDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DexBatchDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DexBatchDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        startEpoch: mapValueOfType<String>(json, r'start_epoch'),
        endEpoch: mapValueOfType<String>(json, r'end_epoch'),
        solution: mapValueOfType<String>(json, r'solution'),
        firstSolutionEpoch: mapValueOfType<String>(json, r'first_solution_epoch'),
        lastRevertEpoch: mapValueOfType<String>(json, r'last_revert_epoch'),
        txHash: mapValueOfType<String>(json, r'tx_hash'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<DexBatchDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DexBatchDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DexBatchDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DexBatchDTO> mapFromJson(dynamic json) {
    final map = <String, DexBatchDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DexBatchDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DexBatchDTO-objects as value to a dart map
  static Map<String, List<DexBatchDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DexBatchDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DexBatchDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

