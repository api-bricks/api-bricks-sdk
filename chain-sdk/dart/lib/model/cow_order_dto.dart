//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CowOrderDTO {
  /// Returns a new [CowOrderDTO] instance.
  CowOrderDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.owner,
    this.tradesTimestamp,
    this.invalidateTimestamp,
    this.presignTimestamp,
    this.isSigned,
    this.isValid,
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

  /// User's address.
  String? id;

  /// User's address.
  String? owner;

  /// Block's timestamp on trade event.
  String? tradesTimestamp;

  /// Block's timestamp on invalidate event.
  String? invalidateTimestamp;

  /// Block's timestamp on presign event.
  String? presignTimestamp;

  /// Determines whether order is signed.
  bool? isSigned;

  /// Determines whether order is valid.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isValid;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CowOrderDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.owner == owner &&
     other.tradesTimestamp == tradesTimestamp &&
     other.invalidateTimestamp == invalidateTimestamp &&
     other.presignTimestamp == presignTimestamp &&
     other.isSigned == isSigned &&
     other.isValid == isValid &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (tradesTimestamp == null ? 0 : tradesTimestamp!.hashCode) +
    (invalidateTimestamp == null ? 0 : invalidateTimestamp!.hashCode) +
    (presignTimestamp == null ? 0 : presignTimestamp!.hashCode) +
    (isSigned == null ? 0 : isSigned!.hashCode) +
    (isValid == null ? 0 : isValid!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'CowOrderDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, owner=$owner, tradesTimestamp=$tradesTimestamp, invalidateTimestamp=$invalidateTimestamp, presignTimestamp=$presignTimestamp, isSigned=$isSigned, isValid=$isValid, vid=$vid]';

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
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.tradesTimestamp != null) {
      json[r'trades_timestamp'] = this.tradesTimestamp;
    } else {
      json[r'trades_timestamp'] = null;
    }
    if (this.invalidateTimestamp != null) {
      json[r'invalidate_timestamp'] = this.invalidateTimestamp;
    } else {
      json[r'invalidate_timestamp'] = null;
    }
    if (this.presignTimestamp != null) {
      json[r'presign_timestamp'] = this.presignTimestamp;
    } else {
      json[r'presign_timestamp'] = null;
    }
    if (this.isSigned != null) {
      json[r'is_signed'] = this.isSigned;
    } else {
      json[r'is_signed'] = null;
    }
    if (this.isValid != null) {
      json[r'is_valid'] = this.isValid;
    } else {
      json[r'is_valid'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [CowOrderDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CowOrderDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CowOrderDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CowOrderDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CowOrderDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        owner: mapValueOfType<String>(json, r'owner'),
        tradesTimestamp: mapValueOfType<String>(json, r'trades_timestamp'),
        invalidateTimestamp: mapValueOfType<String>(json, r'invalidate_timestamp'),
        presignTimestamp: mapValueOfType<String>(json, r'presign_timestamp'),
        isSigned: mapValueOfType<bool>(json, r'is_signed'),
        isValid: mapValueOfType<bool>(json, r'is_valid'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<CowOrderDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CowOrderDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CowOrderDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CowOrderDTO> mapFromJson(dynamic json) {
    final map = <String, CowOrderDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CowOrderDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CowOrderDTO-objects as value to a dart map
  static Map<String, List<CowOrderDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CowOrderDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CowOrderDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

