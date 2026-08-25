//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_symbol_mapping.g.dart';

/// Represents symbol mapping information for exchange symbols.
///
/// Properties:
/// * [symbolId] - Gets or sets the symbol ID.
/// * [symbolIdExchange] - Gets or sets the exchange-specific symbol ID.
/// * [coinapiDatainfoId] - Gets or sets the DataInfo ID.
/// * [assetIdBaseExchange] - Gets or sets the exchange-specific base asset ID.
/// * [assetIdQuoteExchange] - Gets or sets the exchange-specific quote asset ID.
/// * [assetIdBase] - Gets or sets the base asset ID.
/// * [assetIdQuote] - Gets or sets the quote asset ID.
/// * [pricePrecision] - Gets or sets the price precision.
/// * [sizePrecision] - Gets or sets the size precision.
@BuiltValue()
abstract class V1SymbolMapping implements Built<V1SymbolMapping, V1SymbolMappingBuilder> {
  /// Gets or sets the symbol ID.
  @BuiltValueField(wireName: r'symbol_id')
  String? get symbolId;

  /// Gets or sets the exchange-specific symbol ID.
  @BuiltValueField(wireName: r'symbol_id_exchange')
  String? get symbolIdExchange;

  /// Gets or sets the DataInfo ID.
  @BuiltValueField(wireName: r'coinapi_datainfo_id')
  int? get coinapiDatainfoId;

  /// Gets or sets the exchange-specific base asset ID.
  @BuiltValueField(wireName: r'asset_id_base_exchange')
  String? get assetIdBaseExchange;

  /// Gets or sets the exchange-specific quote asset ID.
  @BuiltValueField(wireName: r'asset_id_quote_exchange')
  String? get assetIdQuoteExchange;

  /// Gets or sets the base asset ID.
  @BuiltValueField(wireName: r'asset_id_base')
  String? get assetIdBase;

  /// Gets or sets the quote asset ID.
  @BuiltValueField(wireName: r'asset_id_quote')
  String? get assetIdQuote;

  /// Gets or sets the price precision.
  @BuiltValueField(wireName: r'price_precision')
  double? get pricePrecision;

  /// Gets or sets the size precision.
  @BuiltValueField(wireName: r'size_precision')
  double? get sizePrecision;

  V1SymbolMapping._();

  factory V1SymbolMapping([void updates(V1SymbolMappingBuilder b)]) = _$V1SymbolMapping;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1SymbolMappingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1SymbolMapping> get serializer => _$V1SymbolMappingSerializer();
}

class _$V1SymbolMappingSerializer implements PrimitiveSerializer<V1SymbolMapping> {
  @override
  final Iterable<Type> types = const [V1SymbolMapping, _$V1SymbolMapping];

  @override
  final String wireName = r'V1SymbolMapping';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1SymbolMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbolId != null) {
      yield r'symbol_id';
      yield serializers.serialize(
        object.symbolId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.symbolIdExchange != null) {
      yield r'symbol_id_exchange';
      yield serializers.serialize(
        object.symbolIdExchange,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.coinapiDatainfoId != null) {
      yield r'coinapi_datainfo_id';
      yield serializers.serialize(
        object.coinapiDatainfoId,
        specifiedType: const FullType(int),
      );
    }
    if (object.assetIdBaseExchange != null) {
      yield r'asset_id_base_exchange';
      yield serializers.serialize(
        object.assetIdBaseExchange,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.assetIdQuoteExchange != null) {
      yield r'asset_id_quote_exchange';
      yield serializers.serialize(
        object.assetIdQuoteExchange,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    if (object.pricePrecision != null) {
      yield r'price_precision';
      yield serializers.serialize(
        object.pricePrecision,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.sizePrecision != null) {
      yield r'size_precision';
      yield serializers.serialize(
        object.sizePrecision,
        specifiedType: const FullType.nullable(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1SymbolMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1SymbolMappingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolId = valueDes;
          break;
        case r'symbol_id_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolIdExchange = valueDes;
          break;
        case r'coinapi_datainfo_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.coinapiDatainfoId = valueDes;
          break;
        case r'asset_id_base_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetIdBaseExchange = valueDes;
          break;
        case r'asset_id_quote_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetIdQuoteExchange = valueDes;
          break;
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
        case r'price_precision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.pricePrecision = valueDes;
          break;
        case r'size_precision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.sizePrecision = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1SymbolMapping deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1SymbolMappingBuilder();
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


