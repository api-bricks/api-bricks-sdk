//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurveVotingAppDTO {
  /// Returns a new [CurveVotingAppDTO] instance.
  CurveVotingAppDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.address,
    this.codename,
    this.minimumBalance,
    this.minimumQuorum,
    this.minimumTime,
    this.requiredSupport,
    this.voteTime,
    this.proposalCount,
    this.voteCount,
    this.token,
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

  /// App address.
  String? id;

  /// 
  String? address;

  /// 
  String? codename;

  /// Minimum balance needed to create a proposal.
  String? minimumBalance;

  /// Percentage of positive votes in total possible votes for a proposal to be accepted.
  String? minimumQuorum;

  /// Minimum time needed to pass between user's previous proposal and a user creating a new proposal.
  String? minimumTime;

  /// Percentage of positive votes needed for a proposal to be accepted.
  String? requiredSupport;

  /// Seconds that a proposal will be open for vote (unless enough votes have been cast to make an early decision).
  String? voteTime;

  /// Number of proposals created with this app.
  String? proposalCount;

  /// Number of votes received by all the proposals created with this app.
  String? voteCount;

  /// Address of the token used for voting.
  String? token;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurveVotingAppDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.address == address &&
     other.codename == codename &&
     other.minimumBalance == minimumBalance &&
     other.minimumQuorum == minimumQuorum &&
     other.minimumTime == minimumTime &&
     other.requiredSupport == requiredSupport &&
     other.voteTime == voteTime &&
     other.proposalCount == proposalCount &&
     other.voteCount == voteCount &&
     other.token == token &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (codename == null ? 0 : codename!.hashCode) +
    (minimumBalance == null ? 0 : minimumBalance!.hashCode) +
    (minimumQuorum == null ? 0 : minimumQuorum!.hashCode) +
    (minimumTime == null ? 0 : minimumTime!.hashCode) +
    (requiredSupport == null ? 0 : requiredSupport!.hashCode) +
    (voteTime == null ? 0 : voteTime!.hashCode) +
    (proposalCount == null ? 0 : proposalCount!.hashCode) +
    (voteCount == null ? 0 : voteCount!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'CurveVotingAppDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, address=$address, codename=$codename, minimumBalance=$minimumBalance, minimumQuorum=$minimumQuorum, minimumTime=$minimumTime, requiredSupport=$requiredSupport, voteTime=$voteTime, proposalCount=$proposalCount, voteCount=$voteCount, token=$token, vid=$vid]';

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
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.codename != null) {
      json[r'codename'] = this.codename;
    } else {
      json[r'codename'] = null;
    }
    if (this.minimumBalance != null) {
      json[r'minimum_balance'] = this.minimumBalance;
    } else {
      json[r'minimum_balance'] = null;
    }
    if (this.minimumQuorum != null) {
      json[r'minimum_quorum'] = this.minimumQuorum;
    } else {
      json[r'minimum_quorum'] = null;
    }
    if (this.minimumTime != null) {
      json[r'minimum_time'] = this.minimumTime;
    } else {
      json[r'minimum_time'] = null;
    }
    if (this.requiredSupport != null) {
      json[r'required_support'] = this.requiredSupport;
    } else {
      json[r'required_support'] = null;
    }
    if (this.voteTime != null) {
      json[r'vote_time'] = this.voteTime;
    } else {
      json[r'vote_time'] = null;
    }
    if (this.proposalCount != null) {
      json[r'proposal_count'] = this.proposalCount;
    } else {
      json[r'proposal_count'] = null;
    }
    if (this.voteCount != null) {
      json[r'vote_count'] = this.voteCount;
    } else {
      json[r'vote_count'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [CurveVotingAppDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurveVotingAppDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurveVotingAppDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurveVotingAppDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurveVotingAppDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        address: mapValueOfType<String>(json, r'address'),
        codename: mapValueOfType<String>(json, r'codename'),
        minimumBalance: mapValueOfType<String>(json, r'minimum_balance'),
        minimumQuorum: mapValueOfType<String>(json, r'minimum_quorum'),
        minimumTime: mapValueOfType<String>(json, r'minimum_time'),
        requiredSupport: mapValueOfType<String>(json, r'required_support'),
        voteTime: mapValueOfType<String>(json, r'vote_time'),
        proposalCount: mapValueOfType<String>(json, r'proposal_count'),
        voteCount: mapValueOfType<String>(json, r'vote_count'),
        token: mapValueOfType<String>(json, r'token'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<CurveVotingAppDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurveVotingAppDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurveVotingAppDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurveVotingAppDTO> mapFromJson(dynamic json) {
    final map = <String, CurveVotingAppDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurveVotingAppDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurveVotingAppDTO-objects as value to a dart map
  static Map<String, List<CurveVotingAppDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurveVotingAppDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurveVotingAppDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

