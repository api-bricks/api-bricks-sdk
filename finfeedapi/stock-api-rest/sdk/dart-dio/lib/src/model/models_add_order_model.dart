//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_add_order_model.g.dart';

/// Represents the response DTO for add order information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the order was added as DateTime (UTC)
/// * [isSideBuy] - Indicates if this is a Buy order ('8'/0x38).
/// * [size] - Quoted size in number of shares
/// * [price] - Price as decimal
/// * [orderId] - Order identifier
@BuiltValue()
abstract class ModelsAddOrderModel implements Built<ModelsAddOrderModel, ModelsAddOrderModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the order was added as DateTime (UTC)
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Indicates if this is a Buy order ('8'/0x38).
  @BuiltValueField(wireName: r'is_side_buy')
  bool? get isSideBuy;

  /// Quoted size in number of shares
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Price as decimal
  @BuiltValueField(wireName: r'price')
  double? get price;

  /// Order identifier
  @BuiltValueField(wireName: r'order_id')
  int? get orderId;

  ModelsAddOrderModel._();

  factory ModelsAddOrderModel([void updates(ModelsAddOrderModelBuilder b)]) = _$ModelsAddOrderModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsAddOrderModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsAddOrderModel> get serializer => _$ModelsAddOrderModelSerializer();
}

class _$ModelsAddOrderModelSerializer implements PrimitiveSerializer<ModelsAddOrderModel> {
  @override
  final Iterable<Type> types = const [ModelsAddOrderModel, _$ModelsAddOrderModel];

  @override
  final String wireName = r'ModelsAddOrderModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsAddOrderModel object, {
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
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsAddOrderModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsAddOrderModelBuilder result,
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
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.orderId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsAddOrderModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsAddOrderModelBuilder();
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


