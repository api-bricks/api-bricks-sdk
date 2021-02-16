import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_in_force.g.dart';

class TimeInForce extends EnumClass {

  /// Order time in force options are documented in the separate section: <a href=\"#oeml-order-params-tif\">OEML / Starter Guide / Order parameters / Time in force</a> 
  @BuiltValueEnumConst(wireName: r'GOOD_TILL_CANCEL')
  static const TimeInForce GOOD_TILL_CANCEL = _$GOOD_TILL_CANCEL;
  /// Order time in force options are documented in the separate section: <a href=\"#oeml-order-params-tif\">OEML / Starter Guide / Order parameters / Time in force</a> 
  @BuiltValueEnumConst(wireName: r'GOOD_TILL_TIME_EXCHANGE')
  static const TimeInForce GOOD_TILL_TIME_EXCHANGE = _$GOOD_TILL_TIME_EXCHANGE;
  /// Order time in force options are documented in the separate section: <a href=\"#oeml-order-params-tif\">OEML / Starter Guide / Order parameters / Time in force</a> 
  @BuiltValueEnumConst(wireName: r'GOOD_TILL_TIME_OMS')
  static const TimeInForce GOOD_TILL_TIME_OMS = _$GOOD_TILL_TIME_OMS;
  /// Order time in force options are documented in the separate section: <a href=\"#oeml-order-params-tif\">OEML / Starter Guide / Order parameters / Time in force</a> 
  @BuiltValueEnumConst(wireName: r'FILL_OR_KILL')
  static const TimeInForce FILL_OR_KILL = _$FILL_OR_KILL;
  /// Order time in force options are documented in the separate section: <a href=\"#oeml-order-params-tif\">OEML / Starter Guide / Order parameters / Time in force</a> 
  @BuiltValueEnumConst(wireName: r'IMMEDIATE_OR_CANCEL')
  static const TimeInForce IMMEDIATE_OR_CANCEL = _$IMMEDIATE_OR_CANCEL;

  static Serializer<TimeInForce> get serializer => _$timeInForceSerializer;

  const TimeInForce._(String name): super(name);

  static BuiltSet<TimeInForce> get values => _$values;
  static TimeInForce valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TimeInForceMixin = Object with _$TimeInForceMixin;

