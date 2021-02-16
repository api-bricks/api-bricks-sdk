import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ord_status.g.dart';

class OrdStatus extends EnumClass {

  /// Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a> 
  @BuiltValueEnumConst(wireName: r'RECEIVED')
  static const OrdStatus RECEIVED = _$RECEIVED;
  /// Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a> 
  @BuiltValueEnumConst(wireName: r'ROUTING')
  static const OrdStatus ROUTING = _$ROUTING;
  /// Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a> 
  @BuiltValueEnumConst(wireName: r'ROUTED')
  static const OrdStatus ROUTED = _$ROUTED;
  /// Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a> 
  @BuiltValueEnumConst(wireName: r'NEW')
  static const OrdStatus NEW = _$NEW;
  /// Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a> 
  @BuiltValueEnumConst(wireName: r'PENDING_CANCEL')
  static const OrdStatus PENDING_CANCEL = _$PENDING_CANCEL;
  /// Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a> 
  @BuiltValueEnumConst(wireName: r'PARTIALLY_FILLED')
  static const OrdStatus PARTIALLY_FILLED = _$PARTIALLY_FILLED;
  /// Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a> 
  @BuiltValueEnumConst(wireName: r'FILLED')
  static const OrdStatus FILLED = _$FILLED;
  /// Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a> 
  @BuiltValueEnumConst(wireName: r'CANCELED')
  static const OrdStatus CANCELED = _$CANCELED;
  /// Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a> 
  @BuiltValueEnumConst(wireName: r'REJECTED')
  static const OrdStatus REJECTED = _$REJECTED;

  static Serializer<OrdStatus> get serializer => _$ordStatusSerializer;

  const OrdStatus._(String name): super(name);

  static BuiltSet<OrdStatus> get values => _$values;
  static OrdStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OrdStatusMixin = Object with _$OrdStatusMixin;

