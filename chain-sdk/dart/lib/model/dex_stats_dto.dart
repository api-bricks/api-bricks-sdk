//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DexStatsDTO {
  /// Returns a new [DexStatsDTO] instance.
  DexStatsDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.volumeInOwl,
    this.utilityInOwl,
    this.owlBurnt,
    this.settledBatchCount,
    this.settledTradeCount,
    this.listedTokens,
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

  /// The total volume denominated in OWL (all sell amounts combined).
  String? volumeInOwl;

  /// The total trader surplus in OWL.
  String? utilityInOwl;

  /// The total amount of OWL burnt (equivalent to fees rewarded to solvers).
  String? owlBurnt;

  /// The total number of settled batches.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? settledBatchCount;

  /// The total number of settled trades.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? settledTradeCount;

  /// The number of listed tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? listedTokens;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DexStatsDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.volumeInOwl == volumeInOwl &&
     other.utilityInOwl == utilityInOwl &&
     other.owlBurnt == owlBurnt &&
     other.settledBatchCount == settledBatchCount &&
     other.settledTradeCount == settledTradeCount &&
     other.listedTokens == listedTokens &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (volumeInOwl == null ? 0 : volumeInOwl!.hashCode) +
    (utilityInOwl == null ? 0 : utilityInOwl!.hashCode) +
    (owlBurnt == null ? 0 : owlBurnt!.hashCode) +
    (settledBatchCount == null ? 0 : settledBatchCount!.hashCode) +
    (settledTradeCount == null ? 0 : settledTradeCount!.hashCode) +
    (listedTokens == null ? 0 : listedTokens!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'DexStatsDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, volumeInOwl=$volumeInOwl, utilityInOwl=$utilityInOwl, owlBurnt=$owlBurnt, settledBatchCount=$settledBatchCount, settledTradeCount=$settledTradeCount, listedTokens=$listedTokens, vid=$vid]';

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
    if (this.volumeInOwl != null) {
      json[r'volume_in_owl'] = this.volumeInOwl;
    } else {
      json[r'volume_in_owl'] = null;
    }
    if (this.utilityInOwl != null) {
      json[r'utility_in_owl'] = this.utilityInOwl;
    } else {
      json[r'utility_in_owl'] = null;
    }
    if (this.owlBurnt != null) {
      json[r'owl_burnt'] = this.owlBurnt;
    } else {
      json[r'owl_burnt'] = null;
    }
    if (this.settledBatchCount != null) {
      json[r'settled_batch_count'] = this.settledBatchCount;
    } else {
      json[r'settled_batch_count'] = null;
    }
    if (this.settledTradeCount != null) {
      json[r'settled_trade_count'] = this.settledTradeCount;
    } else {
      json[r'settled_trade_count'] = null;
    }
    if (this.listedTokens != null) {
      json[r'listed_tokens'] = this.listedTokens;
    } else {
      json[r'listed_tokens'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [DexStatsDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DexStatsDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DexStatsDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DexStatsDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DexStatsDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        volumeInOwl: mapValueOfType<String>(json, r'volume_in_owl'),
        utilityInOwl: mapValueOfType<String>(json, r'utility_in_owl'),
        owlBurnt: mapValueOfType<String>(json, r'owl_burnt'),
        settledBatchCount: mapValueOfType<int>(json, r'settled_batch_count'),
        settledTradeCount: mapValueOfType<int>(json, r'settled_trade_count'),
        listedTokens: mapValueOfType<int>(json, r'listed_tokens'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<DexStatsDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DexStatsDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DexStatsDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DexStatsDTO> mapFromJson(dynamic json) {
    final map = <String, DexStatsDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DexStatsDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DexStatsDTO-objects as value to a dart map
  static Map<String, List<DexStatsDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DexStatsDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DexStatsDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

