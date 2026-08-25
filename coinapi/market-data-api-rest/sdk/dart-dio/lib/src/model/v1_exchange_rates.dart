//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/v1_exchange_rates_rate.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_exchange_rates.g.dart';

/// Represents exchange rates for a specific base asset.
///
/// Properties:
/// * [assetIdBase] - Gets or sets the base asset ID.
/// * [rates] - Gets or sets the list of exchange rates.
@BuiltValue()
abstract class V1ExchangeRates implements Built<V1ExchangeRates, V1ExchangeRatesBuilder> {
  /// Gets or sets the base asset ID.
  @BuiltValueField(wireName: r'asset_id_base')
  String? get assetIdBase;

  /// Gets or sets the list of exchange rates.
  @BuiltValueField(wireName: r'rates')
  BuiltList<V1ExchangeRatesRate>? get rates;

  V1ExchangeRates._();

  factory V1ExchangeRates([void updates(V1ExchangeRatesBuilder b)]) = _$V1ExchangeRates;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ExchangeRatesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ExchangeRates> get serializer => _$V1ExchangeRatesSerializer();
}

class _$V1ExchangeRatesSerializer implements PrimitiveSerializer<V1ExchangeRates> {
  @override
  final Iterable<Type> types = const [V1ExchangeRates, _$V1ExchangeRates];

  @override
  final String wireName = r'V1ExchangeRates';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ExchangeRates object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assetIdBase != null) {
      yield r'asset_id_base';
      yield serializers.serialize(
        object.assetIdBase,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.rates != null) {
      yield r'rates';
      yield serializers.serialize(
        object.rates,
        specifiedType: const FullType.nullable(BuiltList, [FullType(V1ExchangeRatesRate)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ExchangeRates object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ExchangeRatesBuilder result,
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
        case r'rates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(V1ExchangeRatesRate)]),
          ) as BuiltList<V1ExchangeRatesRate>?;
          if (valueDes == null) continue;
          result.rates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ExchangeRates deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ExchangeRatesBuilder();
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


