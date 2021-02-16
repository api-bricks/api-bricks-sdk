import 'package:openapi/model/ord_side.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'position_data.g.dart';

abstract class PositionData implements Built<PositionData, PositionDataBuilder> {

    /// Exchange symbol.
    @nullable
    @BuiltValueField(wireName: r'symbol_id_exchange')
    String get symbolIdExchange;

    /// CoinAPI symbol.
    @nullable
    @BuiltValueField(wireName: r'symbol_id_coinapi')
    String get symbolIdCoinapi;

    /// Calculated average price of all fills on this position.
    @nullable
    @BuiltValueField(wireName: r'avg_entry_price')
    num get avgEntryPrice;

    /// The current position quantity.
    @nullable
    @BuiltValueField(wireName: r'quantity')
    num get quantity;

    @nullable
    @BuiltValueField(wireName: r'side')
    OrdSide get side;
    // enum sideEnum {  BUY,  SELL,  };

    /// Unrealised profit or loss (PNL) of this position.
    @nullable
    @BuiltValueField(wireName: r'unrealized_pnl')
    num get unrealizedPnl;

    /// Leverage for this position reported by the exchange.
    @nullable
    @BuiltValueField(wireName: r'leverage')
    num get leverage;

    /// Is cross margin mode enable for this position?
    @nullable
    @BuiltValueField(wireName: r'cross_margin')
    bool get crossMargin;

    /// Liquidation price. If mark price will reach this value, the position will be liquidated.
    @nullable
    @BuiltValueField(wireName: r'liquidation_price')
    num get liquidationPrice;

    @nullable
    @BuiltValueField(wireName: r'raw_data')
    JsonObject get rawData;

    // Boilerplate code needed to wire-up generated code
    PositionData._();

    static void _initializeBuilder(PositionDataBuilder b) => b;

    factory PositionData([updates(PositionDataBuilder b)]) = _$PositionData;
    static Serializer<PositionData> get serializer => _$positionDataSerializer;
}

