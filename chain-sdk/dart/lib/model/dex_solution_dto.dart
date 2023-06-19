//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DexSolutionDTO {
  /// Returns a new [DexSolutionDTO] instance.
  DexSolutionDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.batch,
    this.solver,
    this.feeReward,
    this.objectiveValue,
    this.utility,
    this.trades = const [],
    this.createEpoch,
    this.revertEpoch,
    this.txHash,
    this.txLogIndex,
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
  String? batch;

  /// 
  String? solver;

  /// 
  String? feeReward;

  /// 
  String? objectiveValue;

  /// 
  String? utility;

  /// 
  List<String>? trades;

  /// 
  String? createEpoch;

  /// 
  String? revertEpoch;

  /// 
  String? txHash;

  /// 
  String? txLogIndex;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DexSolutionDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.batch == batch &&
     other.solver == solver &&
     other.feeReward == feeReward &&
     other.objectiveValue == objectiveValue &&
     other.utility == utility &&
     other.trades == trades &&
     other.createEpoch == createEpoch &&
     other.revertEpoch == revertEpoch &&
     other.txHash == txHash &&
     other.txLogIndex == txLogIndex &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (batch == null ? 0 : batch!.hashCode) +
    (solver == null ? 0 : solver!.hashCode) +
    (feeReward == null ? 0 : feeReward!.hashCode) +
    (objectiveValue == null ? 0 : objectiveValue!.hashCode) +
    (utility == null ? 0 : utility!.hashCode) +
    (trades == null ? 0 : trades!.hashCode) +
    (createEpoch == null ? 0 : createEpoch!.hashCode) +
    (revertEpoch == null ? 0 : revertEpoch!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode) +
    (txLogIndex == null ? 0 : txLogIndex!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'DexSolutionDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, batch=$batch, solver=$solver, feeReward=$feeReward, objectiveValue=$objectiveValue, utility=$utility, trades=$trades, createEpoch=$createEpoch, revertEpoch=$revertEpoch, txHash=$txHash, txLogIndex=$txLogIndex, vid=$vid]';

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
    if (this.batch != null) {
      json[r'batch'] = this.batch;
    } else {
      json[r'batch'] = null;
    }
    if (this.solver != null) {
      json[r'solver'] = this.solver;
    } else {
      json[r'solver'] = null;
    }
    if (this.feeReward != null) {
      json[r'fee_reward'] = this.feeReward;
    } else {
      json[r'fee_reward'] = null;
    }
    if (this.objectiveValue != null) {
      json[r'objective_value'] = this.objectiveValue;
    } else {
      json[r'objective_value'] = null;
    }
    if (this.utility != null) {
      json[r'utility'] = this.utility;
    } else {
      json[r'utility'] = null;
    }
    if (this.trades != null) {
      json[r'trades'] = this.trades;
    } else {
      json[r'trades'] = null;
    }
    if (this.createEpoch != null) {
      json[r'create_epoch'] = this.createEpoch;
    } else {
      json[r'create_epoch'] = null;
    }
    if (this.revertEpoch != null) {
      json[r'revert_epoch'] = this.revertEpoch;
    } else {
      json[r'revert_epoch'] = null;
    }
    if (this.txHash != null) {
      json[r'tx_hash'] = this.txHash;
    } else {
      json[r'tx_hash'] = null;
    }
    if (this.txLogIndex != null) {
      json[r'tx_log_index'] = this.txLogIndex;
    } else {
      json[r'tx_log_index'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [DexSolutionDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DexSolutionDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DexSolutionDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DexSolutionDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DexSolutionDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        batch: mapValueOfType<String>(json, r'batch'),
        solver: mapValueOfType<String>(json, r'solver'),
        feeReward: mapValueOfType<String>(json, r'fee_reward'),
        objectiveValue: mapValueOfType<String>(json, r'objective_value'),
        utility: mapValueOfType<String>(json, r'utility'),
        trades: json[r'trades'] is List
            ? (json[r'trades'] as List).cast<String>()
            : const [],
        createEpoch: mapValueOfType<String>(json, r'create_epoch'),
        revertEpoch: mapValueOfType<String>(json, r'revert_epoch'),
        txHash: mapValueOfType<String>(json, r'tx_hash'),
        txLogIndex: mapValueOfType<String>(json, r'tx_log_index'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<DexSolutionDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DexSolutionDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DexSolutionDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DexSolutionDTO> mapFromJson(dynamic json) {
    final map = <String, DexSolutionDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DexSolutionDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DexSolutionDTO-objects as value to a dart map
  static Map<String, List<DexSolutionDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DexSolutionDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DexSolutionDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

