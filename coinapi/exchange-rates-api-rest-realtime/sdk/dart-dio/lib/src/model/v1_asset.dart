//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/v1_exchange_rates_chain_network_address.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_asset.g.dart';

/// Represents an asset.
///
/// Properties:
/// * [assetId] - Gets or sets the asset ID.
/// * [name] - Gets or sets the name of the asset.
/// * [typeIsCrypto] - Gets or sets a value indicating whether the asset is a cryptocurrency.
/// * [dataQuoteStart] - Gets or sets the start date of quote data.
/// * [dataQuoteEnd] - Gets or sets the end date of quote data.
/// * [dataOrderbookStart] - Gets or sets the start date of order book data.
/// * [dataOrderbookEnd] - Gets or sets the end date of order book data.
/// * [dataTradeStart] - Gets or sets the start date of trade data.
/// * [dataTradeEnd] - Gets or sets the end date of trade data.
/// * [dataSymbolsCount] - Gets or sets the number of symbols.
/// * [volume1hrsUsd] - Gets or sets the USD volume in the last 1 hour.
/// * [volume1dayUsd] - Gets or sets the USD volume in the last 1 day.
/// * [volume1mthUsd] - Gets or sets the USD volume in the last 1 month.
/// * [priceUsd] - Gets or sets the USD price of the asset.
/// * [idIcon] - Gets or sets the ID of the icon for the asset.
/// * [supplyCurrent] - Gets or sets the current supply of the asset.
/// * [supplyTotal] - Gets or sets the total supply of the asset.
/// * [supplyMax] - Gets or sets the maximum supply of the asset.
/// * [chainAddresses] - 
/// * [dataStart] 
/// * [dataEnd] 
@BuiltValue()
abstract class V1Asset implements Built<V1Asset, V1AssetBuilder> {
  /// Gets or sets the asset ID.
  @BuiltValueField(wireName: r'asset_id')
  String? get assetId;

  /// Gets or sets the name of the asset.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Gets or sets a value indicating whether the asset is a cryptocurrency.
  @BuiltValueField(wireName: r'type_is_crypto')
  int? get typeIsCrypto;

  /// Gets or sets the start date of quote data.
  @BuiltValueField(wireName: r'data_quote_start')
  DateTime? get dataQuoteStart;

  /// Gets or sets the end date of quote data.
  @BuiltValueField(wireName: r'data_quote_end')
  DateTime? get dataQuoteEnd;

  /// Gets or sets the start date of order book data.
  @BuiltValueField(wireName: r'data_orderbook_start')
  DateTime? get dataOrderbookStart;

  /// Gets or sets the end date of order book data.
  @BuiltValueField(wireName: r'data_orderbook_end')
  DateTime? get dataOrderbookEnd;

  /// Gets or sets the start date of trade data.
  @BuiltValueField(wireName: r'data_trade_start')
  DateTime? get dataTradeStart;

  /// Gets or sets the end date of trade data.
  @BuiltValueField(wireName: r'data_trade_end')
  DateTime? get dataTradeEnd;

  /// Gets or sets the number of symbols.
  @BuiltValueField(wireName: r'data_symbols_count')
  int? get dataSymbolsCount;

  /// Gets or sets the USD volume in the last 1 hour.
  @BuiltValueField(wireName: r'volume_1hrs_usd')
  double? get volume1hrsUsd;

  /// Gets or sets the USD volume in the last 1 day.
  @BuiltValueField(wireName: r'volume_1day_usd')
  double? get volume1dayUsd;

  /// Gets or sets the USD volume in the last 1 month.
  @BuiltValueField(wireName: r'volume_1mth_usd')
  double? get volume1mthUsd;

  /// Gets or sets the USD price of the asset.
  @BuiltValueField(wireName: r'price_usd')
  double? get priceUsd;

  /// Gets or sets the ID of the icon for the asset.
  @BuiltValueField(wireName: r'id_icon')
  String? get idIcon;

  /// Gets or sets the current supply of the asset.
  @BuiltValueField(wireName: r'supply_current')
  double? get supplyCurrent;

  /// Gets or sets the total supply of the asset.
  @BuiltValueField(wireName: r'supply_total')
  double? get supplyTotal;

  /// Gets or sets the maximum supply of the asset.
  @BuiltValueField(wireName: r'supply_max')
  double? get supplyMax;

  /// 
  @BuiltValueField(wireName: r'chain_addresses')
  BuiltList<V1ExchangeRatesChainNetworkAddress>? get chainAddresses;

  @BuiltValueField(wireName: r'data_start')
  String? get dataStart;

  @BuiltValueField(wireName: r'data_end')
  String? get dataEnd;

  V1Asset._();

