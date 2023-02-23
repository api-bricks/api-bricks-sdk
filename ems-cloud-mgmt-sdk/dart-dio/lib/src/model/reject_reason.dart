//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reject_reason.g.dart';

class RejectReason extends EnumClass {

  /// Cause of rejection.
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const RejectReason OTHER = _$OTHER;
  /// Cause of rejection.
  @BuiltValueEnumConst(wireName: r'EXCHANGE_UNREACHABLE')
  static const RejectReason EXCHANGE_UNREACHABLE = _$EXCHANGE_UNREACHABLE;
  /// Cause of rejection.
  @BuiltValueEnumConst(wireName: r'EXCHANGE_RESPONSE_TIMEOUT')
  static const RejectReason EXCHANGE_RESPONSE_TIMEOUT = _$EXCHANGE_RESPONSE_TIMEOUT;
  /// Cause of rejection.
  @BuiltValueEnumConst(wireName: r'ORDER_ID_NOT_FOUND')
  static const RejectReason ORDER_ID_NOT_FOUND = _$ORDER_ID_NOT_FOUND;
  /// Cause of rejection.
  @BuiltValueEnumConst(wireName: r'INVALID_TYPE')
  static const RejectReason INVALID_TYPE = _$INVALID_TYPE;
  /// Cause of rejection.
  @BuiltValueEnumConst(wireName: r'METHOD_NOT_SUPPORTED')
  static const RejectReason METHOD_NOT_SUPPORTED = _$METHOD_NOT_SUPPORTED;
  /// Cause of rejection.
  @BuiltValueEnumConst(wireName: r'JSON_ERROR')
  static const RejectReason JSON_ERROR = _$JSON_ERROR;

  static Serializer<RejectReason> get serializer => _$rejectReasonSerializer;

  const RejectReason._(String name): super(name);

  static BuiltSet<RejectReason> get values => _$values;
  static RejectReason valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RejectReasonMixin = Object with _$RejectReasonMixin;

