//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Message {
  /// Returns a new [Message] instance.
  Message({
    this.type,
    this.severity,
    this.exchangeId,
    this.message,
  });

  /// Type of message.
  String type;

  Severity severity;

  /// If the message related to exchange, then the identifier of the exchange will be provided.
  String exchangeId;

  /// Message text.
  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Message &&
     other.type == type &&
     other.severity == severity &&
     other.exchangeId == exchangeId &&
     other.message == message;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (severity == null ? 0 : severity.hashCode) +
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'Message[type=$type, severity=$severity, exchangeId=$exchangeId, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (severity != null) {
      json[r'severity'] = severity;
    }
    if (exchangeId != null) {
      json[r'exchange_id'] = exchangeId;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [Message] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Message fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Message(
        type: json[r'type'],
        severity: Severity.fromJson(json[r'severity']),
        exchangeId: json[r'exchange_id'],
        message: json[r'message'],
    );

  static List<Message> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Message>[]
      : json.map((v) => Message.fromJson(v)).toList(growable: true == growable);

  static Map<String, Message> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Message>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Message.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Message-objects as value to a dart map
  static Map<String, List<Message>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Message>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Message.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

