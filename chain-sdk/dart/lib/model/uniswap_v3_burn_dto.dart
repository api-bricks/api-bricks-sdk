//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV3BurnDTO {
  /// Returns a new [UniswapV3BurnDTO] instance.
  UniswapV3BurnDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.transaction,
    this.pool,
    this.token0,
    this.token1,
    this.timestamp,
    this.owner,
    this.origin,
    this.amount,
    this.amount0,
    this.amount1,
    this.amountUsd,
    this.tickLower,
    this.tickUpper,
    this.logIndex,
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

  /// Transaction hash + '#' + index in mints Transaction array.
  String? id;

  /// Transaction burn was included in.
  String? transaction;

  /// Pool position is within.
  String? pool;

  /// Reference to token0 as stored in pool contract.
  String? token0;

  /// Reference to token1 as stored in pool contract.
  String? token1;

  /// Timestamp.
  String? timestamp;

  /// Owner of position where liquidity was burned.
  String? owner;

  /// Transaction origin: the EOA (Externally Owned Account) that initiated the transaction.
  String? origin;

  /// Amount of liquidity burned.
  String? amount;

  /// Amount of token 0 burned.
  String? amount0;

  /// Amount of token 1 burned.
  String? amount1;

  /// Derived amount based on available prices of tokens.
  String? amountUsd;

  /// Lower tick of position.
  String? tickLower;

  /// Upper tick of position.
  String? tickUpper;

  /// Position within the transactions.
  String? logIndex;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV3BurnDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.transaction == transaction &&
     other.pool == pool &&
     other.token0 == token0 &&
     other.token1 == token1 &&
     other.timestamp == timestamp &&
     other.owner == owner &&
     other.origin == origin &&
     other.amount == amount &&
     other.amount0 == amount0 &&
     other.amount1 == amount1 &&
     other.amountUsd == amountUsd &&
     other.tickLower == tickLower &&
     other.tickUpper == tickUpper &&
     other.logIndex == logIndex &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (transaction == null ? 0 : transaction!.hashCode) +
    (pool == null ? 0 : pool!.hashCode) +
    (token0 == null ? 0 : token0!.hashCode) +
    (token1 == null ? 0 : token1!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (origin == null ? 0 : origin!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (amount0 == null ? 0 : amount0!.hashCode) +
    (amount1 == null ? 0 : amount1!.hashCode) +
    (amountUsd == null ? 0 : amountUsd!.hashCode) +
    (tickLower == null ? 0 : tickLower!.hashCode) +
    (tickUpper == null ? 0 : tickUpper!.hashCode) +
    (logIndex == null ? 0 : logIndex!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'UniswapV3BurnDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, transaction=$transaction, pool=$pool, token0=$token0, token1=$token1, timestamp=$timestamp, owner=$owner, origin=$origin, amount=$amount, amount0=$amount0, amount1=$amount1, amountUsd=$amountUsd, tickLower=$tickLower, tickUpper=$tickUpper, logIndex=$logIndex, vid=$vid]';

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
    if (this.transaction != null) {
      json[r'transaction'] = this.transaction;
    } else {
      json[r'transaction'] = null;
    }
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    if (this.token0 != null) {
      json[r'token_0'] = this.token0;
    } else {
      json[r'token_0'] = null;
    }
    if (this.token1 != null) {
      json[r'token_1'] = this.token1;
    } else {
      json[r'token_1'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.origin != null) {
      json[r'origin'] = this.origin;
    } else {
      json[r'origin'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.amount0 != null) {
      json[r'amount_0'] = this.amount0;
    } else {
      json[r'amount_0'] = null;
    }
    if (this.amount1 != null) {
      json[r'amount_1'] = this.amount1;
    } else {
      json[r'amount_1'] = null;
    }
    if (this.amountUsd != null) {
      json[r'amount_usd'] = this.amountUsd;
    } else {
      json[r'amount_usd'] = null;
    }
    if (this.tickLower != null) {
      json[r'tick_lower'] = this.tickLower;
    } else {
      json[r'tick_lower'] = null;
    }
    if (this.tickUpper != null) {
      json[r'tick_upper'] = this.tickUpper;
    } else {
      json[r'tick_upper'] = null;
    }
    if (this.logIndex != null) {
      json[r'log_index'] = this.logIndex;
    } else {
      json[r'log_index'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV3BurnDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV3BurnDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV3BurnDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV3BurnDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV3BurnDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        pool: mapValueOfType<String>(json, r'pool'),
        token0: mapValueOfType<String>(json, r'token_0'),
        token1: mapValueOfType<String>(json, r'token_1'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        owner: mapValueOfType<String>(json, r'owner'),
        origin: mapValueOfType<String>(json, r'origin'),
        amount: mapValueOfType<String>(json, r'amount'),
        amount0: mapValueOfType<String>(json, r'amount_0'),
        amount1: mapValueOfType<String>(json, r'amount_1'),
        amountUsd: mapValueOfType<String>(json, r'amount_usd'),
        tickLower: mapValueOfType<String>(json, r'tick_lower'),
        tickUpper: mapValueOfType<String>(json, r'tick_upper'),
        logIndex: mapValueOfType<String>(json, r'log_index'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<UniswapV3BurnDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV3BurnDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV3BurnDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV3BurnDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV3BurnDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV3BurnDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV3BurnDTO-objects as value to a dart map
  static Map<String, List<UniswapV3BurnDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV3BurnDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV3BurnDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

