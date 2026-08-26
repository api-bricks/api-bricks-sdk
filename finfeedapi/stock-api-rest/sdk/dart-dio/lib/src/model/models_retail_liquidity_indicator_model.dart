//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_retail_liquidity_indicator_model.g.dart';

/// Represents the response DTO for retail liquidity indicator information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the retail liquidity indicator was recorded as DateTime
/// * [retailLiquidityIndicator] - Retail liquidity indicator as byte value
/// * [retailLiquidityIndicatorCode] - Retail liquidity indicator as character string
/// * [retailLiquidityIndicatorText] - Human-readable description of the retail liquidity indicator
/// * [isRetailIndicatorNotApplicable] - Indicates if the indicator is 'Not Applicable' (' '/0x20).
/// * [isRetailIndicatorBuyInterest] - Indicates if there is 'Buy interest for Retail' ('A'/0x41).
/// * [isRetailIndicatorSellInterest] - Indicates if there is 'Sell interest for Retail' ('B'/0x42).
/// * [isRetailIndicatorBuyAndSellInterest] - Indicates if there is 'Buy and sell interest for Retail' ('C'/0x43).
@BuiltValue()
abstract class ModelsRetailLiquidityIndicatorModel implements Built<ModelsRetailLiquidityIndicatorModel, ModelsRetailLiquidityIndicatorModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the retail liquidity indicator was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Retail liquidity indicator as byte value
  @BuiltValueField(wireName: r'retail_liquidity_indicator')
  int? get retailLiquidityIndicator;

  /// Retail liquidity indicator as character string
  @BuiltValueField(wireName: r'retail_liquidity_indicator_code')
  String? get retailLiquidityIndicatorCode;

  /// Human-readable description of the retail liquidity indicator
  @BuiltValueField(wireName: r'retail_liquidity_indicator_text')
  String? get retailLiquidityIndicatorText;

  /// Indicates if the indicator is 'Not Applicable' (' '/0x20).
  @BuiltValueField(wireName: r'is_retail_indicator_not_applicable')
  bool? get isRetailIndicatorNotApplicable;

  /// Indicates if there is 'Buy interest for Retail' ('A'/0x41).
  @BuiltValueField(wireName: r'is_retail_indicator_buy_interest')
  bool? get isRetailIndicatorBuyInterest;

  /// Indicates if there is 'Sell interest for Retail' ('B'/0x42).
  @BuiltValueField(wireName: r'is_retail_indicator_sell_interest')
  bool? get isRetailIndicatorSellInterest;

  /// Indicates if there is 'Buy and sell interest for Retail' ('C'/0x43).
  @BuiltValueField(wireName: r'is_retail_indicator_buy_and_sell_interest')
  bool? get isRetailIndicatorBuyAndSellInterest;

  ModelsRetailLiquidityIndicatorModel._();

  factory ModelsRetailLiquidityIndicatorModel([void updates(ModelsRetailLiquidityIndicatorModelBuilder b)]) = _$ModelsRetailLiquidityIndicatorModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsRetailLiquidityIndicatorModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsRetailLiquidityIndicatorModel> get serializer => _$ModelsRetailLiquidityIndicatorModelSerializer();
}

class _$ModelsRetailLiquidityIndicatorModelSerializer implements PrimitiveSerializer<ModelsRetailLiquidityIndicatorModel> {
  @override
  final Iterable<Type> types = const [ModelsRetailLiquidityIndicatorModel, _$ModelsRetailLiquidityIndicatorModel];

  @override
  final String wireName = r'ModelsRetailLiquidityIndicatorModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsRetailLiquidityIndicatorModel object, {
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
    if (object.retailLiquidityIndicator != null) {
      yield r'retail_liquidity_indicator';
      yield serializers.serialize(
        object.retailLiquidityIndicator,
        specifiedType: const FullType(int),
      );
    }
    if (object.retailLiquidityIndicatorCode != null) {
      yield r'retail_liquidity_indicator_code';
      yield serializers.serialize(
        object.retailLiquidityIndicatorCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.retailLiquidityIndicatorText != null) {
      yield r'retail_liquidity_indicator_text';
      yield serializers.serialize(
        object.retailLiquidityIndicatorText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isRetailIndicatorNotApplicable != null) {
      yield r'is_retail_indicator_not_applicable';
      yield serializers.serialize(
        object.isRetailIndicatorNotApplicable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isRetailIndicatorBuyInterest != null) {
      yield r'is_retail_indicator_buy_interest';
      yield serializers.serialize(
        object.isRetailIndicatorBuyInterest,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isRetailIndicatorSellInterest != null) {
      yield r'is_retail_indicator_sell_interest';
      yield serializers.serialize(
        object.isRetailIndicatorSellInterest,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isRetailIndicatorBuyAndSellInterest != null) {
      yield r'is_retail_indicator_buy_and_sell_interest';
      yield serializers.serialize(
        object.isRetailIndicatorBuyAndSellInterest,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsRetailLiquidityIndicatorModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsRetailLiquidityIndicatorModelBuilder result,
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
        case r'retail_liquidity_indicator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.retailLiquidityIndicator = valueDes;
          break;
        case r'retail_liquidity_indicator_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.retailLiquidityIndicatorCode = valueDes;
          break;
        case r'retail_liquidity_indicator_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.retailLiquidityIndicatorText = valueDes;
          break;
        case r'is_retail_indicator_not_applicable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isRetailIndicatorNotApplicable = valueDes;
          break;
        case r'is_retail_indicator_buy_interest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isRetailIndicatorBuyInterest = valueDes;
          break;
        case r'is_retail_indicator_sell_interest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isRetailIndicatorSellInterest = valueDes;
          break;
        case r'is_retail_indicator_buy_and_sell_interest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isRetailIndicatorBuyAndSellInterest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsRetailLiquidityIndicatorModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsRetailLiquidityIndicatorModelBuilder();
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


