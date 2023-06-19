//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DexOrderDTO {
  /// Returns a new [DexOrderDTO] instance.
  DexOrderDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.owner,
    this.orderId,
    this.fromBatchId,
    this.fromEpoch,
    this.untilBatchId,
    this.untilEpoch,
    this.buyToken,
    this.sellToken,
    this.priceNumerator,
    this.priceDenominator,
    this.maxSellAmount,
    this.minReceiveAmount,
    this.soldVolume,
    this.boughtVolume,
    this.createEpoch,
    this.cancelEpoch,
    this.deleteEpoch,
    this.txHash,
    this.txLogIndex,
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

  /// Identifier, format: (owner address)-(order id)
  String? id;

  /// Reference to owner.
  String? owner;

  /// Order id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderId;

  /// Batch id from which order became valid.
  String? fromBatchId;

  /// Start of epoch in which order was placed and became valid.
  String? fromEpoch;

  /// Batch id until which trade was still valid.
  String? untilBatchId;

  /// End of epoch in which order was placed.
  String? untilEpoch;

  /// Identifier of token that was bought.
  String? buyToken;

  /// Identifier of token that was sold.
  String? sellToken;

  /// Price enumerator.
  String? priceNumerator;

  /// Price denominator.
  String? priceDenominator;

  /// Maximum sell amount.
  String? maxSellAmount;

  /// Minimum receive amount.
  String? minReceiveAmount;

  /// Sold volume.
  String? soldVolume;

  /// Bought volume.
  String? boughtVolume;

  /// Epoch in which order was created.
  String? createEpoch;

  /// Epoch in which order was cancelled.
  String? cancelEpoch;

  /// Epoch in which order was deleted.
  String? deleteEpoch;

  /// Transaction hash.
  String? txHash;

  /// Event index within transaction.
  String? txLogIndex;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DexOrderDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.owner == owner &&
     other.orderId == orderId &&
     other.fromBatchId == fromBatchId &&
     other.fromEpoch == fromEpoch &&
     other.untilBatchId == untilBatchId &&
     other.untilEpoch == untilEpoch &&
     other.buyToken == buyToken &&
     other.sellToken == sellToken &&
     other.priceNumerator == priceNumerator &&
     other.priceDenominator == priceDenominator &&
     other.maxSellAmount == maxSellAmount &&
     other.minReceiveAmount == minReceiveAmount &&
     other.soldVolume == soldVolume &&
     other.boughtVolume == boughtVolume &&
     other.createEpoch == createEpoch &&
     other.cancelEpoch == cancelEpoch &&
     other.deleteEpoch == deleteEpoch &&
     other.txHash == txHash &&
     other.txLogIndex == txLogIndex &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (orderId == null ? 0 : orderId!.hashCode) +
    (fromBatchId == null ? 0 : fromBatchId!.hashCode) +
    (fromEpoch == null ? 0 : fromEpoch!.hashCode) +
    (untilBatchId == null ? 0 : untilBatchId!.hashCode) +
    (untilEpoch == null ? 0 : untilEpoch!.hashCode) +
    (buyToken == null ? 0 : buyToken!.hashCode) +
    (sellToken == null ? 0 : sellToken!.hashCode) +
    (priceNumerator == null ? 0 : priceNumerator!.hashCode) +
    (priceDenominator == null ? 0 : priceDenominator!.hashCode) +
    (maxSellAmount == null ? 0 : maxSellAmount!.hashCode) +
    (minReceiveAmount == null ? 0 : minReceiveAmount!.hashCode) +
    (soldVolume == null ? 0 : soldVolume!.hashCode) +
    (boughtVolume == null ? 0 : boughtVolume!.hashCode) +
    (createEpoch == null ? 0 : createEpoch!.hashCode) +
    (cancelEpoch == null ? 0 : cancelEpoch!.hashCode) +
    (deleteEpoch == null ? 0 : deleteEpoch!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode) +
    (txLogIndex == null ? 0 : txLogIndex!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'DexOrderDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, owner=$owner, orderId=$orderId, fromBatchId=$fromBatchId, fromEpoch=$fromEpoch, untilBatchId=$untilBatchId, untilEpoch=$untilEpoch, buyToken=$buyToken, sellToken=$sellToken, priceNumerator=$priceNumerator, priceDenominator=$priceDenominator, maxSellAmount=$maxSellAmount, minReceiveAmount=$minReceiveAmount, soldVolume=$soldVolume, boughtVolume=$boughtVolume, createEpoch=$createEpoch, cancelEpoch=$cancelEpoch, deleteEpoch=$deleteEpoch, txHash=$txHash, txLogIndex=$txLogIndex, vid=$vid]';

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
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.orderId != null) {
      json[r'order_id'] = this.orderId;
    } else {
      json[r'order_id'] = null;
    }
    if (this.fromBatchId != null) {
      json[r'from_batch_id'] = this.fromBatchId;
    } else {
      json[r'from_batch_id'] = null;
    }
    if (this.fromEpoch != null) {
      json[r'from_epoch'] = this.fromEpoch;
    } else {
      json[r'from_epoch'] = null;
    }
    if (this.untilBatchId != null) {
      json[r'until_batch_id'] = this.untilBatchId;
    } else {
      json[r'until_batch_id'] = null;
    }
    if (this.untilEpoch != null) {
      json[r'until_epoch'] = this.untilEpoch;
    } else {
      json[r'until_epoch'] = null;
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
    if (this.priceNumerator != null) {
      json[r'price_numerator'] = this.priceNumerator;
    } else {
      json[r'price_numerator'] = null;
    }
    if (this.priceDenominator != null) {
      json[r'price_denominator'] = this.priceDenominator;
    } else {
      json[r'price_denominator'] = null;
    }
    if (this.maxSellAmount != null) {
      json[r'max_sell_amount'] = this.maxSellAmount;
    } else {
      json[r'max_sell_amount'] = null;
    }
    if (this.minReceiveAmount != null) {
      json[r'min_receive_amount'] = this.minReceiveAmount;
    } else {
      json[r'min_receive_amount'] = null;
    }
    if (this.soldVolume != null) {
      json[r'sold_volume'] = this.soldVolume;
    } else {
      json[r'sold_volume'] = null;
    }
    if (this.boughtVolume != null) {
      json[r'bought_volume'] = this.boughtVolume;
    } else {
      json[r'bought_volume'] = null;
    }
    if (this.createEpoch != null) {
      json[r'create_epoch'] = this.createEpoch;
    } else {
      json[r'create_epoch'] = null;
    }
    if (this.cancelEpoch != null) {
      json[r'cancel_epoch'] = this.cancelEpoch;
    } else {
      json[r'cancel_epoch'] = null;
    }
    if (this.deleteEpoch != null) {
      json[r'delete_epoch'] = this.deleteEpoch;
    } else {
      json[r'delete_epoch'] = null;
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
    return json;
  }

  /// Returns a new [DexOrderDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DexOrderDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DexOrderDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DexOrderDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DexOrderDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        owner: mapValueOfType<String>(json, r'owner'),
        orderId: mapValueOfType<int>(json, r'order_id'),
        fromBatchId: mapValueOfType<String>(json, r'from_batch_id'),
        fromEpoch: mapValueOfType<String>(json, r'from_epoch'),
        untilBatchId: mapValueOfType<String>(json, r'until_batch_id'),
        untilEpoch: mapValueOfType<String>(json, r'until_epoch'),
        buyToken: mapValueOfType<String>(json, r'buy_token'),
        sellToken: mapValueOfType<String>(json, r'sell_token'),
        priceNumerator: mapValueOfType<String>(json, r'price_numerator'),
        priceDenominator: mapValueOfType<String>(json, r'price_denominator'),
        maxSellAmount: mapValueOfType<String>(json, r'max_sell_amount'),
        minReceiveAmount: mapValueOfType<String>(json, r'min_receive_amount'),
        soldVolume: mapValueOfType<String>(json, r'sold_volume'),
        boughtVolume: mapValueOfType<String>(json, r'bought_volume'),
        createEpoch: mapValueOfType<String>(json, r'create_epoch'),
        cancelEpoch: mapValueOfType<String>(json, r'cancel_epoch'),
        deleteEpoch: mapValueOfType<String>(json, r'delete_epoch'),
        txHash: mapValueOfType<String>(json, r'tx_hash'),
        txLogIndex: mapValueOfType<String>(json, r'tx_log_index'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<DexOrderDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DexOrderDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DexOrderDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DexOrderDTO> mapFromJson(dynamic json) {
    final map = <String, DexOrderDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DexOrderDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DexOrderDTO-objects as value to a dart map
  static Map<String, List<DexOrderDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DexOrderDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DexOrderDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