  factory V1Asset([void updates(V1AssetBuilder b)]) = _$V1Asset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AssetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1Asset> get serializer => _$V1AssetSerializer();
}

class _$V1AssetSerializer implements PrimitiveSerializer<V1Asset> {
  @override
  final Iterable<Type> types = const [V1Asset, _$V1Asset];

  @override
  final String wireName = r'V1Asset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1Asset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assetId != null) {
      yield r'asset_id';
      yield serializers.serialize(
        object.assetId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.typeIsCrypto != null) {
      yield r'type_is_crypto';
      yield serializers.serialize(
        object.typeIsCrypto,
        specifiedType: const FullType(int),
      );
    }
    if (object.dataQuoteStart != null) {
      yield r'data_quote_start';
      yield serializers.serialize(
        object.dataQuoteStart,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.dataQuoteEnd != null) {
      yield r'data_quote_end';
      yield serializers.serialize(
        object.dataQuoteEnd,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.dataOrderbookStart != null) {
      yield r'data_orderbook_start';
      yield serializers.serialize(
        object.dataOrderbookStart,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.dataOrderbookEnd != null) {
      yield r'data_orderbook_end';
      yield serializers.serialize(
        object.dataOrderbookEnd,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.dataTradeStart != null) {
      yield r'data_trade_start';
      yield serializers.serialize(
        object.dataTradeStart,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.dataTradeEnd != null) {
      yield r'data_trade_end';
      yield serializers.serialize(
        object.dataTradeEnd,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.dataSymbolsCount != null) {
      yield r'data_symbols_count';
      yield serializers.serialize(
        object.dataSymbolsCount,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.volume1hrsUsd != null) {
      yield r'volume_1hrs_usd';
      yield serializers.serialize(
        object.volume1hrsUsd,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.volume1dayUsd != null) {
      yield r'volume_1day_usd';
      yield serializers.serialize(
        object.volume1dayUsd,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.volume1mthUsd != null) {
      yield r'volume_1mth_usd';
      yield serializers.serialize(
        object.volume1mthUsd,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.priceUsd != null) {
      yield r'price_usd';
      yield serializers.serialize(
        object.priceUsd,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.idIcon != null) {
      yield r'id_icon';
      yield serializers.serialize(
        object.idIcon,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supplyCurrent != null) {
      yield r'supply_current';
      yield serializers.serialize(
        object.supplyCurrent,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.supplyTotal != null) {
      yield r'supply_total';
      yield serializers.serialize(
        object.supplyTotal,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.supplyMax != null) {
      yield r'supply_max';
      yield serializers.serialize(
        object.supplyMax,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.chainAddresses != null) {
      yield r'chain_addresses';
      yield serializers.serialize(
        object.chainAddresses,
        specifiedType: const FullType.nullable(BuiltList, [FullType(V1ExchangeRatesChainNetworkAddress)]),
      );
    }
    if (object.dataStart != null) {
      yield r'data_start';
      yield serializers.serialize(
        object.dataStart,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dataEnd != null) {
      yield r'data_end';
      yield serializers.serialize(
        object.dataEnd,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1Asset object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AssetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'asset_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'type_is_crypto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.typeIsCrypto = valueDes;
          break;
        case r'data_quote_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.dataQuoteStart = valueDes;
          break;
        case r'data_quote_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.dataQuoteEnd = valueDes;
          break;
        case r'data_orderbook_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.dataOrderbookStart = valueDes;
          break;
        case r'data_orderbook_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.dataOrderbookEnd = valueDes;
          break;
        case r'data_trade_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.dataTradeStart = valueDes;
          break;
        case r'data_trade_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.dataTradeEnd = valueDes;
          break;
        case r'data_symbols_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dataSymbolsCount = valueDes;
          break;
        case r'volume_1hrs_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volume1hrsUsd = valueDes;
          break;
        case r'volume_1day_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volume1dayUsd = valueDes;
          break;
        case r'volume_1mth_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volume1mthUsd = valueDes;
          break;
        case r'price_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.priceUsd = valueDes;
          break;
        case r'id_icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.idIcon = valueDes;
          break;
        case r'supply_current':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.supplyCurrent = valueDes;
          break;
        case r'supply_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.supplyTotal = valueDes;
          break;
        case r'supply_max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.supplyMax = valueDes;
          break;
        case r'chain_addresses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(V1ExchangeRatesChainNetworkAddress)]),
          ) as BuiltList<V1ExchangeRatesChainNetworkAddress>?;
          if (valueDes == null) continue;
          result.chainAddresses.replace(valueDes);
          break;
        case r'data_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dataStart = valueDes;
          break;
        case r'data_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dataEnd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1Asset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AssetBuilder();
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


