//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DexTradeDTO {
  /// Returns a new [DexTradeDTO] instance.
  DexTradeDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.order,
    this.owner,
    this.sellVolume,
    this.buyVolume,
    this.tradeBatchId,
    this.tradeEpoch,
    this.buyToken,
    this.sellToken,
    this.createEpoch,
    this.revertEpoch,
    this.txHash,
    this.txLogIndex,
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

  /// 
  String? id;

  /// 
  String? order;

  /// 
  String? owner;

  /// 
  String? sellVolume;

  /// 
  String? buyVolume;

  /// 
  String? tradeBatchId;

  /// The date of the end of the batch.
  String? tradeEpoch;

  /// 
  String? buyToken;

  /// 
  String? sellToken;

  /// The date where the transaction was mined.
  String? createEpoch;

  /// 
  String? revertEpoch;

  /// 
  String? txHash;

  /// 
  String? txLogIndex;

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
  bool operator ==(Object other) => identical(this, other) || other is DexTradeDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.order == order &&
     other.owner == owner &&
     other.sellVolume == sellVolume &&
     other.buyVolume == buyVolume &&
     other.tradeBatchId == tradeBatchId &&
     other.tradeEpoch == tradeEpoch &&
     other.buyToken == buyToken &&
     other.sellToken == sellToken &&
     other.createEpoch == createEpoch &&
     other.revertEpoch == revertEpoch &&
     other.txHash == txHash &&
     other.txLogIndex == txLogIndex &&
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
    (order == null ? 0 : order!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (sellVolume == null ? 0 : sellVolume!.hashCode) +
    (buyVolume == null ? 0 : buyVolume!.hashCode) +
    (tradeBatchId == null ? 0 : tradeBatchId!.hashCode) +
    (tradeEpoch == null ? 0 : tradeEpoch!.hashCode) +
    (buyToken == null ? 0 : buyToken!.hashCode) +
    (sellToken == null ? 0 : sellToken!.hashCode) +
    (createEpoch == null ? 0 : createEpoch!.hashCode) +
    (revertEpoch == null ? 0 : revertEpoch!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode) +
    (txLogIndex == null ? 0 : txLogIndex!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (poolId == null ? 0 : poolId!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (evaluatedPrice == null ? 0 : evaluatedPrice!.hashCode) +
    (evaluatedAmount == null ? 0 : evaluatedAmount!.hashCode) +
    (evaluatedAggressor == null ? 0 : evaluatedAggressor!.hashCode);

  @override
  String toString() => 'DexTradeDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, order=$order, owner=$owner, sellVolume=$sellVolume, buyVolume=$buyVolume, tradeBatchId=$tradeBatchId, tradeEpoch=$tradeEpoch, buyToken=$buyToken, sellToken=$sellToken, createEpoch=$createEpoch, revertEpoch=$revertEpoch, txHash=$txHash, txLogIndex=$txLogIndex, vid=$vid, poolId=$poolId, transactionId=$transactionId, evaluatedPrice=$evaluatedPrice, evaluatedAmount=$evaluatedAmount, evaluatedAggressor=$evaluatedAggressor]';

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
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.sellVolume != null) {
      json[r'sell_volume'] = this.sellVolume;
    } else {
      json[r'sell_volume'] = null;
    }
    if (this.buyVolume != null) {
      json[r'buy_volume'] = this.buyVolume;
    } else {
      json[r'buy_volume'] = null;
    }
    if (this.tradeBatchId != null) {
      json[r'trade_batch_id'] = this.tradeBatchId;
    } else {
      json[r'trade_batch_id'] = null;
    }
    if (this.tradeEpoch != null) {
      json[r'trade_epoch'] = this.tradeEpoch;
    } else {
      json[r'trade_epoch'] = null;
    }
    if (this.buyToken != null) {
      json[r'buy_token'] = this.buyToken;
    } else {
      json[r'buy_token'] = null;
    }
    if (this.sellToken != null) {
      json[r'sell_token'] = this.sellToken;
    } else {
      json[r'sell_token'] = null;
    }
    if (this.createEpoch != null) {
      json[r'create_epoch'] = this.createEpoch;
    } else {
      json[r'create_epoch'] = null;
    }
    if (this.revertEpoch != null) {
      json[r'revert_epoch'] = this.revertEpoch;
    } else {
      json[r'revert_epoch'] = null;
    }
    if (this.txHash != null) {
      json[r'tx_hash'] = this.txHash;
    } else {
      json[r'tx_hash'] = null;
    }
    if (this.txLogIndex != null) {
      json[r'tx_log_index'] = this.txLogIndex;
    } else {
      json[r'tx_log_index'] = null;
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

  /// Returns a new [DexTradeDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DexTradeDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DexTradeDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DexTradeDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DexTradeDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        order: mapValueOfType<String>(json, r'order'),
        owner: mapValueOfType<String>(json, r'owner'),
        sellVolume: mapValueOfType<String>(json, r'sell_volume'),
        buyVolume: mapValueOfType<String>(json, r'buy_volume'),
        tradeBatchId: mapValueOfType<String>(json, r'trade_batch_id'),
        tradeEpoch: mapValueOfType<String>(json, r'trade_epoch'),
        buyToken: mapValueOfType<String>(json, r'buy_token'),
        sellToken: mapValueOfType<String>(json, r'sell_token'),
        createEpoch: mapValueOfType<String>(json, r'create_epoch'),
        revertEpoch: mapValueOfType<String>(json, r'revert_epoch'),
        txHash: mapValueOfType<String>(json, r'tx_hash'),
        txLogIndex: mapValueOfType<String>(json, r'tx_log_index'),
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

  static List<DexTradeDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DexTradeDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DexTradeDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DexTradeDTO> mapFromJson(dynamic json) {
    final map = <String, DexTradeDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DexTradeDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DexTradeDTO-objects as value to a dart map
  static Map<String, List<DexTradeDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DexTradeDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DexTradeDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

