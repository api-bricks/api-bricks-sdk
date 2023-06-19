//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurveCoinDTO {
  /// Returns a new [CurveCoinDTO] instance.
  CurveCoinDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.index,
    this.pool,
    this.token,
    this.underlying,
    this.balance,
    this.rate,
    this.updated,
    this.updatedAtBlock,
    this.updatedAtTransaction,
    this.vid,
    this.blockRange,
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

  /// Identifier, format: (pool_id)-(coin_index).
  String? id;

  /// Coin index.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? index;

  /// 
  String? pool;

  /// 
  String? token;

  /// 
  String? underlying;

  /// 
  String? balance;

  /// Exchange rate between this coin and the associated underlying coin within the pool.
  String? rate;

  /// 
  String? updated;

  /// 
  String? updatedAtBlock;

  /// 
  String? updatedAtTransaction;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  /// 
  String? blockRange;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurveCoinDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.index == index &&
     other.pool == pool &&
     other.token == token &&
     other.underlying == underlying &&
     other.balance == balance &&
     other.rate == rate &&
     other.updated == updated &&
     other.updatedAtBlock == updatedAtBlock &&
     other.updatedAtTransaction == updatedAtTransaction &&
     other.vid == vid &&
     other.blockRange == blockRange;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (index == null ? 0 : index!.hashCode) +
    (pool == null ? 0 : pool!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (underlying == null ? 0 : underlying!.hashCode) +
    (balance == null ? 0 : balance!.hashCode) +
    (rate == null ? 0 : rate!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (updatedAtBlock == null ? 0 : updatedAtBlock!.hashCode) +
    (updatedAtTransaction == null ? 0 : updatedAtTransaction!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (blockRange == null ? 0 : blockRange!.hashCode);

  @override
  String toString() => 'CurveCoinDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, index=$index, pool=$pool, token=$token, underlying=$underlying, balance=$balance, rate=$rate, updated=$updated, updatedAtBlock=$updatedAtBlock, updatedAtTransaction=$updatedAtTransaction, vid=$vid, blockRange=$blockRange]';

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
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.underlying != null) {
      json[r'underlying'] = this.underlying;
    } else {
      json[r'underlying'] = null;
    }
    if (this.balance != null) {
      json[r'balance'] = this.balance;
    } else {
      json[r'balance'] = null;
    }
    if (this.rate != null) {
      json[r'rate'] = this.rate;
    } else {
      json[r'rate'] = null;
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
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    if (this.blockRange != null) {
      json[r'block_range'] = this.blockRange;
    } else {
      json[r'block_range'] = null;
    }
    return json;
  }

  /// Returns a new [CurveCoinDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurveCoinDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurveCoinDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurveCoinDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurveCoinDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        index: mapValueOfType<int>(json, r'index'),
        pool: mapValueOfType<String>(json, r'pool'),
        token: mapValueOfType<String>(json, r'token'),
        underlying: mapValueOfType<String>(json, r'underlying'),
        balance: mapValueOfType<String>(json, r'balance'),
        rate: mapValueOfType<String>(json, r'rate'),
        updated: mapValueOfType<String>(json, r'updated'),
        updatedAtBlock: mapValueOfType<String>(json, r'updated_at_block'),
        updatedAtTransaction: mapValueOfType<String>(json, r'updated_at_transaction'),
        vid: mapValueOfType<int>(json, r'vid'),
        blockRange: mapValueOfType<String>(json, r'block_range'),
      );
    }
    return null;
  }

  static List<CurveCoinDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurveCoinDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurveCoinDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurveCoinDTO> mapFromJson(dynamic json) {
    final map = <String, CurveCoinDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurveCoinDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurveCoinDTO-objects as value to a dart map
  static Map<String, List<CurveCoinDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurveCoinDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurveCoinDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

