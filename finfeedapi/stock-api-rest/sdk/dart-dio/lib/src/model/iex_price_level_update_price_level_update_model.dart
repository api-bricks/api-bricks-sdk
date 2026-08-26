//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'iex_price_level_update_price_level_update_model.g.dart';

/// Represents the response DTO for price level update information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the price level update was recorded as DateTime
/// * [isSideBuy] - Indicates if this is a price level update for the Buy Side.
/// * [isEventProcessingComplete] - Indicates if event processing is complete.
/// * [size] - Aggregate quoted size at the price level
/// * [price] - Price level as decimal
@BuiltValue()
abstract class IEXPriceLevelUpdatePriceLevelUpdateModel implements Built<IEXPriceLevelUpdatePriceLevelUpdateModel, IEXPriceLevelUpdatePriceLevelUpdateModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the price level update was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Indicates if this is a price level update for the Buy Side.
  @BuiltValueField(wireName: r'is_side_buy')
  bool? get isSideBuy;

  /// Indicates if event processing is complete.
  @BuiltValueField(wireName: r'is_event_processing_complete')
  bool? get isEventProcessingComplete;

  /// Aggregate quoted size at the price level
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Price level as decimal
  @BuiltValueField(wireName: r'price')
  double? get price;

  IEXPriceLevelUpdatePriceLevelUpdateModel._();

  factory IEXPriceLevelUpdatePriceLevelUpdateModel([void updates(IEXPriceLevelUpdatePriceLevelUpdateModelBuilder b)]) = _$IEXPriceLevelUpdatePriceLevelUpdateModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IEXPriceLevelUpdatePriceLevelUpdateModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IEXPriceLevelUpdatePriceLevelUpdateModel> get serializer => _$IEXPriceLevelUpdatePriceLevelUpdateModelSerializer();
}

class _$IEXPriceLevelUpdatePriceLevelUpdateModelSerializer implements PrimitiveSerializer<IEXPriceLevelUpdatePriceLevelUpdateModel> {
  @override
  final Iterable<Type> types = const [IEXPriceLevelUpdatePriceLevelUpdateModel, _$IEXPriceLevelUpdatePriceLevelUpdateModel];

  @override
  final String wireName = r'IEXPriceLevelUpdatePriceLevelUpdateModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IEXPriceLevelUpdatePriceLevelUpdateModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestampNanos != null) {
      yield r'timestamp_nanos';
      yield serializers.serialize(
        object.timestampNanos,
        specifiedType: const FullType(int),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.isSideBuy != null) {
      yield r'is_side_buy';
      yield serializers.serialize(
        object.isSideBuy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isEventProcessingComplete != null) {
      yield r'is_event_processing_complete';
      yield serializers.serialize(
        object.isEventProcessingComplete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IEXPriceLevelUpdatePriceLevelUpdateModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IEXPriceLevelUpdatePriceLevelUpdateModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbol = valueDes;
          break;
        case r'timestamp_nanos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timestampNanos = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'is_side_buy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isSideBuy = valueDes;
          break;
        case r'is_event_processing_complete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isEventProcessingComplete = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IEXPriceLevelUpdatePriceLevelUpdateModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IEXPriceLevelUpdatePriceLevelUpdateModelBuilder();
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


