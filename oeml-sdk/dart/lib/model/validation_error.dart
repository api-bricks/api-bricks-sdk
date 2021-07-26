//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationError {
  /// Returns a new [ValidationError] instance.
  ValidationError({
    this.type,
    this.title,
    this.status,
    this.traceId,
    this.errors,
  });

  String type;

  String title;

  num status;

  String traceId;

  String errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationError &&
     other.type == type &&
     other.title == title &&
     other.status == status &&
     other.traceId == traceId &&
     other.errors == errors;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (traceId == null ? 0 : traceId.hashCode) +
    (errors == null ? 0 : errors.hashCode);

  @override
  String toString() => 'ValidationError[type=$type, title=$title, status=$status, traceId=$traceId, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (traceId != null) {
      json[r'traceId'] = traceId;
    }
    if (errors != null) {
      json[r'errors'] = errors;
    }
    return json;
  }

  /// Returns a new [ValidationError] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ValidationError fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ValidationError(
        type: json[r'type'],
        title: json[r'title'],
        status: json[r'status'] == null ?
          null :
          json[r'status'].toDouble(),
        traceId: json[r'traceId'],
        errors: json[r'errors'],
    );

  static List<ValidationError> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ValidationError>[]
      : json.map((dynamic value) => ValidationError.fromJson(value)).toList(growable: true == growable);

  static Map<String, ValidationError> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ValidationError>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ValidationError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ValidationError-objects as value to a dart map
  static Map<String, List<ValidationError>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ValidationError>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ValidationError.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

