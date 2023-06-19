//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CRYPTOPUNKSCollectionDailySnapshotDTO {
  /// Returns a new [CRYPTOPUNKSCollectionDailySnapshotDTO] instance.
  CRYPTOPUNKSCollectionDailySnapshotDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.vid,
    this.blockRange,
    this.id,
    this.collection,
    this.timestamp,
    this.royaltyFee,
    this.dailyMinSalePrice,
    this.dailyMaxSalePrice,
    this.cumulativeTradeVolumeEth,
    this.dailyTradeVolumeEth,
    this.marketplaceRevenueEth,
    this.creatorRevenueEth,
    this.totalRevenueEth,
    this.tradeCount,
    this.dailyTradedItemCount,
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
  String? collection;

  /// 
  String? timestamp;

  /// 
  String? royaltyFee;

  /// 
  String? dailyMinSalePrice;

  /// 
  String? dailyMaxSalePrice;

  /// 
  String? cumulativeTradeVolumeEth;

  /// 
  String? dailyTradeVolumeEth;

  /// 
  String? marketplaceRevenueEth;

  /// 
  String? creatorRevenueEth;

  /// 
  String? totalRevenueEth;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tradeCount;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dailyTradedItemCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CRYPTOPUNKSCollectionDailySnapshotDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.vid == vid &&
     other.blockRange == blockRange &&
     other.id == id &&
     other.collection == collection &&
     other.timestamp == timestamp &&
     other.royaltyFee == royaltyFee &&
     other.dailyMinSalePrice == dailyMinSalePrice &&
     other.dailyMaxSalePrice == dailyMaxSalePrice &&
     other.cumulativeTradeVolumeEth == cumulativeTradeVolumeEth &&
     other.dailyTradeVolumeEth == dailyTradeVolumeEth &&
     other.marketplaceRevenueEth == marketplaceRevenueEth &&
     other.creatorRevenueEth == creatorRevenueEth &&
     other.totalRevenueEth == totalRevenueEth &&
     other.tradeCount == tradeCount &&
     other.dailyTradedItemCount == dailyTradedItemCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (blockRange == null ? 0 : blockRange!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (collection == null ? 0 : collection!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (royaltyFee == null ? 0 : royaltyFee!.hashCode) +
    (dailyMinSalePrice == null ? 0 : dailyMinSalePrice!.hashCode) +
    (dailyMaxSalePrice == null ? 0 : dailyMaxSalePrice!.hashCode) +
    (cumulativeTradeVolumeEth == null ? 0 : cumulativeTradeVolumeEth!.hashCode) +
    (dailyTradeVolumeEth == null ? 0 : dailyTradeVolumeEth!.hashCode) +
    (marketplaceRevenueEth == null ? 0 : marketplaceRevenueEth!.hashCode) +
    (creatorRevenueEth == null ? 0 : creatorRevenueEth!.hashCode) +
    (totalRevenueEth == null ? 0 : totalRevenueEth!.hashCode) +
    (tradeCount == null ? 0 : tradeCount!.hashCode) +
    (dailyTradedItemCount == null ? 0 : dailyTradedItemCount!.hashCode);

  @override
  String toString() => 'CRYPTOPUNKSCollectionDailySnapshotDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, vid=$vid, blockRange=$blockRange, id=$id, collection=$collection, timestamp=$timestamp, royaltyFee=$royaltyFee, dailyMinSalePrice=$dailyMinSalePrice, dailyMaxSalePrice=$dailyMaxSalePrice, cumulativeTradeVolumeEth=$cumulativeTradeVolumeEth, dailyTradeVolumeEth=$dailyTradeVolumeEth, marketplaceRevenueEth=$marketplaceRevenueEth, creatorRevenueEth=$creatorRevenueEth, totalRevenueEth=$totalRevenueEth, tradeCount=$tradeCount, dailyTradedItemCount=$dailyTradedItemCount]';

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
    if (this.collection != null) {
      json[r'collection'] = this.collection;
    } else {
      json[r'collection'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.royaltyFee != null) {
      json[r'royalty_fee'] = this.royaltyFee;
    } else {
      json[r'royalty_fee'] = null;
    }
    if (this.dailyMinSalePrice != null) {
      json[r'daily_min_sale_price'] = this.dailyMinSalePrice;
    } else {
      json[r'daily_min_sale_price'] = null;
    }
    if (this.dailyMaxSalePrice != null) {
      json[r'daily_max_sale_price'] = this.dailyMaxSalePrice;
    } else {
      json[r'daily_max_sale_price'] = null;
    }
    if (this.cumulativeTradeVolumeEth != null) {
      json[r'cumulative_trade_volume_eth'] = this.cumulativeTradeVolumeEth;
    } else {
      json[r'cumulative_trade_volume_eth'] = null;
    }
    if (this.dailyTradeVolumeEth != null) {
      json[r'daily_trade_volume_eth'] = this.dailyTradeVolumeEth;
    } else {
      json[r'daily_trade_volume_eth'] = null;
    }
    if (this.marketplaceRevenueEth != null) {
      json[r'marketplace_revenue_eth'] = this.marketplaceRevenueEth;
    } else {
      json[r'marketplace_revenue_eth'] = null;
    }
    if (this.creatorRevenueEth != null) {
      json[r'creator_revenue_eth'] = this.creatorRevenueEth;
    } else {
      json[r'creator_revenue_eth'] = null;
    }
    if (this.totalRevenueEth != null) {
      json[r'total_revenue_eth'] = this.totalRevenueEth;
    } else {
      json[r'total_revenue_eth'] = null;
    }
    if (this.tradeCount != null) {
      json[r'trade_count'] = this.tradeCount;
    } else {
      json[r'trade_count'] = null;
    }
    if (this.dailyTradedItemCount != null) {
      json[r'daily_traded_item_count'] = this.dailyTradedItemCount;
    } else {
      json[r'daily_traded_item_count'] = null;
    }
    return json;
  }

  /// Returns a new [CRYPTOPUNKSCollectionDailySnapshotDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CRYPTOPUNKSCollectionDailySnapshotDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CRYPTOPUNKSCollectionDailySnapshotDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CRYPTOPUNKSCollectionDailySnapshotDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CRYPTOPUNKSCollectionDailySnapshotDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<String>(json, r'block_number'),
        vid: mapValueOfType<int>(json, r'vid'),
        blockRange: mapValueOfType<String>(json, r'block_range'),
        id: mapValueOfType<String>(json, r'id'),
        collection: mapValueOfType<String>(json, r'collection'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        royaltyFee: mapValueOfType<String>(json, r'royalty_fee'),
        dailyMinSalePrice: mapValueOfType<String>(json, r'daily_min_sale_price'),
        dailyMaxSalePrice: mapValueOfType<String>(json, r'daily_max_sale_price'),
        cumulativeTradeVolumeEth: mapValueOfType<String>(json, r'cumulative_trade_volume_eth'),
        dailyTradeVolumeEth: mapValueOfType<String>(json, r'daily_trade_volume_eth'),
        marketplaceRevenueEth: mapValueOfType<String>(json, r'marketplace_revenue_eth'),
        creatorRevenueEth: mapValueOfType<String>(json, r'creator_revenue_eth'),
        totalRevenueEth: mapValueOfType<String>(json, r'total_revenue_eth'),
        tradeCount: mapValueOfType<int>(json, r'trade_count'),
        dailyTradedItemCount: mapValueOfType<int>(json, r'daily_traded_item_count'),
      );
    }
    return null;
  }

  static List<CRYPTOPUNKSCollectionDailySnapshotDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CRYPTOPUNKSCollectionDailySnapshotDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CRYPTOPUNKSCollectionDailySnapshotDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CRYPTOPUNKSCollectionDailySnapshotDTO> mapFromJson(dynamic json) {
    final map = <String, CRYPTOPUNKSCollectionDailySnapshotDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CRYPTOPUNKSCollectionDailySnapshotDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CRYPTOPUNKSCollectionDailySnapshotDTO-objects as value to a dart map
  static Map<String, List<CRYPTOPUNKSCollectionDailySnapshotDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CRYPTOPUNKSCollectionDailySnapshotDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CRYPTOPUNKSCollectionDailySnapshotDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

