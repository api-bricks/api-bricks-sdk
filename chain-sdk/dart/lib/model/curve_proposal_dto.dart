//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurveProposalDTO {
  /// Returns a new [CurveProposalDTO] instance.
  CurveProposalDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.number,
    this.app,
    this.creator,
    this.executionScript,
    this.expireDate,
    this.minimumQuorum,
    this.requiredSupport,
    this.snapshotBlock,
    this.votingPower,
    this.metadata,
    this.text,
    this.voteCount,
    this.positiveVoteCount,
    this.negativeVoteCount,
    this.currentQuorum,
    this.currentSupport,
    this.stakedSupport,
    this.totalStaked,
    this.created,
    this.createdAtBlock,
    this.createdAtTransaction,
    this.updated,
    this.updatedAtBlock,
    this.updatedAtTransaction,
    this.executed,
    this.executedAtBlock,
    this.executedAtTransaction,
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

  /// Sequential number in related to the realted voting app.
  String? number;

  /// Voting app instance.
  String? app;

  /// Proposal creator's account.
  String? creator;

  /// 
  String? executionScript;

  /// 
  String? expireDate;

  /// Percentage of positive votes in total possible votes for this proposal to be accepted.
  String? minimumQuorum;

  /// Percentage of positive votes needed for this proposal to be accepted.
  String? requiredSupport;

  /// 
  String? snapshotBlock;

  /// 
  String? votingPower;

  /// Link to metadata file.
  String? metadata;

  /// Proposal description text.
  String? text;

  /// Number of votes received by the proposal.
  String? voteCount;

  /// Number of positive votes (yes) received by the proposal.
  String? positiveVoteCount;

  /// Number of negative votes (no) received by the proposal.
  String? negativeVoteCount;

  /// 
  String? currentQuorum;

  /// 
  String? currentSupport;

  /// 
  String? stakedSupport;

  /// 
  String? totalStaked;

  /// 
  String? created;

  /// 
  String? createdAtBlock;

  /// 
  String? createdAtTransaction;

  /// 
  String? updated;

  /// 
  String? updatedAtBlock;

  /// 
  String? updatedAtTransaction;

  /// 
  String? executed;

  /// 
  String? executedAtBlock;

  /// 
  String? executedAtTransaction;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurveProposalDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.number == number &&
     other.app == app &&
     other.creator == creator &&
     other.executionScript == executionScript &&
     other.expireDate == expireDate &&
     other.minimumQuorum == minimumQuorum &&
     other.requiredSupport == requiredSupport &&
     other.snapshotBlock == snapshotBlock &&
     other.votingPower == votingPower &&
     other.metadata == metadata &&
     other.text == text &&
     other.voteCount == voteCount &&
     other.positiveVoteCount == positiveVoteCount &&
     other.negativeVoteCount == negativeVoteCount &&
     other.currentQuorum == currentQuorum &&
     other.currentSupport == currentSupport &&
     other.stakedSupport == stakedSupport &&
     other.totalStaked == totalStaked &&
     other.created == created &&
     other.createdAtBlock == createdAtBlock &&
     other.createdAtTransaction == createdAtTransaction &&
     other.updated == updated &&
     other.updatedAtBlock == updatedAtBlock &&
     other.updatedAtTransaction == updatedAtTransaction &&
     other.executed == executed &&
     other.executedAtBlock == executedAtBlock &&
     other.executedAtTransaction == executedAtTransaction &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (app == null ? 0 : app!.hashCode) +
    (creator == null ? 0 : creator!.hashCode) +
    (executionScript == null ? 0 : executionScript!.hashCode) +
    (expireDate == null ? 0 : expireDate!.hashCode) +
    (minimumQuorum == null ? 0 : minimumQuorum!.hashCode) +
    (requiredSupport == null ? 0 : requiredSupport!.hashCode) +
    (snapshotBlock == null ? 0 : snapshotBlock!.hashCode) +
    (votingPower == null ? 0 : votingPower!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (voteCount == null ? 0 : voteCount!.hashCode) +
    (positiveVoteCount == null ? 0 : positiveVoteCount!.hashCode) +
    (negativeVoteCount == null ? 0 : negativeVoteCount!.hashCode) +
    (currentQuorum == null ? 0 : currentQuorum!.hashCode) +
    (currentSupport == null ? 0 : currentSupport!.hashCode) +
    (stakedSupport == null ? 0 : stakedSupport!.hashCode) +
    (totalStaked == null ? 0 : totalStaked!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (createdAtBlock == null ? 0 : createdAtBlock!.hashCode) +
    (createdAtTransaction == null ? 0 : createdAtTransaction!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (updatedAtBlock == null ? 0 : updatedAtBlock!.hashCode) +
    (updatedAtTransaction == null ? 0 : updatedAtTransaction!.hashCode) +
    (executed == null ? 0 : executed!.hashCode) +
    (executedAtBlock == null ? 0 : executedAtBlock!.hashCode) +
    (executedAtTransaction == null ? 0 : executedAtTransaction!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'CurveProposalDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, number=$number, app=$app, creator=$creator, executionScript=$executionScript, expireDate=$expireDate, minimumQuorum=$minimumQuorum, requiredSupport=$requiredSupport, snapshotBlock=$snapshotBlock, votingPower=$votingPower, metadata=$metadata, text=$text, voteCount=$voteCount, positiveVoteCount=$positiveVoteCount, negativeVoteCount=$negativeVoteCount, currentQuorum=$currentQuorum, currentSupport=$currentSupport, stakedSupport=$stakedSupport, totalStaked=$totalStaked, created=$created, createdAtBlock=$createdAtBlock, createdAtTransaction=$createdAtTransaction, updated=$updated, updatedAtBlock=$updatedAtBlock, updatedAtTransaction=$updatedAtTransaction, executed=$executed, executedAtBlock=$executedAtBlock, executedAtTransaction=$executedAtTransaction, vid=$vid]';

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
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
    if (this.creator != null) {
      json[r'creator'] = this.creator;
    } else {
      json[r'creator'] = null;
    }
    if (this.executionScript != null) {
      json[r'execution_script'] = this.executionScript;
    } else {
      json[r'execution_script'] = null;
    }
    if (this.expireDate != null) {
      json[r'expire_date'] = this.expireDate;
    } else {
      json[r'expire_date'] = null;
    }
    if (this.minimumQuorum != null) {
      json[r'minimum_quorum'] = this.minimumQuorum;
    } else {
      json[r'minimum_quorum'] = null;
    }
    if (this.requiredSupport != null) {
      json[r'required_support'] = this.requiredSupport;
    } else {
      json[r'required_support'] = null;
    }
    if (this.snapshotBlock != null) {
      json[r'snapshot_block'] = this.snapshotBlock;
    } else {
      json[r'snapshot_block'] = null;
    }
    if (this.votingPower != null) {
      json[r'voting_power'] = this.votingPower;
    } else {
      json[r'voting_power'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.voteCount != null) {
      json[r'vote_count'] = this.voteCount;
    } else {
      json[r'vote_count'] = null;
    }
    if (this.positiveVoteCount != null) {
      json[r'positive_vote_count'] = this.positiveVoteCount;
    } else {
      json[r'positive_vote_count'] = null;
    }
    if (this.negativeVoteCount != null) {
      json[r'negative_vote_count'] = this.negativeVoteCount;
    } else {
      json[r'negative_vote_count'] = null;
    }
    if (this.currentQuorum != null) {
      json[r'current_quorum'] = this.currentQuorum;
    } else {
      json[r'current_quorum'] = null;
    }
    if (this.currentSupport != null) {
      json[r'current_support'] = this.currentSupport;
    } else {
      json[r'current_support'] = null;
    }
    if (this.stakedSupport != null) {
      json[r'staked_support'] = this.stakedSupport;
    } else {
      json[r'staked_support'] = null;
    }
    if (this.totalStaked != null) {
      json[r'total_staked'] = this.totalStaked;
    } else {
      json[r'total_staked'] = null;
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
    if (this.executed != null) {
      json[r'executed'] = this.executed;
    } else {
      json[r'executed'] = null;
    }
    if (this.executedAtBlock != null) {
      json[r'executed_at_block'] = this.executedAtBlock;
    } else {
      json[r'executed_at_block'] = null;
    }
    if (this.executedAtTransaction != null) {
      json[r'executed_at_transaction'] = this.executedAtTransaction;
    } else {
      json[r'executed_at_transaction'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [CurveProposalDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurveProposalDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurveProposalDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurveProposalDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurveProposalDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        number: mapValueOfType<String>(json, r'number'),
        app: mapValueOfType<String>(json, r'app'),
        creator: mapValueOfType<String>(json, r'creator'),
        executionScript: mapValueOfType<String>(json, r'execution_script'),
        expireDate: mapValueOfType<String>(json, r'expire_date'),
        minimumQuorum: mapValueOfType<String>(json, r'minimum_quorum'),
        requiredSupport: mapValueOfType<String>(json, r'required_support'),
        snapshotBlock: mapValueOfType<String>(json, r'snapshot_block'),
        votingPower: mapValueOfType<String>(json, r'voting_power'),
        metadata: mapValueOfType<String>(json, r'metadata'),
        text: mapValueOfType<String>(json, r'text'),
        voteCount: mapValueOfType<String>(json, r'vote_count'),
        positiveVoteCount: mapValueOfType<String>(json, r'positive_vote_count'),
        negativeVoteCount: mapValueOfType<String>(json, r'negative_vote_count'),
        currentQuorum: mapValueOfType<String>(json, r'current_quorum'),
        currentSupport: mapValueOfType<String>(json, r'current_support'),
        stakedSupport: mapValueOfType<String>(json, r'staked_support'),
        totalStaked: mapValueOfType<String>(json, r'total_staked'),
        created: mapValueOfType<String>(json, r'created'),
        createdAtBlock: mapValueOfType<String>(json, r'created_at_block'),
        createdAtTransaction: mapValueOfType<String>(json, r'created_at_transaction'),
        updated: mapValueOfType<String>(json, r'updated'),
        updatedAtBlock: mapValueOfType<String>(json, r'updated_at_block'),
        updatedAtTransaction: mapValueOfType<String>(json, r'updated_at_transaction'),
        executed: mapValueOfType<String>(json, r'executed'),
        executedAtBlock: mapValueOfType<String>(json, r'executed_at_block'),
        executedAtTransaction: mapValueOfType<String>(json, r'executed_at_transaction'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<CurveProposalDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurveProposalDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurveProposalDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurveProposalDTO> mapFromJson(dynamic json) {
    final map = <String, CurveProposalDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurveProposalDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurveProposalDTO-objects as value to a dart map
  static Map<String, List<CurveProposalDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurveProposalDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurveProposalDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

