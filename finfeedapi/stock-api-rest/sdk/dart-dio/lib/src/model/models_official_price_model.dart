//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_official_price_model.g.dart';

/// Represents the response DTO for official price information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the official price was recorded as DateTime
/// * [priceType] - Type of price as byte value
/// * [priceTypeCode] - Type of price as character string
/// * [priceTypeText] - Human-readable description of the price type
/// * [isPriceTypeOpening] - Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51).
/// * [isPriceTypeClosing] - Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d).
/// * [officialPrice] - Official price as decimal
@BuiltValue()
abstract class ModelsOfficialPriceModel implements Built<ModelsOfficialPriceModel, ModelsOfficialPriceModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the official price was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Type of price as byte value
  @BuiltValueField(wireName: r'price_type')
  int? get priceType;

  /// Type of price as character string
  @BuiltValueField(wireName: r'price_type_code')
  String? get priceTypeCode;

  /// Human-readable description of the price type
  @BuiltValueField(wireName: r'price_type_text')
  String? get priceTypeText;

  /// Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51).
  @BuiltValueField(wireName: r'is_price_type_opening')
  bool? get isPriceTypeOpening;

  /// Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d).
  @BuiltValueField(wireName: r'is_price_type_closing')
  bool? get isPriceTypeClosing;

  /// Official price as decimal
  @BuiltValueField(wireName: r'official_price')
  double? get officialPrice;

  ModelsOfficialPriceModel._();

  factory ModelsOfficialPriceModel([void updates(ModelsOfficialPriceModelBuilder b)]) = _$ModelsOfficialPriceModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsOfficialPriceModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsOfficialPriceModel> get serializer => _$ModelsOfficialPriceModelSerializer();
}

class _$ModelsOfficialPriceModelSerializer implements PrimitiveSerializer<ModelsOfficialPriceModel> {
  @override
  final Iterable<Type> types = const [ModelsOfficialPriceModel, _$ModelsOfficialPriceModel];

  @override
  final String wireName = r'ModelsOfficialPriceModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsOfficialPriceModel object, {
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
    if (object.priceType != null) {
      yield r'price_type';
      yield serializers.serialize(
        object.priceType,
        specifiedType: const FullType(int),
      );
    }
    if (object.priceTypeCode != null) {
      yield r'price_type_code';
      yield serializers.serialize(
        object.priceTypeCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.priceTypeText != null) {
      yield r'price_type_text';
      yield serializers.serialize(
        object.priceTypeText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isPriceTypeOpening != null) {
      yield r'is_price_type_opening';
      yield serializers.serialize(
        object.isPriceTypeOpening,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isPriceTypeClosing != null) {
      yield r'is_price_type_closing';
      yield serializers.serialize(
        object.isPriceTypeClosing,
        specifiedType: const FullType(bool),
      );
    }
    if (object.officialPrice != null) {
      yield r'official_price';
      yield serializers.serialize(
        object.officialPrice,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsOfficialPriceModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsOfficialPriceModelBuilder result,
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
        case r'price_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.priceType = valueDes;
          break;
        case r'price_type_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.priceTypeCode = valueDes;
          break;
        case r'price_type_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.priceTypeText = valueDes;
          break;
        case r'is_price_type_opening':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isPriceTypeOpening = valueDes;
          break;
        case r'is_price_type_closing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isPriceTypeClosing = valueDes;
          break;
        case r'official_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.officialPrice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsOfficialPriceModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsOfficialPriceModelBuilder();
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


