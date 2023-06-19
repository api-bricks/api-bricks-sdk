//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV3SwapDTO {
  /// Returns a new [UniswapV3SwapDTO] instance.
  UniswapV3SwapDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.vid,
    this.id,
    this.transaction,
    this.timestamp,
    this.pool,
    this.token0,
    this.token1,
    this.sender,
    this.recipient,
    this.origin,
    this.amount0,
    this.amount1,
    this.amountUsd,
    this.sqrtPriceX96,
    this.tick,
    this.logIndex,
    this.evaluatedPrice,
    this.evaluatedAmount,
    this.evaluatedAggressor,
    this.poolId,
    this.transactionId,
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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  /// Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
  String? id;

  /// Pointer to transaction.
  String? transaction;

  /// Timestamp of transaction.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Pool swap occured within.
  String? pool;

  /// Reference to token0 as stored in pair contract.
  String? token0;

  /// Reference to token1 as stored in pair contract.
  String? token1;

  /// Sender of the swap.
  String? sender;

  /// Recipient of the swap.
  String? recipient;

  /// Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
  String? origin;

  /// Delta of token0 swapped.
  String? amount0;

  /// Delta of token1 swapped.
  String? amount1;

  /// Derived amount of tokens sold in USD.
  String? amountUsd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? sqrtPriceX96;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? tick;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumericsBigInteger? logIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? evaluatedPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? evaluatedAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TransactionsETradeAggressiveSide? evaluatedAggressor;

  String? poolId;

  String? transactionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV3SwapDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.vid == vid &&
     other.id == id &&
     other.transaction == transaction &&
     other.timestamp == timestamp &&
     other.pool == pool &&
     other.token0 == token0 &&
     other.token1 == token1 &&
     other.sender == sender &&
     other.recipient == recipient &&
     other.origin == origin &&
     other.amount0 == amount0 &&
     other.amount1 == amount1 &&
     other.amountUsd == amountUsd &&
     other.sqrtPriceX96 == sqrtPriceX96 &&
     other.tick == tick &&
     other.logIndex == logIndex &&
     other.evaluatedPrice == evaluatedPrice &&
     other.evaluatedAmount == evaluatedAmount &&
     other.evaluatedAggressor == evaluatedAggressor &&
     other.poolId == poolId &&
     other.transactionId == transactionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (transaction == null ? 0 : transaction!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (pool == null ? 0 : pool!.hashCode) +
    (token0 == null ? 0 : token0!.hashCode) +
    (token1 == null ? 0 : token1!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (origin == null ? 0 : origin!.hashCode) +
    (amount0 == null ? 0 : amount0!.hashCode) +
    (amount1 == null ? 0 : amount1!.hashCode) +
    (amountUsd == null ? 0 : amountUsd!.hashCode) +
    (sqrtPriceX96 == null ? 0 : sqrtPriceX96!.hashCode) +
    (tick == null ? 0 : tick!.hashCode) +
    (logIndex == null ? 0 : logIndex!.hashCode) +
    (evaluatedPrice == null ? 0 : evaluatedPrice!.hashCode) +
    (evaluatedAmount == null ? 0 : evaluatedAmount!.hashCode) +
    (evaluatedAggressor == null ? 0 : evaluatedAggressor!.hashCode) +
    (poolId == null ? 0 : poolId!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode);

  @override
  String toString() => 'UniswapV3SwapDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, vid=$vid, id=$id, transaction=$transaction, timestamp=$timestamp, pool=$pool, token0=$token0, token1=$token1, sender=$sender, recipient=$recipient, origin=$origin, amount0=$amount0, amount1=$amount1, amountUsd=$amountUsd, sqrtPriceX96=$sqrtPriceX96, tick=$tick, logIndex=$logIndex, evaluatedPrice=$evaluatedPrice, evaluatedAmount=$evaluatedAmount, evaluatedAggressor=$evaluatedAggressor, poolId=$poolId, transactionId=$transactionId]';

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
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
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
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
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
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    if (this.origin != null) {
      json[r'origin'] = this.origin;
    } else {
      json[r'origin'] = null;
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
    if (this.sqrtPriceX96 != null) {
      json[r'sqrt_price_x96'] = this.sqrtPriceX96;
    } else {
      json[r'sqrt_price_x96'] = null;
    }
    if (this.tick != null) {
      json[r'tick'] = this.tick;
    } else {
      json[r'tick'] = null;
    }
    if (this.logIndex != null) {
      json[r'log_index'] = this.logIndex;
    } else {
      json[r'log_index'] = null;
    }
    if (this.evaluatedPrice != null) {
      json[r'evaluated_price'] = this.evaluatedPrice;
    } else {
      json[r'evaluated_price'] = null;
    }
    if (this.evaluatedAmount != null) {
      json[r'evaluated_amount'] = this.evaluatedAmount;
    } else {
      json[r'evaluated_amount'] = null;
    }
    if (this.evaluatedAggressor != null) {
      json[r'evaluated_aggressor'] = this.evaluatedAggressor;
    } else {
      json[r'evaluated_aggressor'] = null;
    }
    if (this.poolId != null) {
      json[r'pool_id'] = this.poolId;
    } else {
      json[r'pool_id'] = null;
    }
    if (this.transactionId != null) {
      json[r'transaction_id'] = this.transactionId;
    } else {
      json[r'transaction_id'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV3SwapDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV3SwapDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV3SwapDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV3SwapDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV3SwapDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        vid: mapValueOfType<int>(json, r'vid'),
        id: mapValueOfType<String>(json, r'id'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        timestamp: mapDateTime(json, r'timestamp', ''),
        pool: mapValueOfType<String>(json, r'pool'),
        token0: mapValueOfType<String>(json, r'token_0'),
        token1: mapValueOfType<String>(json, r'token_1'),
        sender: mapValueOfType<String>(json, r'sender'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        origin: mapValueOfType<String>(json, r'origin'),
        amount0: mapValueOfType<String>(json, r'amount_0'),
        amount1: mapValueOfType<String>(json, r'amount_1'),
        amountUsd: mapValueOfType<String>(json, r'amount_usd'),
        sqrtPriceX96: NumericsBigInteger.fromJson(json[r'sqrt_price_x96']),
        tick: NumericsBigInteger.fromJson(json[r'tick']),
        logIndex: NumericsBigInteger.fromJson(json[r'log_index']),
        evaluatedPrice: mapValueOfType<double>(json, r'evaluated_price'),
        evaluatedAmount: mapValueOfType<double>(json, r'evaluated_amount'),
        evaluatedAggressor: TransactionsETradeAggressiveSide.fromJson(json[r'evaluated_aggressor']),
        poolId: mapValueOfType<String>(json, r'pool_id'),
        transactionId: mapValueOfType<String>(json, r'transaction_id'),
      );
    }
    return null;
  }

  static List<UniswapV3SwapDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV3SwapDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV3SwapDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV3SwapDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV3SwapDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV3SwapDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV3SwapDTO-objects as value to a dart map
  static Map<String, List<UniswapV3SwapDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV3SwapDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV3SwapDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

