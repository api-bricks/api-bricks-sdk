//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CowTradeDTO {
  /// Returns a new [CowTradeDTO] instance.
  CowTradeDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.timestamp,
    this.gasPrice,
    this.gasLimit,
    this.feeAmount,
    this.txHash,
    this.settlement,
    this.buyAmount,
    this.sellAmount,
    this.sellToken,
    this.buyToken,
    this.order,
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

  /// Identifier, format: (order id)|(transaction hash)|(event index).
  String? id;

  /// Block's timestamp.
  String? timestamp;

  /// Transaction's gas price.
  String? gasPrice;

  /// Transaction's gas limit.
  String? gasLimit;

  /// Trade's fee amount.
  String? feeAmount;

  /// Trade event transaction hash.
  String? txHash;

  /// Reference to settlement.
  String? settlement;

  /// Buy amount.
  String? buyAmount;

  /// Sell amount.
  String? sellAmount;

  /// Address of token that is sold.
  String? sellToken;

  /// Address of token that is bought.
  String? buyToken;

  /// Reference to order.
  String? order;

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
  bool operator ==(Object other) => identical(this, other) || other is CowTradeDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.timestamp == timestamp &&
     other.gasPrice == gasPrice &&
     other.gasLimit == gasLimit &&
     other.feeAmount == feeAmount &&
     other.txHash == txHash &&
     other.settlement == settlement &&
     other.buyAmount == buyAmount &&
     other.sellAmount == sellAmount &&
     other.sellToken == sellToken &&
     other.buyToken == buyToken &&
     other.order == order &&
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
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (gasPrice == null ? 0 : gasPrice!.hashCode) +
    (gasLimit == null ? 0 : gasLimit!.hashCode) +
    (feeAmount == null ? 0 : feeAmount!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode) +
    (settlement == null ? 0 : settlement!.hashCode) +
    (buyAmount == null ? 0 : buyAmount!.hashCode) +
    (sellAmount == null ? 0 : sellAmount!.hashCode) +
    (sellToken == null ? 0 : sellToken!.hashCode) +
    (buyToken == null ? 0 : buyToken!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (poolId == null ? 0 : poolId!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (evaluatedPrice == null ? 0 : evaluatedPrice!.hashCode) +
    (evaluatedAmount == null ? 0 : evaluatedAmount!.hashCode) +
    (evaluatedAggressor == null ? 0 : evaluatedAggressor!.hashCode);

  @override
  String toString() => 'CowTradeDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, timestamp=$timestamp, gasPrice=$gasPrice, gasLimit=$gasLimit, feeAmount=$feeAmount, txHash=$txHash, settlement=$settlement, buyAmount=$buyAmount, sellAmount=$sellAmount, sellToken=$sellToken, buyToken=$buyToken, order=$order, vid=$vid, poolId=$poolId, transactionId=$transactionId, evaluatedPrice=$evaluatedPrice, evaluatedAmount=$evaluatedAmount, evaluatedAggressor=$evaluatedAggressor]';

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
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.gasPrice != null) {
      json[r'gas_price'] = this.gasPrice;
    } else {
      json[r'gas_price'] = null;
    }
    if (this.gasLimit != null) {
      json[r'gas_limit'] = this.gasLimit;
    } else {
      json[r'gas_limit'] = null;
    }
    if (this.feeAmount != null) {
      json[r'fee_amount'] = this.feeAmount;
    } else {
      json[r'fee_amount'] = null;
    }
    if (this.txHash != null) {
      json[r'tx_hash'] = this.txHash;
    } else {
      json[r'tx_hash'] = null;
    }
    if (this.settlement != null) {
      json[r'settlement'] = this.settlement;
    } else {
      json[r'settlement'] = null;
    }
    if (this.buyAmount != null) {
      json[r'buy_amount'] = this.buyAmount;
    } else {
      json[r'buy_amount'] = null;
    }
    if (this.sellAmount != null) {
      json[r'sell_amount'] = this.sellAmount;
    } else {
      json[r'sell_amount'] = null;
    }
    if (this.sellToken != null) {
      json[r'sell_token'] = this.sellToken;
    } else {
      json[r'sell_token'] = null;
    }
    if (this.buyToken != null) {
      json[r'buy_token'] = this.buyToken;
    } else {
      json[r'buy_token'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
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

  /// Returns a new [CowTradeDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CowTradeDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CowTradeDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CowTradeDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CowTradeDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        gasPrice: mapValueOfType<String>(json, r'gas_price'),
        gasLimit: mapValueOfType<String>(json, r'gas_limit'),
        feeAmount: mapValueOfType<String>(json, r'fee_amount'),
        txHash: mapValueOfType<String>(json, r'tx_hash'),
        settlement: mapValueOfType<String>(json, r'settlement'),
        buyAmount: mapValueOfType<String>(json, r'buy_amount'),
        sellAmount: mapValueOfType<String>(json, r'sell_amount'),
        sellToken: mapValueOfType<String>(json, r'sell_token'),
        buyToken: mapValueOfType<String>(json, r'buy_token'),
        order: mapValueOfType<String>(json, r'order'),
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

  static List<CowTradeDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CowTradeDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CowTradeDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CowTradeDTO> mapFromJson(dynamic json) {
    final map = <String, CowTradeDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CowTradeDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CowTradeDTO-objects as value to a dart map
  static Map<String, List<CowTradeDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CowTradeDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CowTradeDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

