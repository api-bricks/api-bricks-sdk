//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DexDepositDTO {
  /// Returns a new [DexDepositDTO] instance.
  DexDepositDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.user,
    this.tokenAddress,
    this.amount,
    this.batchId,
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

  /// Identifier, format: (transaction hash)-(token id).
  String? id;

  /// User address.
  String? user;

  /// Token address.
  String? tokenAddress;

  /// Amount of deposit.
  String? amount;

  /// Identifier (numerical).
  String? batchId;

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
  bool operator ==(Object other) => identical(this, other) || other is DexDepositDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.user == user &&
     other.tokenAddress == tokenAddress &&
     other.amount == amount &&
     other.batchId == batchId &&
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
    (user == null ? 0 : user!.hashCode) +
    (tokenAddress == null ? 0 : tokenAddress!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (batchId == null ? 0 : batchId!.hashCode) +
    (createEpoch == null ? 0 : createEpoch!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'DexDepositDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, user=$user, tokenAddress=$tokenAddress, amount=$amount, batchId=$batchId, createEpoch=$createEpoch, txHash=$txHash, vid=$vid]';

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
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.tokenAddress != null) {
      json[r'token_address'] = this.tokenAddress;
    } else {
      json[r'token_address'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.batchId != null) {
      json[r'batch_id'] = this.batchId;
    } else {
      json[r'batch_id'] = null;
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

  /// Returns a new [DexDepositDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DexDepositDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DexDepositDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DexDepositDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DexDepositDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        user: mapValueOfType<String>(json, r'user'),
        tokenAddress: mapValueOfType<String>(json, r'token_address'),
        amount: mapValueOfType<String>(json, r'amount'),
        batchId: mapValueOfType<String>(json, r'batch_id'),
        createEpoch: mapValueOfType<String>(json, r'create_epoch'),
        txHash: mapValueOfType<String>(json, r'tx_hash'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<DexDepositDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DexDepositDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DexDepositDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DexDepositDTO> mapFromJson(dynamic json) {
    final map = <String, DexDepositDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DexDepositDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DexDepositDTO-objects as value to a dart map
  static Map<String, List<DexDepositDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DexDepositDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DexDepositDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

