//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'market_data_metadata_symbol.g.dart';

/// Represents a symbol data model.
///
/// Properties:
/// * [symbolId] - The symbol identifier.
/// * [exchangeId] - The exchange identifier.
/// * [symbolType] - The symbol type.
/// * [assetIdBase] - The base asset identifier.
/// * [assetIdQuote] - The quote asset identifier.
/// * [assetIdUnit] - The unit asset identifier.
/// * [futureContractUnit] - The contract unit for futures.
/// * [futureContractUnitAsset] - The asset used as the unit for futures contract.
/// * [futureDeliveryTime] - The future delivery time for futures contract.
/// * [optionTypeIsCall] - Indicates whether the option type is a call.
/// * [optionStrikePrice] - The strike price for options.
/// * [optionContractUnit] - The contract unit for options.
/// * [optionExerciseStyle] - The exercise style for options. Possible values: AMERICAN, ASIAN, BARRIER, BERMUDAN, BINARY, EUROPEAN, EXOTIC.
/// * [optionExpirationTime] - The expiration time for options.
/// * [contractDeliveryTime] - The delivery time for contracts.
/// * [contractUnit] - The contract unit for contracts.
/// * [contractUnitAsset] - The asset used as the unit for contracts.
/// * [contractId] - The contract identifier.
/// * [contractDisplayName] - The display name of the contract.
/// * [contractDisplayDescription] - The display description of the contract.
/// * [dataStart] 
/// * [dataEnd] 
/// * [dataQuoteStart] - The start date of quote data.
/// * [dataQuoteEnd] - The end date of quote data.
/// * [dataOrderbookStart] - The start date of order book data.
/// * [dataOrderbookEnd] - The end date of order book data.
/// * [dataTradeStart] - The start date of trade data.
/// * [dataTradeEnd] - The end date of trade data.
/// * [indexId] - The index identifier.
/// * [indexDisplayName] - The display name of the index.
/// * [indexDisplayDescription] - The display description of the index.
/// * [volume1hrs] - The volume in the last 1 hour.
/// * [volume1hrsUsd] - The volume in USD in the last 1 hour.
/// * [volume1day] - The volume in the last 1 day.
/// * [volume1dayUsd] - The volume in USD in the last 1 day.
/// * [volume1mth] - The volume in the last 1 month.
/// * [volume1mthUsd] - The volume in USD in the last 1 month.
/// * [price] - The price.
/// * [symbolIdExchange] - The symbol identifier in the exchange.
/// * [assetIdBaseExchange] - The base asset identifier in the exchange.
/// * [assetIdQuoteExchange] - The quote asset identifier in the exchange.
/// * [pricePrecision] - The price precision.
/// * [sizePrecision] - The size precision.
/// * [rawKvp] - Key Value Pair store with raw data from the data source.
/// * [futureIsInverse] - Indicates whether the futures contract is inverse (coin-margined).
/// * [futureIsQuanto] - Indicates whether the futures contract is quanto.
/// * [volumeToUsd] - Volume unit in USD.
/// * [optionBarrierUpPrice] - The up barrier price for barrier options.
/// * [optionBarrierUpType] - The up barrier type for barrier options. Possible values: EXPIRATION, IN, OUT.
/// * [optionBarrierDownPrice] - The down barrier price for barrier options.
/// * [optionBarrierDownType] - The down barrier type for barrier options. Possible values: EXPIRATION, IN, OUT.
/// * [symbolIdInt] - The symbol identifier in integer immutable format, used to correlate data across different APIs.
@BuiltValue()
abstract class MarketDataMetadataSymbol implements Built<MarketDataMetadataSymbol, MarketDataMetadataSymbolBuilder> {
  /// The symbol identifier.
  @BuiltValueField(wireName: r'symbol_id')
  String? get symbolId;

  /// The exchange identifier.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  /// The symbol type.
  @BuiltValueField(wireName: r'symbol_type')
  String? get symbolType;

  /// The base asset identifier.
  @BuiltValueField(wireName: r'asset_id_base')
  String? get assetIdBase;

  /// The quote asset identifier.
  @BuiltValueField(wireName: r'asset_id_quote')
  String? get assetIdQuote;

  /// The unit asset identifier.
  @BuiltValueField(wireName: r'asset_id_unit')
  String? get assetIdUnit;

  /// The contract unit for futures.
  @BuiltValueField(wireName: r'future_contract_unit')
  double? get futureContractUnit;

  /// The asset used as the unit for futures contract.
  @BuiltValueField(wireName: r'future_contract_unit_asset')
  String? get futureContractUnitAsset;

  /// The future delivery time for futures contract.
  @BuiltValueField(wireName: r'future_delivery_time')
  DateTime? get futureDeliveryTime;

