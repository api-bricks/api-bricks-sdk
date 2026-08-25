//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_exchange_rates_timeseries_item.g.dart';

/// Represents an item in the exchange rate timeseries.
///
/// Properties:
/// * [timePeriodStart] - Gets or sets the start time of the period.
/// * [timePeriodEnd] - Gets or sets the end time of the period.
/// * [timeOpen] - Gets or sets the opening time of the period.
/// * [timeClose] - Gets or sets the closing time of the period.
/// * [rateOpen] - Gets or sets the opening rate for the period.
/// * [rateHigh] - Gets or sets the highest rate for the period.
/// * [rateLow] - Gets or sets the lowest rate for the period.
/// * [rateClose] - Gets or sets the closing rate for the period.
@BuiltValue()
abstract class V1ExchangeRatesTimeseriesItem implements Built<V1ExchangeRatesTimeseriesItem, V1ExchangeRatesTimeseriesItemBuilder> {
  /// Gets or sets the start time of the period.
  @BuiltValueField(wireName: r'time_period_start')
  DateTime? get timePeriodStart;

  /// Gets or sets the end time of the period.
  @BuiltValueField(wireName: r'time_period_end')
  DateTime? get timePeriodEnd;

  /// Gets or sets the opening time of the period.
  @BuiltValueField(wireName: r'time_open')
  DateTime? get timeOpen;

  /// Gets or sets the closing time of the period.
  @BuiltValueField(wireName: r'time_close')
  DateTime? get timeClose;

  /// Gets or sets the opening rate for the period.
  @BuiltValueField(wireName: r'rate_open')
  double? get rateOpen;

  /// Gets or sets the highest rate for the period.
  @BuiltValueField(wireName: r'rate_high')
  double? get rateHigh;

  /// Gets or sets the lowest rate for the period.
  @BuiltValueField(wireName: r'rate_low')
  double? get rateLow;

  /// Gets or sets the closing rate for the period.
  @BuiltValueField(wireName: r'rate_close')
  double? get rateClose;

  V1ExchangeRatesTimeseriesItem._();

  factory V1ExchangeRatesTimeseriesItem([void updates(V1ExchangeRatesTimeseriesItemBuilder b)]) = _$V1ExchangeRatesTimeseriesItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ExchangeRatesTimeseriesItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ExchangeRatesTimeseriesItem> get serializer => _$V1ExchangeRatesTimeseriesItemSerializer();
}

class _$V1ExchangeRatesTimeseriesItemSerializer implements PrimitiveSerializer<V1ExchangeRatesTimeseriesItem> {
  @override
  final Iterable<Type> types = const [V1ExchangeRatesTimeseriesItem, _$V1ExchangeRatesTimeseriesItem];

  @override
  final String wireName = r'V1ExchangeRatesTimeseriesItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ExchangeRatesTimeseriesItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timePeriodStart != null) {
      yield r'time_period_start';
      yield serializers.serialize(
        object.timePeriodStart,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.timePeriodEnd != null) {
      yield r'time_period_end';
      yield serializers.serialize(
        object.timePeriodEnd,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.timeOpen != null) {
      yield r'time_open';
      yield serializers.serialize(
        object.timeOpen,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.timeClose != null) {
      yield r'time_close';
      yield serializers.serialize(
        object.timeClose,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.rateOpen != null) {
      yield r'rate_open';
      yield serializers.serialize(
        object.rateOpen,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.rateHigh != null) {
      yield r'rate_high';
      yield serializers.serialize(
        object.rateHigh,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.rateLow != null) {
      yield r'rate_low';
      yield serializers.serialize(
        object.rateLow,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.rateClose != null) {
      yield r'rate_close';
      yield serializers.serialize(
        object.rateClose,
        specifiedType: const FullType.nullable(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ExchangeRatesTimeseriesItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ExchangeRatesTimeseriesItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time_period_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timePeriodStart = valueDes;
          break;
        case r'time_period_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timePeriodEnd = valueDes;
          break;
        case r'time_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timeOpen = valueDes;
          break;
        case r'time_close':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timeClose = valueDes;
          break;
        case r'rate_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.rateOpen = valueDes;
          break;
        case r'rate_high':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.rateHigh = valueDes;
          break;
        case r'rate_low':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.rateLow = valueDes;
          break;
        case r'rate_close':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.rateClose = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ExchangeRatesTimeseriesItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ExchangeRatesTimeseriesItemBuilder();
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


