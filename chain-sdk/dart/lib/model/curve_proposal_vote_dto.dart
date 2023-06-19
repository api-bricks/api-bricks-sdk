//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurveProposalVoteDTO {
  /// Returns a new [CurveProposalVoteDTO] instance.
  CurveProposalVoteDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.proposal,
    this.supports,
    this.stake,
    this.voter,
    this.created,
    this.createdAtBlock,
    this.createdAtTransaction,
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
  String? proposal;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? supports;

  /// 
  String? stake;

  /// 
  String? voter;

  /// 
  String? created;

  /// 
  String? createdAtBlock;

  /// 
  String? createdAtTransaction;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurveProposalVoteDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.proposal == proposal &&
     other.supports == supports &&
     other.stake == stake &&
     other.voter == voter &&
     other.created == created &&
     other.createdAtBlock == createdAtBlock &&
     other.createdAtTransaction == createdAtTransaction &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (proposal == null ? 0 : proposal!.hashCode) +
    (supports == null ? 0 : supports!.hashCode) +
    (stake == null ? 0 : stake!.hashCode) +
    (voter == null ? 0 : voter!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (createdAtBlock == null ? 0 : createdAtBlock!.hashCode) +
    (createdAtTransaction == null ? 0 : createdAtTransaction!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'CurveProposalVoteDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, proposal=$proposal, supports=$supports, stake=$stake, voter=$voter, created=$created, createdAtBlock=$createdAtBlock, createdAtTransaction=$createdAtTransaction, vid=$vid]';

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
    if (this.proposal != null) {
      json[r'proposal'] = this.proposal;
    } else {
      json[r'proposal'] = null;
    }
    if (this.supports != null) {
      json[r'supports'] = this.supports;
    } else {
      json[r'supports'] = null;
    }
    if (this.stake != null) {
      json[r'stake'] = this.stake;
    } else {
      json[r'stake'] = null;
    }
    if (this.voter != null) {
      json[r'voter'] = this.voter;
    } else {
      json[r'voter'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.createdAtBlock != null) {
      json[r'created_at_block'] = this.createdAtBlock;
    } else {
      json[r'created_at_block'] = null;
    }
    if (this.createdAtTransaction != null) {
      json[r'created_at_transaction'] = this.createdAtTransaction;
    } else {
      json[r'created_at_transaction'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [CurveProposalVoteDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurveProposalVoteDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurveProposalVoteDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurveProposalVoteDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurveProposalVoteDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        proposal: mapValueOfType<String>(json, r'proposal'),
        supports: mapValueOfType<bool>(json, r'supports'),
        stake: mapValueOfType<String>(json, r'stake'),
        voter: mapValueOfType<String>(json, r'voter'),
        created: mapValueOfType<String>(json, r'created'),
        createdAtBlock: mapValueOfType<String>(json, r'created_at_block'),
        createdAtTransaction: mapValueOfType<String>(json, r'created_at_transaction'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<CurveProposalVoteDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurveProposalVoteDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurveProposalVoteDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurveProposalVoteDTO> mapFromJson(dynamic json) {
    final map = <String, CurveProposalVoteDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurveProposalVoteDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurveProposalVoteDTO-objects as value to a dart map
  static Map<String, List<CurveProposalVoteDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurveProposalVoteDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurveProposalVoteDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