  /// Indicates whether the option type is a call.
  @BuiltValueField(wireName: r'option_type_is_call')
  bool? get optionTypeIsCall;

  /// The strike price for options.
  @BuiltValueField(wireName: r'option_strike_price')
  double? get optionStrikePrice;

  /// The contract unit for options.
  @BuiltValueField(wireName: r'option_contract_unit')
  double? get optionContractUnit;

  /// The exercise style for options. Possible values: AMERICAN, ASIAN, BARRIER, BERMUDAN, BINARY, EUROPEAN, EXOTIC.
  @BuiltValueField(wireName: r'option_exercise_style')
  String? get optionExerciseStyle;

  /// The expiration time for options.
  @BuiltValueField(wireName: r'option_expiration_time')
  DateTime? get optionExpirationTime;

  /// The delivery time for contracts.
  @BuiltValueField(wireName: r'contract_delivery_time')
  DateTime? get contractDeliveryTime;

  /// The contract unit for contracts.
  @BuiltValueField(wireName: r'contract_unit')
  double? get contractUnit;

  /// The asset used as the unit for contracts.
  @BuiltValueField(wireName: r'contract_unit_asset')
  String? get contractUnitAsset;

  /// The contract identifier.
  @BuiltValueField(wireName: r'contract_id')
  String? get contractId;

  /// The display name of the contract.
  @BuiltValueField(wireName: r'contract_display_name')
  String? get contractDisplayName;

  /// The display description of the contract.
  @BuiltValueField(wireName: r'contract_display_description')
  String? get contractDisplayDescription;

  @BuiltValueField(wireName: r'data_start')
  String? get dataStart;

  @BuiltValueField(wireName: r'data_end')
  String? get dataEnd;

  /// The start date of quote data.
  @BuiltValueField(wireName: r'data_quote_start')
  DateTime? get dataQuoteStart;

  /// The end date of quote data.
  @BuiltValueField(wireName: r'data_quote_end')
  DateTime? get dataQuoteEnd;

  /// The start date of order book data.
  @BuiltValueField(wireName: r'data_orderbook_start')
  DateTime? get dataOrderbookStart;

  /// The end date of order book data.
  @BuiltValueField(wireName: r'data_orderbook_end')
  DateTime? get dataOrderbookEnd;

  /// The start date of trade data.
  @BuiltValueField(wireName: r'data_trade_start')
  DateTime? get dataTradeStart;

  /// The end date of trade data.
  @BuiltValueField(wireName: r'data_trade_end')
  DateTime? get dataTradeEnd;

  /// The index identifier.
  @BuiltValueField(wireName: r'index_id')
  String? get indexId;

  /// The display name of the index.
  @BuiltValueField(wireName: r'index_display_name')
  String? get indexDisplayName;

  /// The display description of the index.
  @BuiltValueField(wireName: r'index_display_description')
  String? get indexDisplayDescription;

  /// The volume in the last 1 hour.
  @BuiltValueField(wireName: r'volume_1hrs')
  double? get volume1hrs;

  /// The volume in USD in the last 1 hour.
  @BuiltValueField(wireName: r'volume_1hrs_usd')
  double? get volume1hrsUsd;

  /// The volume in the last 1 day.
  @BuiltValueField(wireName: r'volume_1day')
  double? get volume1day;

  /// The volume in USD in the last 1 day.
  @BuiltValueField(wireName: r'volume_1day_usd')
  double? get volume1dayUsd;

  /// The volume in the last 1 month.
  @BuiltValueField(wireName: r'volume_1mth')
  double? get volume1mth;

  /// The volume in USD in the last 1 month.
  @BuiltValueField(wireName: r'volume_1mth_usd')
  double? get volume1mthUsd;

  /// The price.
  @BuiltValueField(wireName: r'price')
  double? get price;

  /// The symbol identifier in the exchange.
  @BuiltValueField(wireName: r'symbol_id_exchange')
  String? get symbolIdExchange;

  /// The base asset identifier in the exchange.
  @BuiltValueField(wireName: r'asset_id_base_exchange')
  String? get assetIdBaseExchange;

  /// The quote asset identifier in the exchange.
  @BuiltValueField(wireName: r'asset_id_quote_exchange')
  String? get assetIdQuoteExchange;

  /// The price precision.
  @BuiltValueField(wireName: r'price_precision')
  double? get pricePrecision;

  /// The size precision.
  @BuiltValueField(wireName: r'size_precision')
  double? get sizePrecision;

  /// Key Value Pair store with raw data from the data source.
  @BuiltValueField(wireName: r'raw_kvp')
  BuiltMap<String, String?>? get rawKvp;

