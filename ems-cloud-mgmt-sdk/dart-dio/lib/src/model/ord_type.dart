//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ord_type.g.dart';

class OrdType extends EnumClass {

  /// Order types are documented in the separate section: <a href=\"#ems-order-params-type\">EMS / Starter Guide / Order parameters / Order type</a> 
  @BuiltValueEnumConst(wireName: r'LIMIT')
  static const OrdType LIMIT = _$LIMIT;

  static Serializer<OrdType> get serializer => _$ordTypeSerializer;

  const OrdType._(String name): super(name);

  static BuiltSet<OrdType> get values => _$values;
  static OrdType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OrdTypeMixin = Object with _$OrdTypeMixin;

