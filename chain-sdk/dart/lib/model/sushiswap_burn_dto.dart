//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SushiswapBurnDTO {
  /// Returns a new [SushiswapBurnDTO] instance.
  SushiswapBurnDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.transaction,
    this.timestamp,
    this.pair,
    this.liquidity,
    this.sender,
    this.amount0,
    this.amount1,
    this.to,
    this.logIndex,
    this.amountUsd,
    this.complete,
    this.feeTo,
    this.feeLiquidity,
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

  /// Identifier, format: (transaction id):(transaction.burns.length).
  String? id;

  /// Reference to the transaction Burn was included in.
  String? transaction;

  /// Timestamp of Burn, used to sort recent liquidity removals.
  String? timestamp;

  /// Reference to pair.
  String? pair;

  /// Amount of liquidity tokens burned.
  String? liquidity;

  /// Address that initiated the liquidity removal.
  String? sender;

  /// Amount of token0 removed.
  String? amount0;

  /// Amount of token1 removed.
  String? amount1;

  /// Recipient of tokens.
  String? to;

  /// Index in the transaction event was emitted.
  String? logIndex;

  /// Derived amount based on available prices of tokens.
  String? amountUsd;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? complete;

  /// Address of fee recipient (if fee is on).
  String? feeTo;

  /// Amount of tokens sent to fee recipient (if fee is on).
  String? feeLiquidity;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SushiswapBurnDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.transaction == transaction &&
     other.timestamp == timestamp &&
     other.pair == pair &&
     other.liquidity == liquidity &&
     other.sender == sender &&
     other.amount0 == amount0 &&
     other.amount1 == amount1 &&
     other.to == to &&
     other.logIndex == logIndex &&
     other.amountUsd == amountUsd &&
     other.complete == complete &&
     other.feeTo == feeTo &&
     other.feeLiquidity == feeLiquidity &&
     other.vid == vid;

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
    (liquidity == null ? 0 : liquidity!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (amount0 == null ? 0 : amount0!.hashCode) +
    (amount1 == null ? 0 : amount1!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (logIndex == null ? 0 : logIndex!.hashCode) +
    (amountUsd == null ? 0 : amountUsd!.hashCode) +
    (complete == null ? 0 : complete!.hashCode) +
    (feeTo == null ? 0 : feeTo!.hashCode) +
    (feeLiquidity == null ? 0 : feeLiquidity!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'SushiswapBurnDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, transaction=$transaction, timestamp=$timestamp, pair=$pair, liquidity=$liquidity, sender=$sender, amount0=$amount0, amount1=$amount1, to=$to, logIndex=$logIndex, amountUsd=$amountUsd, complete=$complete, feeTo=$feeTo, feeLiquidity=$feeLiquidity, vid=$vid]';

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
    if (this.complete != null) {
      json[r'complete'] = this.complete;
    } else {
      json[r'complete'] = null;
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
    return json;
  }

  /// Returns a new [SushiswapBurnDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SushiswapBurnDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SushiswapBurnDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SushiswapBurnDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SushiswapBurnDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        pair: mapValueOfType<String>(json, r'pair'),
        liquidity: mapValueOfType<String>(json, r'liquidity'),
        sender: mapValueOfType<String>(json, r'sender'),
        amount0: mapValueOfType<String>(json, r'amount_0'),
        amount1: mapValueOfType<String>(json, r'amount_1'),
        to: mapValueOfType<String>(json, r'to'),
        logIndex: mapValueOfType<String>(json, r'log_index'),
        amountUsd: mapValueOfType<String>(json, r'amount_usd'),
        complete: mapValueOfType<bool>(json, r'complete'),
        feeTo: mapValueOfType<String>(json, r'fee_to'),
        feeLiquidity: mapValueOfType<String>(json, r'fee_liquidity'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<SushiswapBurnDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SushiswapBurnDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SushiswapBurnDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SushiswapBurnDTO> mapFromJson(dynamic json) {
    final map = <String, SushiswapBurnDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SushiswapBurnDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SushiswapBurnDTO-objects as value to a dart map
  static Map<String, List<SushiswapBurnDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SushiswapBurnDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SushiswapBurnDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

