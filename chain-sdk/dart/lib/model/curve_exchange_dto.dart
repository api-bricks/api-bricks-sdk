//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurveExchangeDTO {
  /// Returns a new [CurveExchangeDTO] instance.
  CurveExchangeDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.pool,
    this.buyer,
    this.receiver,
    this.tokenSold,
    this.tokenBought,
    this.amountSold,
    this.amountBought,
    this.block,
    this.timestamp,
    this.transaction,
    this.vid,
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
  String? id;

  /// 
  String? pool;

  /// 
  String? buyer;

  /// 
  String? receiver;

  /// 
  String? tokenSold;

  /// 
  String? tokenBought;

  /// 
  String? amountSold;

  /// 
  String? amountBought;

  /// 
  String? block;

  /// 
  String? timestamp;

  /// 
  String? transaction;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

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
  bool operator ==(Object other) => identical(this, other) || other is CurveExchangeDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.pool == pool &&
     other.buyer == buyer &&
     other.receiver == receiver &&
     other.tokenSold == tokenSold &&
     other.tokenBought == tokenBought &&
     other.amountSold == amountSold &&
     other.amountBought == amountBought &&
     other.block == block &&
     other.timestamp == timestamp &&
     other.transaction == transaction &&
     other.vid == vid &&
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
    (id == null ? 0 : id!.hashCode) +
    (pool == null ? 0 : pool!.hashCode) +
    (buyer == null ? 0 : buyer!.hashCode) +
    (receiver == null ? 0 : receiver!.hashCode) +
    (tokenSold == null ? 0 : tokenSold!.hashCode) +
    (tokenBought == null ? 0 : tokenBought!.hashCode) +
    (amountSold == null ? 0 : amountSold!.hashCode) +
    (amountBought == null ? 0 : amountBought!.hashCode) +
    (block == null ? 0 : block!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (transaction == null ? 0 : transaction!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (evaluatedPrice == null ? 0 : evaluatedPrice!.hashCode) +
    (evaluatedAmount == null ? 0 : evaluatedAmount!.hashCode) +
    (evaluatedAggressor == null ? 0 : evaluatedAggressor!.hashCode) +
    (poolId == null ? 0 : poolId!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode);

  @override
  String toString() => 'CurveExchangeDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, pool=$pool, buyer=$buyer, receiver=$receiver, tokenSold=$tokenSold, tokenBought=$tokenBought, amountSold=$amountSold, amountBought=$amountBought, block=$block, timestamp=$timestamp, transaction=$transaction, vid=$vid, evaluatedPrice=$evaluatedPrice, evaluatedAmount=$evaluatedAmount, evaluatedAggressor=$evaluatedAggressor, poolId=$poolId, transactionId=$transactionId]';

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
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    if (this.buyer != null) {
      json[r'buyer'] = this.buyer;
    } else {
      json[r'buyer'] = null;
    }
    if (this.receiver != null) {
      json[r'receiver'] = this.receiver;
    } else {
      json[r'receiver'] = null;
    }
    if (this.tokenSold != null) {
      json[r'token_sold'] = this.tokenSold;
    } else {
      json[r'token_sold'] = null;
    }
    if (this.tokenBought != null) {
      json[r'token_bought'] = this.tokenBought;
    } else {
      json[r'token_bought'] = null;
    }
    if (this.amountSold != null) {
      json[r'amount_sold'] = this.amountSold;
    } else {
      json[r'amount_sold'] = null;
    }
    if (this.amountBought != null) {
      json[r'amount_bought'] = this.amountBought;
    } else {
      json[r'amount_bought'] = null;
    }
    if (this.block != null) {
      json[r'block'] = this.block;
    } else {
      json[r'block'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.transaction != null) {
      json[r'transaction'] = this.transaction;
    } else {
      json[r'transaction'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
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

  /// Returns a new [CurveExchangeDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurveExchangeDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurveExchangeDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurveExchangeDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurveExchangeDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        pool: mapValueOfType<String>(json, r'pool'),
        buyer: mapValueOfType<String>(json, r'buyer'),
        receiver: mapValueOfType<String>(json, r'receiver'),
        tokenSold: mapValueOfType<String>(json, r'token_sold'),
        tokenBought: mapValueOfType<String>(json, r'token_bought'),
        amountSold: mapValueOfType<String>(json, r'amount_sold'),
        amountBought: mapValueOfType<String>(json, r'amount_bought'),
        block: mapValueOfType<String>(json, r'block'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        vid: mapValueOfType<int>(json, r'vid'),
        evaluatedPrice: mapValueOfType<double>(json, r'evaluated_price'),
        evaluatedAmount: mapValueOfType<double>(json, r'evaluated_amount'),
        evaluatedAggressor: TransactionsETradeAggressiveSide.fromJson(json[r'evaluated_aggressor']),
        poolId: mapValueOfType<String>(json, r'pool_id'),
        transactionId: mapValueOfType<String>(json, r'transaction_id'),
      );
    }
    return null;
  }

  static List<CurveExchangeDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurveExchangeDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurveExchangeDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurveExchangeDTO> mapFromJson(dynamic json) {
    final map = <String, CurveExchangeDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurveExchangeDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurveExchangeDTO-objects as value to a dart map
  static Map<String, List<CurveExchangeDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurveExchangeDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurveExchangeDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

