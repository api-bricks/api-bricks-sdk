//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessageReject {
  /// Returns a new [MessageReject] instance.
  MessageReject({
    this.type,
    this.rejectReason,
    this.exchangeId,
    this.message,
    this.rejectedMessage,
  });

  /// Message type, constant.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RejectReason? rejectReason;

  /// If the message related to exchange, then the identifier of the exchange will be provided.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exchangeId;

  /// Message text.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Value of rejected request, if available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rejectedMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageReject &&
     other.type == type &&
     other.rejectReason == rejectReason &&
     other.exchangeId == exchangeId &&
     other.message == message &&
     other.rejectedMessage == rejectedMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (rejectReason == null ? 0 : rejectReason!.hashCode) +
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (rejectedMessage == null ? 0 : rejectedMessage!.hashCode);

  @override
  String toString() => 'MessageReject[type=$type, rejectReason=$rejectReason, exchangeId=$exchangeId, message=$message, rejectedMessage=$rejectedMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.rejectReason != null) {
      json[r'reject_reason'] = this.rejectReason;
    } else {
      json[r'reject_reason'] = null;
    }
    if (this.exchangeId != null) {
      json[r'exchange_id'] = this.exchangeId;
    } else {
      json[r'exchange_id'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.rejectedMessage != null) {
      json[r'rejected_message'] = this.rejectedMessage;
    } else {
      json[r'rejected_message'] = null;
    }
    return json;
  }

  /// Returns a new [MessageReject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageReject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageReject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageReject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageReject(
        type: mapValueOfType<String>(json, r'type'),
        rejectReason: RejectReason.fromJson(json[r'reject_reason']),
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        message: mapValueOfType<String>(json, r'message'),
        rejectedMessage: mapValueOfType<String>(json, r'rejected_message'),
      );
    }
    return null;
  }

  static List<MessageReject>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageReject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageReject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageReject> mapFromJson(dynamic json) {
    final map = <String, MessageReject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageReject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageReject-objects as value to a dart map
  static Map<String, List<MessageReject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageReject>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageReject.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

