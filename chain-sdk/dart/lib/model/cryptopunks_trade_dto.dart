//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CRYPTOPUNKSTradeDTO {
  /// Returns a new [CRYPTOPUNKSTradeDTO] instance.
  CRYPTOPUNKSTradeDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.vid,
    this.blockRange,
    this.id,
    this.transactionHash,
    this.logIndex,
    this.timestamp,
    this.isBundle,
    this.collection,
    this.tokenId,
    this.amount,
    this.priceEth,
    this.buyer,
    this.seller,
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

  /// 
  String? blockNumber;

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

  /// 
  String? id;

  /// 
  String? transactionHash;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? logIndex;

  /// 
  String? timestamp;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isBundle;

  /// 
  String? collection;

  /// 
  String? tokenId;

  /// 
  String? amount;

  /// 
  String? priceEth;

  /// 
  String? buyer;

  /// 
  String? seller;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CRYPTOPUNKSTradeDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.vid == vid &&
     other.blockRange == blockRange &&
     other.id == id &&
     other.transactionHash == transactionHash &&
     other.logIndex == logIndex &&
     other.timestamp == timestamp &&
     other.isBundle == isBundle &&
     other.collection == collection &&
     other.tokenId == tokenId &&
     other.amount == amount &&
     other.priceEth == priceEth &&
     other.buyer == buyer &&
     other.seller == seller;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (blockRange == null ? 0 : blockRange!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (transactionHash == null ? 0 : transactionHash!.hashCode) +
    (logIndex == null ? 0 : logIndex!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (isBundle == null ? 0 : isBundle!.hashCode) +
    (collection == null ? 0 : collection!.hashCode) +
    (tokenId == null ? 0 : tokenId!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (priceEth == null ? 0 : priceEth!.hashCode) +
    (buyer == null ? 0 : buyer!.hashCode) +
    (seller == null ? 0 : seller!.hashCode);

  @override
  String toString() => 'CRYPTOPUNKSTradeDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, vid=$vid, blockRange=$blockRange, id=$id, transactionHash=$transactionHash, logIndex=$logIndex, timestamp=$timestamp, isBundle=$isBundle, collection=$collection, tokenId=$tokenId, amount=$amount, priceEth=$priceEth, buyer=$buyer, seller=$seller]';

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
    if (this.blockRange != null) {
      json[r'block_range'] = this.blockRange;
    } else {
      json[r'block_range'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.transactionHash != null) {
      json[r'transaction_hash'] = this.transactionHash;
    } else {
      json[r'transaction_hash'] = null;
    }
    if (this.logIndex != null) {
      json[r'log_index'] = this.logIndex;
    } else {
      json[r'log_index'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.isBundle != null) {
      json[r'is_bundle'] = this.isBundle;
    } else {
      json[r'is_bundle'] = null;
    }
    if (this.collection != null) {
      json[r'collection'] = this.collection;
    } else {
      json[r'collection'] = null;
    }
    if (this.tokenId != null) {
      json[r'token_id'] = this.tokenId;
    } else {
      json[r'token_id'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.priceEth != null) {
      json[r'price_eth'] = this.priceEth;
    } else {
      json[r'price_eth'] = null;
    }
    if (this.buyer != null) {
      json[r'buyer'] = this.buyer;
    } else {
      json[r'buyer'] = null;
    }
    if (this.seller != null) {
      json[r'seller'] = this.seller;
    } else {
      json[r'seller'] = null;
    }
    return json;
  }

  /// Returns a new [CRYPTOPUNKSTradeDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CRYPTOPUNKSTradeDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CRYPTOPUNKSTradeDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CRYPTOPUNKSTradeDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CRYPTOPUNKSTradeDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        vid: mapValueOfType<int>(json, r'vid'),
        blockRange: mapValueOfType<String>(json, r'block_range'),
        id: mapValueOfType<String>(json, r'id'),
        transactionHash: mapValueOfType<String>(json, r'transaction_hash'),
        logIndex: mapValueOfType<int>(json, r'log_index'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        isBundle: mapValueOfType<bool>(json, r'is_bundle'),
        collection: mapValueOfType<String>(json, r'collection'),
        tokenId: mapValueOfType<String>(json, r'token_id'),
        amount: mapValueOfType<String>(json, r'amount'),
        priceEth: mapValueOfType<String>(json, r'price_eth'),
        buyer: mapValueOfType<String>(json, r'buyer'),
        seller: mapValueOfType<String>(json, r'seller'),
      );
    }
    return null;
  }

  static List<CRYPTOPUNKSTradeDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CRYPTOPUNKSTradeDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CRYPTOPUNKSTradeDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CRYPTOPUNKSTradeDTO> mapFromJson(dynamic json) {
    final map = <String, CRYPTOPUNKSTradeDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CRYPTOPUNKSTradeDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CRYPTOPUNKSTradeDTO-objects as value to a dart map
  static Map<String, List<CRYPTOPUNKSTradeDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CRYPTOPUNKSTradeDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CRYPTOPUNKSTradeDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

