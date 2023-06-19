//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DexPriceDTO {
  /// Returns a new [DexPriceDTO] instance.
  DexPriceDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.token,
    this.batchId,
    this.priceInOwlNumerator,
    this.priceInOwlDenominator,
    this.volume,
    this.createEpoch,
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

  /// Identifier, format: (token id)-(batch id).
  String? id;

  /// Token identifier.
  String? token;

  /// Batch identifier.
  String? batchId;

  /// Price enumerator in OWL (derivative of the GNO token).
  String? priceInOwlNumerator;

  /// Price denominator in OWL (derivative of the GNO token).
  String? priceInOwlDenominator;

  /// Volume.
  String? volume;

  /// Create epoch.
  String? createEpoch;

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
  bool operator ==(Object other) => identical(this, other) || other is DexPriceDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.token == token &&
     other.batchId == batchId &&
     other.priceInOwlNumerator == priceInOwlNumerator &&
     other.priceInOwlDenominator == priceInOwlDenominator &&
     other.volume == volume &&
     other.createEpoch == createEpoch &&
     other.txHash == txHash &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (batchId == null ? 0 : batchId!.hashCode) +
    (priceInOwlNumerator == null ? 0 : priceInOwlNumerator!.hashCode) +
    (priceInOwlDenominator == null ? 0 : priceInOwlDenominator!.hashCode) +
    (volume == null ? 0 : volume!.hashCode) +
    (createEpoch == null ? 0 : createEpoch!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'DexPriceDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, token=$token, batchId=$batchId, priceInOwlNumerator=$priceInOwlNumerator, priceInOwlDenominator=$priceInOwlDenominator, volume=$volume, createEpoch=$createEpoch, txHash=$txHash, vid=$vid]';

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
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.batchId != null) {
      json[r'batch_id'] = this.batchId;
    } else {
      json[r'batch_id'] = null;
    }
    if (this.priceInOwlNumerator != null) {
      json[r'price_in_owl_numerator'] = this.priceInOwlNumerator;
    } else {
      json[r'price_in_owl_numerator'] = null;
    }
    if (this.priceInOwlDenominator != null) {
      json[r'price_in_owl_denominator'] = this.priceInOwlDenominator;
    } else {
      json[r'price_in_owl_denominator'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    if (this.createEpoch != null) {
      json[r'create_epoch'] = this.createEpoch;
    } else {
      json[r'create_epoch'] = null;
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

  /// Returns a new [DexPriceDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DexPriceDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DexPriceDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DexPriceDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DexPriceDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        token: mapValueOfType<String>(json, r'token'),
        batchId: mapValueOfType<String>(json, r'batch_id'),
        priceInOwlNumerator: mapValueOfType<String>(json, r'price_in_owl_numerator'),
        priceInOwlDenominator: mapValueOfType<String>(json, r'price_in_owl_denominator'),
        volume: mapValueOfType<String>(json, r'volume'),
        createEpoch: mapValueOfType<String>(json, r'create_epoch'),
        txHash: mapValueOfType<String>(json, r'tx_hash'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<DexPriceDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DexPriceDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DexPriceDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DexPriceDTO> mapFromJson(dynamic json) {
    final map = <String, DexPriceDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DexPriceDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DexPriceDTO-objects as value to a dart map
  static Map<String, List<DexPriceDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DexPriceDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DexPriceDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