  /// Indicates whether the futures contract is inverse (coin-margined).
  @BuiltValueField(wireName: r'future_is_inverse')
  bool? get futureIsInverse;

  /// Indicates whether the futures contract is quanto.
  @BuiltValueField(wireName: r'future_is_quanto')
  bool? get futureIsQuanto;

  /// Volume unit in USD.
  @BuiltValueField(wireName: r'volume_to_usd')
  double? get volumeToUsd;

  /// The up barrier price for barrier options.
  @BuiltValueField(wireName: r'option_barrier_up_price')
  double? get optionBarrierUpPrice;

  /// The up barrier type for barrier options. Possible values: EXPIRATION, IN, OUT.
  @BuiltValueField(wireName: r'option_barrier_up_type')
  String? get optionBarrierUpType;

  /// The down barrier price for barrier options.
  @BuiltValueField(wireName: r'option_barrier_down_price')
  double? get optionBarrierDownPrice;

  /// The down barrier type for barrier options. Possible values: EXPIRATION, IN, OUT.
  @BuiltValueField(wireName: r'option_barrier_down_type')
  String? get optionBarrierDownType;

  /// The symbol identifier in integer immutable format, used to correlate data across different APIs.
  @BuiltValueField(wireName: r'symbol_id_int')
  int? get symbolIdInt;

  MarketDataMetadataSymbol._();

  factory MarketDataMetadataSymbol([void updates(MarketDataMetadataSymbolBuilder b)]) = _$MarketDataMetadataSymbol;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MarketDataMetadataSymbolBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MarketDataMetadataSymbol> get serializer => _$MarketDataMetadataSymbolSerializer();
}

class _$MarketDataMetadataSymbolSerializer implements PrimitiveSerializer<MarketDataMetadataSymbol> {
  @override
  final Iterable<Type> types = const [MarketDataMetadataSymbol, _$MarketDataMetadataSymbol];

