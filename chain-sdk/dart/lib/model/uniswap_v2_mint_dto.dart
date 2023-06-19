//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV2MintDTO {
  /// Returns a new [UniswapV2MintDTO] instance.
  UniswapV2MintDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.transaction,
    this.timestamp,
    this.pair,
    this.to,
    this.liquidity,
    this.sender,
    this.amount0,
    this.amount1,
    this.logIndex,
    this.amountUsd,
    this.feeTo,
    this.feeLiquidity,
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

  /// Transaction hash plus index in the transaction mint array.
  String? id;

  /// Reference to the transaction Mint was included in.
  String? transaction;

  /// Timestamp of Mint, used to sort recent liquidity provisions.
  String? timestamp;

  /// Reference to pair.
  String? pair;

  /// Recipient of liquidity tokens.
  String? to;

  /// Amount of liquidity tokens minted.
  String? liquidity;

  /// Address that initiated the liquidity provision.
  String? sender;

  /// Amount of token0 provided.
  String? amount0;

  /// Amount of token1 provided.
  String? amount1;

  /// Index in the transaction event was emitted.
  String? logIndex;

  /// Derived USD value of token0 amount plus token1 amount.
  String? amountUsd;

  /// Address of fee recipient (if fee is on).
  String? feeTo;

  /// Amount of liquidity sent to fee recipient (if fee is on).
  String? feeLiquidity;

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
  bool operator ==(Object other) => identical(this, other) || other is UniswapV2MintDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.transaction == transaction &&
     other.timestamp == timestamp &&
     other.pair == pair &&
     other.to == to &&
     other.liquidity == liquidity &&
     other.sender == sender &&
     other.amount0 == amount0 &&
     other.amount1 == amount1 &&
     other.logIndex == logIndex &&
     other.amountUsd == amountUsd &&
     other.feeTo == feeTo &&
     other.feeLiquidity == feeLiquidity &&
     other.vid == vid &&
     other.blockRange == blockRange;

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
    (to == null ? 0 : to!.hashCode) +
    (liquidity == null ? 0 : liquidity!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (amount0 == null ? 0 : amount0!.hashCode) +
    (amount1 == null ? 0 : amount1!.hashCode) +
    (logIndex == null ? 0 : logIndex!.hashCode) +
    (amountUsd == null ? 0 : amountUsd!.hashCode) +
    (feeTo == null ? 0 : feeTo!.hashCode) +
    (feeLiquidity == null ? 0 : feeLiquidity!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (blockRange == null ? 0 : blockRange!.hashCode);

  @override
  String toString() => 'UniswapV2MintDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, transaction=$transaction, timestamp=$timestamp, pair=$pair, to=$to, liquidity=$liquidity, sender=$sender, amount0=$amount0, amount1=$amount1, logIndex=$logIndex, amountUsd=$amountUsd, feeTo=$feeTo, feeLiquidity=$feeLiquidity, vid=$vid, blockRange=$blockRange]';

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
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.liquidity != null) {
      json[r'liquidity'] = this.liquidity;
    } else {
      json[r'liquidity'] = null;
    }
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
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
    if (this.feeTo != null) {
      json[r'fee_to'] = this.feeTo;
    } else {
      json[r'fee_to'] = null;
    }
    if (this.feeLiquidity != null) {
      json[r'fee_liquidity'] = this.feeLiquidity;
    } else {
      json[r'fee_liquidity'] = null;
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

  /// Returns a new [UniswapV2MintDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV2MintDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV2MintDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV2MintDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV2MintDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        pair: mapValueOfType<String>(json, r'pair'),
        to: mapValueOfType<String>(json, r'to'),
        liquidity: mapValueOfType<String>(json, r'liquidity'),
        sender: mapValueOfType<String>(json, r'sender'),
        amount0: mapValueOfType<String>(json, r'amount_0'),
        amount1: mapValueOfType<String>(json, r'amount_1'),
        logIndex: mapValueOfType<String>(json, r'log_index'),
        amountUsd: mapValueOfType<String>(json, r'amount_usd'),
        feeTo: mapValueOfType<String>(json, r'fee_to'),
        feeLiquidity: mapValueOfType<String>(json, r'fee_liquidity'),
        vid: mapValueOfType<int>(json, r'vid'),
        blockRange: mapValueOfType<String>(json, r'block_range'),
      );
    }
    return null;
  }

  static List<UniswapV2MintDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV2MintDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV2MintDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV2MintDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV2MintDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV2MintDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV2MintDTO-objects as value to a dart map
  static Map<String, List<UniswapV2MintDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV2MintDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV2MintDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

