//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/market_data_metadata_icon.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'market_data_metadata_exchange.g.dart';

/// Represents an exchange.
///
/// Properties:
/// * [exchangeId] - Gets or sets the exchange ID.
/// * [website] - Gets or sets the website URL of the exchange.
/// * [name] - Gets or sets the name of the exchange.
/// * [dataStart] 
/// * [dataEnd] 
/// * [dataQuoteStart] - Gets or sets the start date of quote data.
/// * [dataQuoteEnd] - Gets or sets the end date of quote data.
/// * [dataOrderbookStart] - Gets or sets the start date of order book data.
/// * [dataOrderbookEnd] - Gets or sets the end date of order book data.
/// * [dataTradeStart] - Gets or sets the start date of trade data.
/// * [dataTradeEnd] - Gets or sets the end date of trade data.
/// * [dataTradeCount] - Gets or sets the number of trades.
/// * [dataSymbolsCount] - Gets or sets the number of symbols.
/// * [volume1hrsUsd] - Gets or sets the USD volume in the last 1 hour.
/// * [volume1dayUsd] - Gets or sets the USD volume in the last 1 day.
/// * [volume1mthUsd] - Gets or sets the USD volume in the last 1 month.
/// * [metricId] - Gets or sets the list of metric IDs.
/// * [icons] - Gets or sets the list of icons for the exchange.
/// * [rank] - Rank of the exchange.
/// * [integrationStatus] - Status of the integration
@BuiltValue()
abstract class MarketDataMetadataExchange implements Built<MarketDataMetadataExchange, MarketDataMetadataExchangeBuilder> {
  /// Gets or sets the exchange ID.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  /// Gets or sets the website URL of the exchange.
  @BuiltValueField(wireName: r'website')
  String? get website;

  /// Gets or sets the name of the exchange.
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'data_start')
  String? get dataStart;

  @BuiltValueField(wireName: r'data_end')
  String? get dataEnd;

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

  /// Gets or sets the number of trades.
  @BuiltValueField(wireName: r'data_trade_count')
  int? get dataTradeCount;

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

  /// Gets or sets the list of metric IDs.
  @BuiltValueField(wireName: r'metric_id')
  BuiltList<String>? get metricId;

  /// Gets or sets the list of icons for the exchange.
  @BuiltValueField(wireName: r'icons')
  BuiltList<MarketDataMetadataIcon>? get icons;

  /// Rank of the exchange.
  @BuiltValueField(wireName: r'rank')
  double? get rank;

  /// Status of the integration
  @BuiltValueField(wireName: r'integration_status')
  String? get integrationStatus;

  MarketDataMetadataExchange._();

  factory MarketDataMetadataExchange([void updates(MarketDataMetadataExchangeBuilder b)]) = _$MarketDataMetadataExchange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MarketDataMetadataExchangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MarketDataMetadataExchange> get serializer => _$MarketDataMetadataExchangeSerializer();
}

class _$MarketDataMetadataExchangeSerializer implements PrimitiveSerializer<MarketDataMetadataExchange> {
  @override
  final Iterable<Type> types = const [MarketDataMetadataExchange, _$MarketDataMetadataExchange];

  @override
  final String wireName = r'MarketDataMetadataExchange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MarketDataMetadataExchange object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.website != null) {
      yield r'website';
      yield serializers.serialize(
        object.website,
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
    if (object.dataTradeCount != null) {
      yield r'data_trade_count';
      yield serializers.serialize(
        object.dataTradeCount,
        specifiedType: const FullType.nullable(int),
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
    if (object.metricId != null) {
      yield r'metric_id';
      yield serializers.serialize(
        object.metricId,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.icons != null) {
      yield r'icons';
      yield serializers.serialize(
        object.icons,
        specifiedType: const FullType.nullable(BuiltList, [FullType(MarketDataMetadataIcon)]),
      );
    }
    if (object.rank != null) {
      yield r'rank';
      yield serializers.serialize(
        object.rank,
        specifiedType: const FullType(double),
      );
    }
    if (object.integrationStatus != null) {
      yield r'integration_status';
      yield serializers.serialize(
        object.integrationStatus,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MarketDataMetadataExchange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MarketDataMetadataExchangeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exchangeId = valueDes;
          break;
        case r'website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.website = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
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
        case r'data_trade_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dataTradeCount = valueDes;
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
        case r'metric_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.metricId.replace(valueDes);
          break;
        case r'icons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(MarketDataMetadataIcon)]),
          ) as BuiltList<MarketDataMetadataIcon>?;
          if (valueDes == null) continue;
          result.icons.replace(valueDes);
          break;
        case r'rank':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.rank = valueDes;
          break;
        case r'integration_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.integrationStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MarketDataMetadataExchange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MarketDataMetadataExchangeBuilder();
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


