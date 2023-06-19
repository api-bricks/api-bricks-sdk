//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurvePoolDTO {
  /// Returns a new [CurvePoolDTO] instance.
  CurvePoolDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.name,
    this.isMeta,
    this.registryAddress,
    this.swapAddress,
    this.lpToken,
    this.coinCount,
    this.underlyingCount,
    this.a,
    this.fee,
    this.adminFee,
    this.owner,
    this.virtualPrice,
    this.locked,
    this.addedAt,
    this.addedAtBlock,
    this.addedAtTransaction,
    this.removedAt,
    this.removedAtBlock,
    this.removedAtTransaction,
    this.exchangeCount,
    this.gaugeCount,
    this.vid,
    this.evaluatedAsk,
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

  /// Pool address.
  String? id;

  /// Pool's human-readable name.
  String? name;

  /// Identify whether pool is a metapool.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isMeta;

  /// Registry contract address from where this pool was registered.
  String? registryAddress;

  /// Swap contract address.
  String? swapAddress;

  /// Address of the token representing LP share.
  String? lpToken;

  /// Number of coins composing the pool.
  String? coinCount;

  /// Number of underlying coins composing the pool.
  String? underlyingCount;

  /// Amplification coefficient multiplied by n * (n - 1).
  String? a;

  /// Fee to charge for exchanges.
  String? fee;

  /// Admin fee is represented as a percentage of the total fee collected on a swap.
  String? adminFee;

  /// Admin address.
  String? owner;

  /// Average dollar value of pool token.
  String? virtualPrice;

  /// 
  String? locked;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? addedAt;

  /// 
  String? addedAtBlock;

  /// 
  String? addedAtTransaction;

  /// 
  String? removedAt;

  /// 
  String? removedAtBlock;

  /// 
  String? removedAtTransaction;

  /// 
  String? exchangeCount;

  /// 
  String? gaugeCount;

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
  double? evaluatedAsk;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurvePoolDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.name == name &&
     other.isMeta == isMeta &&
     other.registryAddress == registryAddress &&
     other.swapAddress == swapAddress &&
     other.lpToken == lpToken &&
     other.coinCount == coinCount &&
     other.underlyingCount == underlyingCount &&
     other.a == a &&
     other.fee == fee &&
     other.adminFee == adminFee &&
     other.owner == owner &&
     other.virtualPrice == virtualPrice &&
     other.locked == locked &&
     other.addedAt == addedAt &&
     other.addedAtBlock == addedAtBlock &&
     other.addedAtTransaction == addedAtTransaction &&
     other.removedAt == removedAt &&
     other.removedAtBlock == removedAtBlock &&
     other.removedAtTransaction == removedAtTransaction &&
     other.exchangeCount == exchangeCount &&
     other.gaugeCount == gaugeCount &&
     other.vid == vid &&
     other.evaluatedAsk == evaluatedAsk;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (isMeta == null ? 0 : isMeta!.hashCode) +
    (registryAddress == null ? 0 : registryAddress!.hashCode) +
    (swapAddress == null ? 0 : swapAddress!.hashCode) +
    (lpToken == null ? 0 : lpToken!.hashCode) +
    (coinCount == null ? 0 : coinCount!.hashCode) +
    (underlyingCount == null ? 0 : underlyingCount!.hashCode) +
    (a == null ? 0 : a!.hashCode) +
    (fee == null ? 0 : fee!.hashCode) +
    (adminFee == null ? 0 : adminFee!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (virtualPrice == null ? 0 : virtualPrice!.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (addedAt == null ? 0 : addedAt!.hashCode) +
    (addedAtBlock == null ? 0 : addedAtBlock!.hashCode) +
    (addedAtTransaction == null ? 0 : addedAtTransaction!.hashCode) +
    (removedAt == null ? 0 : removedAt!.hashCode) +
    (removedAtBlock == null ? 0 : removedAtBlock!.hashCode) +
    (removedAtTransaction == null ? 0 : removedAtTransaction!.hashCode) +
    (exchangeCount == null ? 0 : exchangeCount!.hashCode) +
    (gaugeCount == null ? 0 : gaugeCount!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (evaluatedAsk == null ? 0 : evaluatedAsk!.hashCode);

  @override
  String toString() => 'CurvePoolDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, name=$name, isMeta=$isMeta, registryAddress=$registryAddress, swapAddress=$swapAddress, lpToken=$lpToken, coinCount=$coinCount, underlyingCount=$underlyingCount, a=$a, fee=$fee, adminFee=$adminFee, owner=$owner, virtualPrice=$virtualPrice, locked=$locked, addedAt=$addedAt, addedAtBlock=$addedAtBlock, addedAtTransaction=$addedAtTransaction, removedAt=$removedAt, removedAtBlock=$removedAtBlock, removedAtTransaction=$removedAtTransaction, exchangeCount=$exchangeCount, gaugeCount=$gaugeCount, vid=$vid, evaluatedAsk=$evaluatedAsk]';

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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.isMeta != null) {
      json[r'is_meta'] = this.isMeta;
    } else {
      json[r'is_meta'] = null;
    }
    if (this.registryAddress != null) {
      json[r'registry_address'] = this.registryAddress;
    } else {
      json[r'registry_address'] = null;
    }
    if (this.swapAddress != null) {
      json[r'swap_address'] = this.swapAddress;
    } else {
      json[r'swap_address'] = null;
    }
    if (this.lpToken != null) {
      json[r'lp_token'] = this.lpToken;
    } else {
      json[r'lp_token'] = null;
    }
    if (this.coinCount != null) {
      json[r'coin_count'] = this.coinCount;
    } else {
      json[r'coin_count'] = null;
    }
    if (this.underlyingCount != null) {
      json[r'underlying_count'] = this.underlyingCount;
    } else {
      json[r'underlying_count'] = null;
    }
    if (this.a != null) {
      json[r'a'] = this.a;
    } else {
      json[r'a'] = null;
    }
    if (this.fee != null) {
      json[r'fee'] = this.fee;
    } else {
      json[r'fee'] = null;
    }
    if (this.adminFee != null) {
      json[r'admin_fee'] = this.adminFee;
    } else {
      json[r'admin_fee'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.virtualPrice != null) {
      json[r'virtual_price'] = this.virtualPrice;
    } else {
      json[r'virtual_price'] = null;
    }
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.addedAt != null) {
      json[r'added_at'] = this.addedAt!.toUtc().toIso8601String();
    } else {
      json[r'added_at'] = null;
    }
    if (this.addedAtBlock != null) {
      json[r'added_at_block'] = this.addedAtBlock;
    } else {
      json[r'added_at_block'] = null;
    }
    if (this.addedAtTransaction != null) {
      json[r'added_at_transaction'] = this.addedAtTransaction;
    } else {
      json[r'added_at_transaction'] = null;
    }
    if (this.removedAt != null) {
      json[r'removed_at'] = this.removedAt;
    } else {
      json[r'removed_at'] = null;
    }
    if (this.removedAtBlock != null) {
      json[r'removed_at_block'] = this.removedAtBlock;
    } else {
      json[r'removed_at_block'] = null;
    }
    if (this.removedAtTransaction != null) {
      json[r'removed_at_transaction'] = this.removedAtTransaction;
    } else {
      json[r'removed_at_transaction'] = null;
    }
    if (this.exchangeCount != null) {
      json[r'exchange_count'] = this.exchangeCount;
    } else {
      json[r'exchange_count'] = null;
    }
    if (this.gaugeCount != null) {
      json[r'gauge_count'] = this.gaugeCount;
    } else {
      json[r'gauge_count'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    if (this.evaluatedAsk != null) {
      json[r'evaluated_ask'] = this.evaluatedAsk;
    } else {
      json[r'evaluated_ask'] = null;
    }
    return json;
  }

  /// Returns a new [CurvePoolDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurvePoolDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurvePoolDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurvePoolDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurvePoolDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        isMeta: mapValueOfType<bool>(json, r'is_meta'),
        registryAddress: mapValueOfType<String>(json, r'registry_address'),
        swapAddress: mapValueOfType<String>(json, r'swap_address'),
        lpToken: mapValueOfType<String>(json, r'lp_token'),
        coinCount: mapValueOfType<String>(json, r'coin_count'),
        underlyingCount: mapValueOfType<String>(json, r'underlying_count'),
        a: mapValueOfType<String>(json, r'a'),
        fee: mapValueOfType<String>(json, r'fee'),
        adminFee: mapValueOfType<String>(json, r'admin_fee'),
        owner: mapValueOfType<String>(json, r'owner'),
        virtualPrice: mapValueOfType<String>(json, r'virtual_price'),
        locked: mapValueOfType<String>(json, r'locked'),
        addedAt: mapDateTime(json, r'added_at', ''),
        addedAtBlock: mapValueOfType<String>(json, r'added_at_block'),
        addedAtTransaction: mapValueOfType<String>(json, r'added_at_transaction'),
        removedAt: mapValueOfType<String>(json, r'removed_at'),
        removedAtBlock: mapValueOfType<String>(json, r'removed_at_block'),
        removedAtTransaction: mapValueOfType<String>(json, r'removed_at_transaction'),
        exchangeCount: mapValueOfType<String>(json, r'exchange_count'),
        gaugeCount: mapValueOfType<String>(json, r'gauge_count'),
        vid: mapValueOfType<int>(json, r'vid'),
        evaluatedAsk: mapValueOfType<double>(json, r'evaluated_ask'),
      );
    }
    return null;
  }

  static List<CurvePoolDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurvePoolDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurvePoolDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurvePoolDTO> mapFromJson(dynamic json) {
    final map = <String, CurvePoolDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurvePoolDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurvePoolDTO-objects as value to a dart map
  static Map<String, List<CurvePoolDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurvePoolDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurvePoolDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

