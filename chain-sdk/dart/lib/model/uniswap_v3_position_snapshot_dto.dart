//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UniswapV3PositionSnapshotDTO {
  /// Returns a new [UniswapV3PositionSnapshotDTO] instance.
  UniswapV3PositionSnapshotDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.owner,
    this.pool,
    this.position,
    this.timestamp,
    this.liquidity,
    this.depositedToken0,
    this.depositedToken1,
    this.withdrawnToken0,
    this.withdrawnToken1,
    this.collectedFeesToken0,
    this.collectedFeesToken1,
    this.transaction,
    this.feeGrowthInside0LastX128,
    this.feeGrowthInside1LastX128,
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

  /// NFT token identifier, format: (NFT token id)#(block number).
  String? id;

  /// Owner of the NFT.
  String? owner;

  /// Pool the position is within.
  String? pool;

  /// Position of which the snap was taken of.
  String? position;

  /// Timestamp of block in which the snap was created.
  String? timestamp;

  /// Total position liquidity.
  String? liquidity;

  /// Amount of token 0 ever deposited to position.
  String? depositedToken0;

  /// Amount of token 1 ever deposited to position.
  String? depositedToken1;

  /// Amount of token 0 ever withdrawn from position (without fees).
  String? withdrawnToken0;

  /// Amount of token 1 ever withdrawn from position (without fees).
  String? withdrawnToken1;

  /// All time collected fees in token0.
  String? collectedFeesToken0;

  /// All time collected fees in token1.
  String? collectedFeesToken1;

  /// Transaction in which the snapshot was initialized.
  String? transaction;

  /// Variable needed for fee computation.
  String? feeGrowthInside0LastX128;

  /// Variable needed for fee computation.
  String? feeGrowthInside1LastX128;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UniswapV3PositionSnapshotDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.owner == owner &&
     other.pool == pool &&
     other.position == position &&
     other.timestamp == timestamp &&
     other.liquidity == liquidity &&
     other.depositedToken0 == depositedToken0 &&
     other.depositedToken1 == depositedToken1 &&
     other.withdrawnToken0 == withdrawnToken0 &&
     other.withdrawnToken1 == withdrawnToken1 &&
     other.collectedFeesToken0 == collectedFeesToken0 &&
     other.collectedFeesToken1 == collectedFeesToken1 &&
     other.transaction == transaction &&
     other.feeGrowthInside0LastX128 == feeGrowthInside0LastX128 &&
     other.feeGrowthInside1LastX128 == feeGrowthInside1LastX128 &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (pool == null ? 0 : pool!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (liquidity == null ? 0 : liquidity!.hashCode) +
    (depositedToken0 == null ? 0 : depositedToken0!.hashCode) +
    (depositedToken1 == null ? 0 : depositedToken1!.hashCode) +
    (withdrawnToken0 == null ? 0 : withdrawnToken0!.hashCode) +
    (withdrawnToken1 == null ? 0 : withdrawnToken1!.hashCode) +
    (collectedFeesToken0 == null ? 0 : collectedFeesToken0!.hashCode) +
    (collectedFeesToken1 == null ? 0 : collectedFeesToken1!.hashCode) +
    (transaction == null ? 0 : transaction!.hashCode) +
    (feeGrowthInside0LastX128 == null ? 0 : feeGrowthInside0LastX128!.hashCode) +
    (feeGrowthInside1LastX128 == null ? 0 : feeGrowthInside1LastX128!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'UniswapV3PositionSnapshotDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, owner=$owner, pool=$pool, position=$position, timestamp=$timestamp, liquidity=$liquidity, depositedToken0=$depositedToken0, depositedToken1=$depositedToken1, withdrawnToken0=$withdrawnToken0, withdrawnToken1=$withdrawnToken1, collectedFeesToken0=$collectedFeesToken0, collectedFeesToken1=$collectedFeesToken1, transaction=$transaction, feeGrowthInside0LastX128=$feeGrowthInside0LastX128, feeGrowthInside1LastX128=$feeGrowthInside1LastX128, vid=$vid]';

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
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.liquidity != null) {
      json[r'liquidity'] = this.liquidity;
    } else {
      json[r'liquidity'] = null;
    }
    if (this.depositedToken0 != null) {
      json[r'deposited_token_0'] = this.depositedToken0;
    } else {
      json[r'deposited_token_0'] = null;
    }
    if (this.depositedToken1 != null) {
      json[r'deposited_token_1'] = this.depositedToken1;
    } else {
      json[r'deposited_token_1'] = null;
    }
    if (this.withdrawnToken0 != null) {
      json[r'withdrawn_token_0'] = this.withdrawnToken0;
    } else {
      json[r'withdrawn_token_0'] = null;
    }
    if (this.withdrawnToken1 != null) {
      json[r'withdrawn_token_1'] = this.withdrawnToken1;
    } else {
      json[r'withdrawn_token_1'] = null;
    }
    if (this.collectedFeesToken0 != null) {
      json[r'collected_fees_token_0'] = this.collectedFeesToken0;
    } else {
      json[r'collected_fees_token_0'] = null;
    }
    if (this.collectedFeesToken1 != null) {
      json[r'collected_fees_token_1'] = this.collectedFeesToken1;
    } else {
      json[r'collected_fees_token_1'] = null;
    }
    if (this.transaction != null) {
      json[r'transaction'] = this.transaction;
    } else {
      json[r'transaction'] = null;
    }
    if (this.feeGrowthInside0LastX128 != null) {
      json[r'fee_growth_inside_0_last_x128'] = this.feeGrowthInside0LastX128;
    } else {
      json[r'fee_growth_inside_0_last_x128'] = null;
    }
    if (this.feeGrowthInside1LastX128 != null) {
      json[r'fee_growth_inside_1_last_x128'] = this.feeGrowthInside1LastX128;
    } else {
      json[r'fee_growth_inside_1_last_x128'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [UniswapV3PositionSnapshotDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UniswapV3PositionSnapshotDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UniswapV3PositionSnapshotDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UniswapV3PositionSnapshotDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UniswapV3PositionSnapshotDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        owner: mapValueOfType<String>(json, r'owner'),
        pool: mapValueOfType<String>(json, r'pool'),
        position: mapValueOfType<String>(json, r'position'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        liquidity: mapValueOfType<String>(json, r'liquidity'),
        depositedToken0: mapValueOfType<String>(json, r'deposited_token_0'),
        depositedToken1: mapValueOfType<String>(json, r'deposited_token_1'),
        withdrawnToken0: mapValueOfType<String>(json, r'withdrawn_token_0'),
        withdrawnToken1: mapValueOfType<String>(json, r'withdrawn_token_1'),
        collectedFeesToken0: mapValueOfType<String>(json, r'collected_fees_token_0'),
        collectedFeesToken1: mapValueOfType<String>(json, r'collected_fees_token_1'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        feeGrowthInside0LastX128: mapValueOfType<String>(json, r'fee_growth_inside_0_last_x128'),
        feeGrowthInside1LastX128: mapValueOfType<String>(json, r'fee_growth_inside_1_last_x128'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<UniswapV3PositionSnapshotDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UniswapV3PositionSnapshotDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UniswapV3PositionSnapshotDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UniswapV3PositionSnapshotDTO> mapFromJson(dynamic json) {
    final map = <String, UniswapV3PositionSnapshotDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UniswapV3PositionSnapshotDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UniswapV3PositionSnapshotDTO-objects as value to a dart map
  static Map<String, List<UniswapV3PositionSnapshotDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UniswapV3PositionSnapshotDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UniswapV3PositionSnapshotDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

