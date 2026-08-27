//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_exchange_rates_rate.g.dart';

/// Represents an exchange rate within a collection of exchange rates.
///
/// Properties:
/// * [time] - Gets or sets the time of the exchange rate.
/// * [assetIdQuote] - Gets or sets the quote asset ID of the exchange rate.
/// * [rate] - Gets or sets the exchange rate value.
@BuiltValue()
abstract class V1ExchangeRatesRate implements Built<V1ExchangeRatesRate, V1ExchangeRatesRateBuilder> {
  /// Gets or sets the time of the exchange rate.
  @BuiltValueField(wireName: r'time')
  DateTime? get time;

  /// Gets or sets the quote asset ID of the exchange rate.
  @BuiltValueField(wireName: r'asset_id_quote')
  String? get assetIdQuote;

  /// Gets or sets the exchange rate value.
  @BuiltValueField(wireName: r'rate')
  double? get rate;

  V1ExchangeRatesRate._();

  factory V1ExchangeRatesRate([void updates(V1ExchangeRatesRateBuilder b)]) = _$V1ExchangeRatesRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ExchangeRatesRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ExchangeRatesRate> get serializer => _$V1ExchangeRatesRateSerializer();
}

class _$V1ExchangeRatesRateSerializer implements PrimitiveSerializer<V1ExchangeRatesRate> {
  @override
  final Iterable<Type> types = const [V1ExchangeRatesRate, _$V1ExchangeRatesRate];

  @override
  final String wireName = r'V1ExchangeRatesRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ExchangeRatesRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.assetIdQuote != null) {
      yield r'asset_id_quote';
      yield serializers.serialize(
        object.assetIdQuote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.rate != null) {
      yield r'rate';
      yield serializers.serialize(
        object.rate,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ExchangeRatesRate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ExchangeRatesRateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.time = valueDes;
          break;
        case r'asset_id_quote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetIdQuote = valueDes;
          break;
        case r'rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.rate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ExchangeRatesRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ExchangeRatesRateBuilder();
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


