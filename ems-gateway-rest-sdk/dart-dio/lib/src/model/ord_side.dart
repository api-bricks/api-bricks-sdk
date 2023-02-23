//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ord_side.g.dart';

class OrdSide extends EnumClass {

  /// Side of order. 
  @BuiltValueEnumConst(wireName: r'BUY')
  static const OrdSide BUY = _$BUY;
  /// Side of order. 
  @BuiltValueEnumConst(wireName: r'SELL')
  static const OrdSide SELL = _$SELL;

  static Serializer<OrdSide> get serializer => _$ordSideSerializer;

  const OrdSide._(String name): super(name);

  static BuiltSet<OrdSide> get values => _$values;
  static OrdSide valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OrdSideMixin = Object with _$OrdSideMixin;

