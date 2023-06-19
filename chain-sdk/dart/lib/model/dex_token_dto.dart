//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DexTokenDTO {
  /// Returns a new [DexTokenDTO] instance.
  DexTokenDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.address,
    this.fromBatchId,
    this.symbol,
    this.decimals,
    this.name,
    this.sellVolume,
    this.createEpoch,
    this.txHash,
    this.vid,
    this.tokenSymbol,
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
  String? address;

  /// 
  String? fromBatchId;

  /// 
  String? symbol;

  /// 
  String? decimals;

  /// 
  String? name;

  /// Cumulative sell volume.
  String? sellVolume;

  /// 
  String? createEpoch;

  /// 
  String? txHash;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  String? tokenSymbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DexTokenDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.address == address &&
     other.fromBatchId == fromBatchId &&
     other.symbol == symbol &&
     other.decimals == decimals &&
     other.name == name &&
     other.sellVolume == sellVolume &&
     other.createEpoch == createEpoch &&
     other.txHash == txHash &&
     other.vid == vid &&
     other.tokenSymbol == tokenSymbol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (fromBatchId == null ? 0 : fromBatchId!.hashCode) +
    (symbol == null ? 0 : symbol!.hashCode) +
    (decimals == null ? 0 : decimals!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (sellVolume == null ? 0 : sellVolume!.hashCode) +
    (createEpoch == null ? 0 : createEpoch!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (tokenSymbol == null ? 0 : tokenSymbol!.hashCode);

  @override
  String toString() => 'DexTokenDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, address=$address, fromBatchId=$fromBatchId, symbol=$symbol, decimals=$decimals, name=$name, sellVolume=$sellVolume, createEpoch=$createEpoch, txHash=$txHash, vid=$vid, tokenSymbol=$tokenSymbol]';

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
    if (this.fromBatchId != null) {
      json[r'from_batch_id'] = this.fromBatchId;
    } else {
      json[r'from_batch_id'] = null;
    }
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    if (this.decimals != null) {
      json[r'decimals'] = this.decimals;
    } else {
      json[r'decimals'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.sellVolume != null) {
      json[r'sell_volume'] = this.sellVolume;
    } else {
      json[r'sell_volume'] = null;
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
    if (this.tokenSymbol != null) {
      json[r'token_symbol'] = this.tokenSymbol;
    } else {
      json[r'token_symbol'] = null;
    }
    return json;
  }

  /// Returns a new [DexTokenDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DexTokenDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DexTokenDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DexTokenDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DexTokenDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        address: mapValueOfType<String>(json, r'address'),
        fromBatchId: mapValueOfType<String>(json, r'from_batch_id'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        decimals: mapValueOfType<String>(json, r'decimals'),
        name: mapValueOfType<String>(json, r'name'),
        sellVolume: mapValueOfType<String>(json, r'sell_volume'),
        createEpoch: mapValueOfType<String>(json, r'create_epoch'),
        txHash: mapValueOfType<String>(json, r'tx_hash'),
        vid: mapValueOfType<int>(json, r'vid'),
        tokenSymbol: mapValueOfType<String>(json, r'token_symbol'),
      );
    }
    return null;
  }

  static List<DexTokenDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DexTokenDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DexTokenDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DexTokenDTO> mapFromJson(dynamic json) {
    final map = <String, DexTokenDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DexTokenDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DexTokenDTO-objects as value to a dart map
  static Map<String, List<DexTokenDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DexTokenDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DexTokenDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

