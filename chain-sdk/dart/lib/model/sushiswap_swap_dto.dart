//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SushiswapSwapDTO {
  /// Returns a new [SushiswapSwapDTO] instance.
  SushiswapSwapDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.transaction,
    this.timestamp,
    this.pair,
    this.sender,
    this.amount0In,
    this.amount1In,
    this.amount0Out,
    this.amount1Out,
    this.to,
    this.logIndex,
    this.amountUsd,
    this.vid,
    this.poolId,
    this.transactionId,
    this.evaluatedPrice,
    this.evaluatedAmount,
    this.evaluatedAggressor,
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

  /// Transaction hash plus index in Transaction swap array.
  String? id;

  /// Reference to transaction swap was included in.
  String? transaction;

  /// Timestamp of swap, used for sorted lookups.
  String? timestamp;

  /// Reference to pair.
  String? pair;

  /// Address that initiated the swap.
  String? sender;

  /// Amount of token0 sold.
  String? amount0In;

  /// Amount of token1 sold.
  String? amount1In;

  /// Amount of token0 received.
  String? amount0Out;

  /// Amount of token1 received.
  String? amount1Out;

  /// Recipient of output tokens.
  String? to;

  /// Event index within transaction.
  String? logIndex;

  /// Derived amount of tokens sold in USD.
  String? amountUsd;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  String? poolId;

  String? transactionId;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is SushiswapSwapDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.transaction == transaction &&
     other.timestamp == timestamp &&
     other.pair == pair &&
     other.sender == sender &&
     other.amount0In == amount0In &&
     other.amount1In == amount1In &&
     other.amount0Out == amount0Out &&
     other.amount1Out == amount1Out &&
     other.to == to &&
     other.logIndex == logIndex &&
     other.amountUsd == amountUsd &&
     other.vid == vid &&
     other.poolId == poolId &&
     other.transactionId == transactionId &&
     other.evaluatedPrice == evaluatedPrice &&
     other.evaluatedAmount == evaluatedAmount &&
     other.evaluatedAggressor == evaluatedAggressor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (transaction == null ? 0 : transaction!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (pair == null ? 0 : pair!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (amount0In == null ? 0 : amount0In!.hashCode) +
    (amount1In == null ? 0 : amount1In!.hashCode) +
    (amount0Out == null ? 0 : amount0Out!.hashCode) +
    (amount1Out == null ? 0 : amount1Out!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (logIndex == null ? 0 : logIndex!.hashCode) +
    (amountUsd == null ? 0 : amountUsd!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (poolId == null ? 0 : poolId!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (evaluatedPrice == null ? 0 : evaluatedPrice!.hashCode) +
    (evaluatedAmount == null ? 0 : evaluatedAmount!.hashCode) +
    (evaluatedAggressor == null ? 0 : evaluatedAggressor!.hashCode);

  @override
  String toString() => 'SushiswapSwapDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, transaction=$transaction, timestamp=$timestamp, pair=$pair, sender=$sender, amount0In=$amount0In, amount1In=$amount1In, amount0Out=$amount0Out, amount1Out=$amount1Out, to=$to, logIndex=$logIndex, amountUsd=$amountUsd, vid=$vid, poolId=$poolId, transactionId=$transactionId, evaluatedPrice=$evaluatedPrice, evaluatedAmount=$evaluatedAmount, evaluatedAggressor=$evaluatedAggressor]';

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
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.pair != null) {
      json[r'pair'] = this.pair;
    } else {
      json[r'pair'] = null;
    }
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    if (this.amount0In != null) {
      json[r'amount_0_in'] = this.amount0In;
    } else {
      json[r'amount_0_in'] = null;
    }
    if (this.amount1In != null) {
      json[r'amount_1_in'] = this.amount1In;
    } else {
      json[r'amount_1_in'] = null;
    }
    if (this.amount0Out != null) {
      json[r'amount_0_out'] = this.amount0Out;
    } else {
      json[r'amount_0_out'] = null;
    }
    if (this.amount1Out != null) {
      json[r'amount_1_out'] = this.amount1Out;
    } else {
      json[r'amount_1_out'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.logIndex != null) {
      json[r'log_index'] = this.logIndex;
    } else {
      json[r'log_index'] = null;
    }
    if (this.amountUsd != null) {
      json[r'amount_usd'] = this.amountUsd;
    } else {
      json[r'amount_usd'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
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
    return json;
  }

  /// Returns a new [SushiswapSwapDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SushiswapSwapDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SushiswapSwapDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SushiswapSwapDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SushiswapSwapDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        pair: mapValueOfType<String>(json, r'pair'),
        sender: mapValueOfType<String>(json, r'sender'),
        amount0In: mapValueOfType<String>(json, r'amount_0_in'),
        amount1In: mapValueOfType<String>(json, r'amount_1_in'),
        amount0Out: mapValueOfType<String>(json, r'amount_0_out'),
        amount1Out: mapValueOfType<String>(json, r'amount_1_out'),
        to: mapValueOfType<String>(json, r'to'),
        logIndex: mapValueOfType<String>(json, r'log_index'),
        amountUsd: mapValueOfType<String>(json, r'amount_usd'),
        vid: mapValueOfType<int>(json, r'vid'),
        poolId: mapValueOfType<String>(json, r'pool_id'),
        transactionId: mapValueOfType<String>(json, r'transaction_id'),
        evaluatedPrice: mapValueOfType<double>(json, r'evaluated_price'),
        evaluatedAmount: mapValueOfType<double>(json, r'evaluated_amount'),
        evaluatedAggressor: TransactionsETradeAggressiveSide.fromJson(json[r'evaluated_aggressor']),
      );
    }
    return null;
  }

  static List<SushiswapSwapDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SushiswapSwapDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SushiswapSwapDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SushiswapSwapDTO> mapFromJson(dynamic json) {
    final map = <String, SushiswapSwapDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SushiswapSwapDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SushiswapSwapDTO-objects as value to a dart map
  static Map<String, List<SushiswapSwapDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SushiswapSwapDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SushiswapSwapDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