  @override
  final String wireName = r'MarketDataMetadataSymbol';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MarketDataMetadataSymbol object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbolId != null) {
      yield r'symbol_id';
      yield serializers.serialize(
        object.symbolId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.symbolType != null) {
      yield r'symbol_type';
      yield serializers.serialize(
        object.symbolType,
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
    if (object.assetIdUnit != null) {
      yield r'asset_id_unit';
      yield serializers.serialize(
        object.assetIdUnit,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.futureContractUnit != null) {
      yield r'future_contract_unit';
      yield serializers.serialize(
        object.futureContractUnit,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.futureContractUnitAsset != null) {
      yield r'future_contract_unit_asset';
      yield serializers.serialize(
        object.futureContractUnitAsset,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.futureDeliveryTime != null) {
      yield r'future_delivery_time';
      yield serializers.serialize(
        object.futureDeliveryTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.optionTypeIsCall != null) {
      yield r'option_type_is_call';
      yield serializers.serialize(
        object.optionTypeIsCall,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.optionStrikePrice != null) {
      yield r'option_strike_price';
      yield serializers.serialize(
        object.optionStrikePrice,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.optionContractUnit != null) {
      yield r'option_contract_unit';
      yield serializers.serialize(
        object.optionContractUnit,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.optionExerciseStyle != null) {
      yield r'option_exercise_style';
      yield serializers.serialize(
        object.optionExerciseStyle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.optionExpirationTime != null) {
      yield r'option_expiration_time';
      yield serializers.serialize(
        object.optionExpirationTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.contractDeliveryTime != null) {
      yield r'contract_delivery_time';
      yield serializers.serialize(
        object.contractDeliveryTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.contractUnit != null) {
      yield r'contract_unit';
      yield serializers.serialize(
        object.contractUnit,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.contractUnitAsset != null) {
      yield r'contract_unit_asset';
      yield serializers.serialize(
        object.contractUnitAsset,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contractId != null) {
      yield r'contract_id';
      yield serializers.serialize(
        object.contractId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contractDisplayName != null) {
      yield r'contract_display_name';
      yield serializers.serialize(
        object.contractDisplayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contractDisplayDescription != null) {
      yield r'contract_display_description';
      yield serializers.serialize(
        object.contractDisplayDescription,
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
    if (object.indexId != null) {
      yield r'index_id';
      yield serializers.serialize(
        object.indexId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.indexDisplayName != null) {
      yield r'index_display_name';
      yield serializers.serialize(
        object.indexDisplayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.indexDisplayDescription != null) {
      yield r'index_display_description';
      yield serializers.serialize(
        object.indexDisplayDescription,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volume1hrs != null) {
      yield r'volume_1hrs';
      yield serializers.serialize(
        object.volume1hrs,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.volume1hrsUsd != null) {
      yield r'volume_1hrs_usd';
      yield serializers.serialize(
        object.volume1hrsUsd,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.volume1day != null) {
      yield r'volume_1day';
      yield serializers.serialize(
        object.volume1day,
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
    if (object.volume1mth != null) {
      yield r'volume_1mth';
      yield serializers.serialize(
        object.volume1mth,
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
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.symbolIdExchange != null) {
      yield r'symbol_id_exchange';
      yield serializers.serialize(
        object.symbolIdExchange,
        specifiedType: const FullType.nullable(String),
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
    if (object.rawKvp != null) {
      yield r'raw_kvp';
      yield serializers.serialize(
        object.rawKvp,
        specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(String)]),
      );
    }
    if (object.futureIsInverse != null) {
      yield r'future_is_inverse';
      yield serializers.serialize(
        object.futureIsInverse,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.futureIsQuanto != null) {
      yield r'future_is_quanto';
      yield serializers.serialize(
        object.futureIsQuanto,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.volumeToUsd != null) {
      yield r'volume_to_usd';
      yield serializers.serialize(
        object.volumeToUsd,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.optionBarrierUpPrice != null) {
      yield r'option_barrier_up_price';
      yield serializers.serialize(
        object.optionBarrierUpPrice,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.optionBarrierUpType != null) {
      yield r'option_barrier_up_type';
      yield serializers.serialize(
        object.optionBarrierUpType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.optionBarrierDownPrice != null) {
      yield r'option_barrier_down_price';
      yield serializers.serialize(
        object.optionBarrierDownPrice,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.optionBarrierDownType != null) {
      yield r'option_barrier_down_type';
      yield serializers.serialize(
        object.optionBarrierDownType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.symbolIdInt != null) {
      yield r'symbol_id_int';
      yield serializers.serialize(
        object.symbolIdInt,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MarketDataMetadataSymbol object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MarketDataMetadataSymbolBuilder result,
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
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exchangeId = valueDes;
          break;
        case r'symbol_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolType = valueDes;
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
        case r'asset_id_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetIdUnit = valueDes;
          break;
        case r'future_contract_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.futureContractUnit = valueDes;
          break;
        case r'future_contract_unit_asset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.futureContractUnitAsset = valueDes;
          break;
        case r'future_delivery_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.futureDeliveryTime = valueDes;
          break;
        case r'option_type_is_call':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.optionTypeIsCall = valueDes;
          break;
        case r'option_strike_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.optionStrikePrice = valueDes;
          break;
        case r'option_contract_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.optionContractUnit = valueDes;
          break;
        case r'option_exercise_style':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.optionExerciseStyle = valueDes;
          break;
        case r'option_expiration_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.optionExpirationTime = valueDes;
          break;
        case r'contract_delivery_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.contractDeliveryTime = valueDes;
          break;
        case r'contract_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.contractUnit = valueDes;
          break;
        case r'contract_unit_asset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contractUnitAsset = valueDes;
          break;
        case r'contract_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contractId = valueDes;
          break;
        case r'contract_display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contractDisplayName = valueDes;
          break;
        case r'contract_display_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contractDisplayDescription = valueDes;
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
        case r'index_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.indexId = valueDes;
          break;
        case r'index_display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.indexDisplayName = valueDes;
          break;
        case r'index_display_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.indexDisplayDescription = valueDes;
          break;
        case r'volume_1hrs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volume1hrs = valueDes;
          break;
        case r'volume_1hrs_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volume1hrsUsd = valueDes;
          break;
        case r'volume_1day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volume1day = valueDes;
          break;
        case r'volume_1day_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volume1dayUsd = valueDes;
          break;
        case r'volume_1mth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volume1mth = valueDes;
          break;
        case r'volume_1mth_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volume1mthUsd = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'symbol_id_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolIdExchange = valueDes;
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
        case r'raw_kvp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(String)]),
          ) as BuiltMap<String, String?>?;
          if (valueDes == null) continue;
          result.rawKvp.replace(valueDes);
          break;
        case r'future_is_inverse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.futureIsInverse = valueDes;
          break;
        case r'future_is_quanto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.futureIsQuanto = valueDes;
          break;
        case r'volume_to_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.volumeToUsd = valueDes;
          break;
        case r'option_barrier_up_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.optionBarrierUpPrice = valueDes;
          break;
        case r'option_barrier_up_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.optionBarrierUpType = valueDes;
          break;
        case r'option_barrier_down_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.optionBarrierDownPrice = valueDes;
          break;
        case r'option_barrier_down_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.optionBarrierDownType = valueDes;
          break;
        case r'symbol_id_int':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.symbolIdInt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MarketDataMetadataSymbol deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MarketDataMetadataSymbolBuilder();
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


