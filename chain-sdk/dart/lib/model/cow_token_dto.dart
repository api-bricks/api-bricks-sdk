//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CowTokenDTO {
  /// Returns a new [CowTokenDTO] instance.
  CowTokenDTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.address,
    this.firstTradeTimestamp,
    this.name,
    this.symbol,
    this.decimals,
    this.totalVolume,
    this.vid,
    this.tokenSymbol,
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

  /// Token's address.
  String? id;

  /// Token's address.
  String? address;

  /// First token trade block timestamp.
  String? firstTradeTimestamp;

  /// Token name fetched by ERC20 contract call.
  String? name;

  /// Token symbol fetched by contract call.
  String? symbol;

  /// Token decimals fetched by contract call.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? decimals;

  /// Sum of total amount traded for this token.
  String? totalVolume;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  String? tokenSymbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CowTokenDTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.address == address &&
     other.firstTradeTimestamp == firstTradeTimestamp &&
     other.name == name &&
     other.symbol == symbol &&
     other.decimals == decimals &&
     other.totalVolume == totalVolume &&
     other.vid == vid &&
     other.tokenSymbol == tokenSymbol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (firstTradeTimestamp == null ? 0 : firstTradeTimestamp!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (symbol == null ? 0 : symbol!.hashCode) +
    (decimals == null ? 0 : decimals!.hashCode) +
    (totalVolume == null ? 0 : totalVolume!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (tokenSymbol == null ? 0 : tokenSymbol!.hashCode);

  @override
  String toString() => 'CowTokenDTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, address=$address, firstTradeTimestamp=$firstTradeTimestamp, name=$name, symbol=$symbol, decimals=$decimals, totalVolume=$totalVolume, vid=$vid, tokenSymbol=$tokenSymbol]';

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
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.firstTradeTimestamp != null) {
      json[r'first_trade_timestamp'] = this.firstTradeTimestamp;
    } else {
      json[r'first_trade_timestamp'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    if (this.decimals != null) {
      json[r'decimals'] = this.decimals;
    } else {
      json[r'decimals'] = null;
    }
    if (this.totalVolume != null) {
      json[r'total_volume'] = this.totalVolume;
    } else {
      json[r'total_volume'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    if (this.tokenSymbol != null) {
      json[r'token_symbol'] = this.tokenSymbol;
    } else {
      json[r'token_symbol'] = null;
    }
    return json;
  }

  /// Returns a new [CowTokenDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CowTokenDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CowTokenDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CowTokenDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CowTokenDTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        address: mapValueOfType<String>(json, r'address'),
        firstTradeTimestamp: mapValueOfType<String>(json, r'first_trade_timestamp'),
        name: mapValueOfType<String>(json, r'name'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        decimals: mapValueOfType<int>(json, r'decimals'),
        totalVolume: mapValueOfType<String>(json, r'total_volume'),
        vid: mapValueOfType<int>(json, r'vid'),
        tokenSymbol: mapValueOfType<String>(json, r'token_symbol'),
      );
    }
    return null;
  }

  static List<CowTokenDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CowTokenDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CowTokenDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CowTokenDTO> mapFromJson(dynamic json) {
    final map = <String, CowTokenDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CowTokenDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CowTokenDTO-objects as value to a dart map
  static Map<String, List<CowTokenDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CowTokenDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CowTokenDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

