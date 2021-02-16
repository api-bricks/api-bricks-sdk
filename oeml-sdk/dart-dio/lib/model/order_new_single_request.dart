import 'package:openapi/model/ord_side.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/time_in_force.dart';
import 'package:openapi/model/ord_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_new_single_request.g.dart';

abstract class OrderNewSingleRequest implements Built<OrderNewSingleRequest, OrderNewSingleRequestBuilder> {

    /// Exchange identifier used to identify the routing destination.
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// The unique identifier of the order assigned by the client.
    @nullable
    @BuiltValueField(wireName: r'client_order_id')
    String get clientOrderId;

    /// Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    @nullable
    @BuiltValueField(wireName: r'symbol_id_exchange')
    String get symbolIdExchange;

    /// CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    @nullable
    @BuiltValueField(wireName: r'symbol_id_coinapi')
    String get symbolIdCoinapi;

    /// Order quantity.
    @nullable
    @BuiltValueField(wireName: r'amount_order')
    num get amountOrder;

    /// Order price.
    @nullable
    @BuiltValueField(wireName: r'price')
    num get price;

    @nullable
    @BuiltValueField(wireName: r'side')
    OrdSide get side;
    // enum sideEnum {  BUY,  SELL,  };

    @nullable
    @BuiltValueField(wireName: r'order_type')
    OrdType get orderType;
    // enum orderTypeEnum {  LIMIT,  };

    @nullable
    @BuiltValueField(wireName: r'time_in_force')
    TimeInForce get timeInForce;
    // enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  };

    /// Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
    @nullable
    @BuiltValueField(wireName: r'expire_time')
    DateTime get expireTime;

    /// Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
    @nullable
    @BuiltValueField(wireName: r'exec_inst')
    BuiltList<OrderNewSingleRequestExecInstEnum> get execInst;
    // enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };

    // Boilerplate code needed to wire-up generated code
    OrderNewSingleRequest._();

    static void _initializeBuilder(OrderNewSingleRequestBuilder b) => b;

    factory OrderNewSingleRequest([updates(OrderNewSingleRequestBuilder b)]) = _$OrderNewSingleRequest;
    static Serializer<OrderNewSingleRequest> get serializer => _$orderNewSingleRequestSerializer;
}

class OrderNewSingleRequestExecInstEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'MAKER_OR_CANCEL')
  static const OrderNewSingleRequestExecInstEnum MAKER_OR_CANCEL = _$orderNewSingleRequestExecInstEnum_MAKER_OR_CANCEL;
  @BuiltValueEnumConst(wireName: r'AUCTION_ONLY')
  static const OrderNewSingleRequestExecInstEnum AUCTION_ONLY = _$orderNewSingleRequestExecInstEnum_AUCTION_ONLY;
  @BuiltValueEnumConst(wireName: r'INDICATION_OF_INTEREST')
  static const OrderNewSingleRequestExecInstEnum INDICATION_OF_INTEREST = _$orderNewSingleRequestExecInstEnum_INDICATION_OF_INTEREST;

  static Serializer<OrderNewSingleRequestExecInstEnum> get serializer => _$orderNewSingleRequestExecInstEnumSerializer;

  const OrderNewSingleRequestExecInstEnum._(String name): super(name);

  static BuiltSet<OrderNewSingleRequestExecInstEnum> get values => _$orderNewSingleRequestExecInstEnumValues;
  static OrderNewSingleRequestExecInstEnum valueOf(String name) => _$orderNewSingleRequestExecInstEnumValueOf(name);
}

