//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CRYPTOPUNKSMarketPlaceDTO {
  /// Returns a new [CRYPTOPUNKSMarketPlaceDTO] instance.
  CRYPTOPUNKSMarketPlaceDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.vid,
    this.blockRange,
    this.id,
    this.name,
    this.slug,
    this.schemaVersion,
    this.subgraphVersion,
    this.methodologyVersion,
    this.collectionCount,
    this.tradeCount,
    this.cumulativeTradeVolumeEth,
    this.marketplaceRevenueEth,
    this.creatorRevenueEth,
    this.totalRevenueEth,
    this.cumulativeUniqueTraders,
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
  String? name;

  /// 
  String? slug;

  /// 
  String? schemaVersion;

  /// 
  String? subgraphVersion;

  /// 
  String? methodologyVersion;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? collectionCount;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tradeCount;

  /// 
  String? cumulativeTradeVolumeEth;

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
  int? cumulativeUniqueTraders;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CRYPTOPUNKSMarketPlaceDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.vid == vid &&
     other.blockRange == blockRange &&
     other.id == id &&
     other.name == name &&
     other.slug == slug &&
     other.schemaVersion == schemaVersion &&
     other.subgraphVersion == subgraphVersion &&
     other.methodologyVersion == methodologyVersion &&
     other.collectionCount == collectionCount &&
     other.tradeCount == tradeCount &&
     other.cumulativeTradeVolumeEth == cumulativeTradeVolumeEth &&
     other.marketplaceRevenueEth == marketplaceRevenueEth &&
     other.creatorRevenueEth == creatorRevenueEth &&
     other.totalRevenueEth == totalRevenueEth &&
     other.cumulativeUniqueTraders == cumulativeUniqueTraders;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (blockRange == null ? 0 : blockRange!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (subgraphVersion == null ? 0 : subgraphVersion!.hashCode) +
    (methodologyVersion == null ? 0 : methodologyVersion!.hashCode) +
    (collectionCount == null ? 0 : collectionCount!.hashCode) +
    (tradeCount == null ? 0 : tradeCount!.hashCode) +
    (cumulativeTradeVolumeEth == null ? 0 : cumulativeTradeVolumeEth!.hashCode) +
    (marketplaceRevenueEth == null ? 0 : marketplaceRevenueEth!.hashCode) +
    (creatorRevenueEth == null ? 0 : creatorRevenueEth!.hashCode) +
    (totalRevenueEth == null ? 0 : totalRevenueEth!.hashCode) +
    (cumulativeUniqueTraders == null ? 0 : cumulativeUniqueTraders!.hashCode);

  @override
  String toString() => 'CRYPTOPUNKSMarketPlaceDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, vid=$vid, blockRange=$blockRange, id=$id, name=$name, slug=$slug, schemaVersion=$schemaVersion, subgraphVersion=$subgraphVersion, methodologyVersion=$methodologyVersion, collectionCount=$collectionCount, tradeCount=$tradeCount, cumulativeTradeVolumeEth=$cumulativeTradeVolumeEth, marketplaceRevenueEth=$marketplaceRevenueEth, creatorRevenueEth=$creatorRevenueEth, totalRevenueEth=$totalRevenueEth, cumulativeUniqueTraders=$cumulativeUniqueTraders]';

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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
    if (this.subgraphVersion != null) {
      json[r'subgraph_version'] = this.subgraphVersion;
    } else {
      json[r'subgraph_version'] = null;
    }
    if (this.methodologyVersion != null) {
      json[r'methodology_version'] = this.methodologyVersion;
    } else {
      json[r'methodology_version'] = null;
    }
    if (this.collectionCount != null) {
      json[r'collection_count'] = this.collectionCount;
    } else {
      json[r'collection_count'] = null;
    }
    if (this.tradeCount != null) {
      json[r'trade_count'] = this.tradeCount;
    } else {
      json[r'trade_count'] = null;
    }
    if (this.cumulativeTradeVolumeEth != null) {
      json[r'cumulative_trade_volume_eth'] = this.cumulativeTradeVolumeEth;
    } else {
      json[r'cumulative_trade_volume_eth'] = null;
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
    if (this.cumulativeUniqueTraders != null) {
      json[r'cumulative_unique_traders'] = this.cumulativeUniqueTraders;
    } else {
      json[r'cumulative_unique_traders'] = null;
    }
    return json;
  }

  /// Returns a new [CRYPTOPUNKSMarketPlaceDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CRYPTOPUNKSMarketPlaceDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CRYPTOPUNKSMarketPlaceDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CRYPTOPUNKSMarketPlaceDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CRYPTOPUNKSMarketPlaceDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        vid: mapValueOfType<int>(json, r'vid'),
        blockRange: mapValueOfType<String>(json, r'block_range'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        slug: mapValueOfType<String>(json, r'slug'),
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        subgraphVersion: mapValueOfType<String>(json, r'subgraph_version'),
        methodologyVersion: mapValueOfType<String>(json, r'methodology_version'),
        collectionCount: mapValueOfType<int>(json, r'collection_count'),
        tradeCount: mapValueOfType<int>(json, r'trade_count'),
        cumulativeTradeVolumeEth: mapValueOfType<String>(json, r'cumulative_trade_volume_eth'),
        marketplaceRevenueEth: mapValueOfType<String>(json, r'marketplace_revenue_eth'),
        creatorRevenueEth: mapValueOfType<String>(json, r'creator_revenue_eth'),
        totalRevenueEth: mapValueOfType<String>(json, r'total_revenue_eth'),
        cumulativeUniqueTraders: mapValueOfType<int>(json, r'cumulative_unique_traders'),
      );
    }
    return null;
  }

  static List<CRYPTOPUNKSMarketPlaceDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CRYPTOPUNKSMarketPlaceDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CRYPTOPUNKSMarketPlaceDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CRYPTOPUNKSMarketPlaceDTO> mapFromJson(dynamic json) {
    final map = <String, CRYPTOPUNKSMarketPlaceDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CRYPTOPUNKSMarketPlaceDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CRYPTOPUNKSMarketPlaceDTO-objects as value to a dart map
  static Map<String, List<CRYPTOPUNKSMarketPlaceDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CRYPTOPUNKSMarketPlaceDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CRYPTOPUNKSMarketPlaceDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

