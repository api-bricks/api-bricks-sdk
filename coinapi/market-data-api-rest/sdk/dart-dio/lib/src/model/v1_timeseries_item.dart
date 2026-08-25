//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_timeseries_item.g.dart';

/// Represents a timeseries item with price and volume information.
///
/// Properties:
/// * [timePeriodStart] - Gets or sets the start time of the time period.
/// * [timePeriodEnd] - Gets or sets the end time of the time period.
/// * [timeOpen] - Gets or sets the time when the price opened.
/// * [timeClose] - Gets or sets the time when the price closed.
/// * [priceOpen] - Gets or sets the opening price.
/// * [priceHigh] - Gets or sets the highest price during the time period.
/// * [priceLow] - Gets or sets the lowest price during the time period.
/// * [priceClose] - Gets or sets the closing price.
/// * [volumeTraded] - Gets or sets the total volume traded during the time period.
/// * [tradesCount] - Gets or sets the number of trades executed during the time period.
@BuiltValue()
abstract class V1TimeseriesItem implements Built<V1TimeseriesItem, V1TimeseriesItemBuilder> {
  /// Gets or sets the start time of the time period.
  @BuiltValueField(wireName: r'time_period_start')
  DateTime? get timePeriodStart;

  /// Gets or sets the end time of the time period.
  @BuiltValueField(wireName: r'time_period_end')
  DateTime? get timePeriodEnd;

  /// Gets or sets the time when the price opened.
  @BuiltValueField(wireName: r'time_open')
  DateTime? get timeOpen;

  /// Gets or sets the time when the price closed.
  @BuiltValueField(wireName: r'time_close')
  DateTime? get timeClose;

  /// Gets or sets the opening price.
  @BuiltValueField(wireName: r'price_open')
  double? get priceOpen;

  /// Gets or sets the highest price during the time period.
  @BuiltValueField(wireName: r'price_high')
  double? get priceHigh;

  /// Gets or sets the lowest price during the time period.
  @BuiltValueField(wireName: r'price_low')
  double? get priceLow;

  /// Gets or sets the closing price.
  @BuiltValueField(wireName: r'price_close')
  double? get priceClose;

  /// Gets or sets the total volume traded during the time period.
  @BuiltValueField(wireName: r'volume_traded')
  double? get volumeTraded;

  /// Gets or sets the number of trades executed during the time period.
  @BuiltValueField(wireName: r'trades_count')
  int? get tradesCount;

  V1TimeseriesItem._();

  factory V1TimeseriesItem([void updates(V1TimeseriesItemBuilder b)]) = _$V1TimeseriesItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1TimeseriesItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1TimeseriesItem> get serializer => _$V1TimeseriesItemSerializer();
}

class _$V1TimeseriesItemSerializer implements PrimitiveSerializer<V1TimeseriesItem> {
  @override
  final Iterable<Type> types = const [V1TimeseriesItem, _$V1TimeseriesItem];

  @override
  final String wireName = r'V1TimeseriesItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1TimeseriesItem object, {
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
    if (object.priceOpen != null) {
      yield r'price_open';
      yield serializers.serialize(
        object.priceOpen,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.priceHigh != null) {
      yield r'price_high';
      yield serializers.serialize(
        object.priceHigh,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.priceLow != null) {
      yield r'price_low';
      yield serializers.serialize(
        object.priceLow,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.priceClose != null) {
      yield r'price_close';
      yield serializers.serialize(
        object.priceClose,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.volumeTraded != null) {
      yield r'volume_traded';
      yield serializers.serialize(
        object.volumeTraded,
        specifiedType: const FullType(double),
      );
    }
    if (object.tradesCount != null) {
      yield r'trades_count';
      yield serializers.serialize(
        object.tradesCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1TimeseriesItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1TimeseriesItemBuilder result,
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
        case r'price_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.priceOpen = valueDes;
          break;
        case r'price_high':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.priceHigh = valueDes;
          break;
        case r'price_low':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.priceLow = valueDes;
          break;
        case r'price_close':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.priceClose = valueDes;
          break;
        case r'volume_traded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volumeTraded = valueDes;
          break;
        case r'trades_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tradesCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1TimeseriesItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1TimeseriesItemBuilder();
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


