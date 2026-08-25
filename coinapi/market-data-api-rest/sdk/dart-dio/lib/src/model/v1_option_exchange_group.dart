//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/v1_strike.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_option_exchange_group.g.dart';

/// Represents an option exchange group data model.
///
/// Properties:
/// * [assetIdBase] - Gets or sets the base asset identifier.
/// * [assetIdQuote] - Gets or sets the quote asset identifier.
/// * [underlyingPrice] - Gets or sets the underlying price of the option.
/// * [timeExpiration] - Gets or sets the expiration time of the option.
/// * [strikes] - Gets or sets the list of strikes available.
@BuiltValue()
abstract class V1OptionExchangeGroup implements Built<V1OptionExchangeGroup, V1OptionExchangeGroupBuilder> {
  /// Gets or sets the base asset identifier.
  @BuiltValueField(wireName: r'asset_id_base')
  String? get assetIdBase;

  /// Gets or sets the quote asset identifier.
  @BuiltValueField(wireName: r'asset_id_quote')
  String? get assetIdQuote;

  /// Gets or sets the underlying price of the option.
  @BuiltValueField(wireName: r'underlying_price')
  double? get underlyingPrice;

  /// Gets or sets the expiration time of the option.
  @BuiltValueField(wireName: r'time_expiration')
  DateTime? get timeExpiration;

  /// Gets or sets the list of strikes available.
  @BuiltValueField(wireName: r'strikes')
  BuiltList<V1Strike>? get strikes;

  V1OptionExchangeGroup._();

  factory V1OptionExchangeGroup([void updates(V1OptionExchangeGroupBuilder b)]) = _$V1OptionExchangeGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1OptionExchangeGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1OptionExchangeGroup> get serializer => _$V1OptionExchangeGroupSerializer();
}

class _$V1OptionExchangeGroupSerializer implements PrimitiveSerializer<V1OptionExchangeGroup> {
  @override
  final Iterable<Type> types = const [V1OptionExchangeGroup, _$V1OptionExchangeGroup];

  @override
  final String wireName = r'V1OptionExchangeGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1OptionExchangeGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assetIdBase != null) {
      yield r'asset_id_base';
      yield serializers.serialize(
        object.assetIdBase,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.assetIdQuote != null) {
      yield r'asset_id_quote';
      yield serializers.serialize(
        object.assetIdQuote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.underlyingPrice != null) {
      yield r'underlying_price';
      yield serializers.serialize(
        object.underlyingPrice,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.timeExpiration != null) {
      yield r'time_expiration';
      yield serializers.serialize(
        object.timeExpiration,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.strikes != null) {
      yield r'strikes';
      yield serializers.serialize(
        object.strikes,
        specifiedType: const FullType.nullable(BuiltList, [FullType(V1Strike)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1OptionExchangeGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1OptionExchangeGroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'asset_id_base':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetIdBase = valueDes;
          break;
        case r'asset_id_quote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetIdQuote = valueDes;
          break;
        case r'underlying_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.underlyingPrice = valueDes;
          break;
        case r'time_expiration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timeExpiration = valueDes;
          break;
        case r'strikes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(V1Strike)]),
          ) as BuiltList<V1Strike>?;
          if (valueDes == null) continue;
          result.strikes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1OptionExchangeGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1OptionExchangeGroupBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


