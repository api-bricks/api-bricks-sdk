//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  String type;

  RejectReason rejectReason;

  /// If the message related to exchange, then the identifier of the exchange will be provided.
  String exchangeId;

  /// Message text.
  String message;

  /// Value of rejected request, if available.
  String rejectedMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageReject &&
     other.type == type &&
     other.rejectReason == rejectReason &&
     other.exchangeId == exchangeId &&
     other.message == message &&
     other.rejectedMessage == rejectedMessage;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (rejectReason == null ? 0 : rejectReason.hashCode) +
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (rejectedMessage == null ? 0 : rejectedMessage.hashCode);

  @override
  String toString() => 'MessageReject[type=$type, rejectReason=$rejectReason, exchangeId=$exchangeId, message=$message, rejectedMessage=$rejectedMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (rejectReason != null) {
      json[r'reject_reason'] = rejectReason;
    }
    if (exchangeId != null) {
      json[r'exchange_id'] = exchangeId;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (rejectedMessage != null) {
      json[r'rejected_message'] = rejectedMessage;
    }
    return json;
  }

  /// Returns a new [MessageReject] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MessageReject fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MessageReject(
        type: json[r'type'],
        rejectReason: RejectReason.fromJson(json[r'reject_reason']),
        exchangeId: json[r'exchange_id'],
        message: json[r'message'],
        rejectedMessage: json[r'rejected_message'],
    );

  static List<MessageReject> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MessageReject>[]
      : json.map((dynamic value) => MessageReject.fromJson(value)).toList(growable: true == growable);

  static Map<String, MessageReject> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MessageReject>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = MessageReject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MessageReject-objects as value to a dart map
  static Map<String, List<MessageReject>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MessageReject>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = MessageReject.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

