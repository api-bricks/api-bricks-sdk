import 'package:openapi/model/ord_side.dart';
import 'package:openapi/model/fills.dart';
import 'package:openapi/model/ord_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/time_in_force.dart';
import 'package:openapi/model/order_new_single_request.dart';
import 'package:openapi/model/ord_type.dart';
import 'package:openapi/model/order_execution_report_all_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_execution_report.g.dart';

abstract class OrderExecutionReport implements Built<OrderExecutionReport, OrderExecutionReportBuilder> {

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
    BuiltList<OrderExecutionReportExecInstEnum> get execInst;
    // enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };

    /// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
    @nullable
    @BuiltValueField(wireName: r'client_order_id_format_exchange')
    String get clientOrderIdFormatExchange;

    /// Unique identifier of the order assigned by the exchange or executing system.
    @nullable
    @BuiltValueField(wireName: r'exchange_order_id')
    String get exchangeOrderId;

    /// Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
    @nullable
    @BuiltValueField(wireName: r'amount_open')
    num get amountOpen;

    /// Total quantity filled.
    @nullable
    @BuiltValueField(wireName: r'amount_filled')
    num get amountFilled;

    /// Calculated average price of all fills on this order.
    @nullable
    @BuiltValueField(wireName: r'avg_px')
    num get avgPx;

    @nullable
    @BuiltValueField(wireName: r'status')
    OrdStatus get status;
    // enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };

    /// Timestamped history of order status changes.
    @nullable
    @BuiltValueField(wireName: r'status_history')
    BuiltList<BuiltList<String>> get statusHistory;

    /// Error message.
    @nullable
    @BuiltValueField(wireName: r'error_message')
    String get errorMessage;

    /// Relay fill information on working orders.
    @nullable
    @BuiltValueField(wireName: r'fills')
    BuiltList<Fills> get fills;

    // Boilerplate code needed to wire-up generated code
    OrderExecutionReport._();

    static void _initializeBuilder(OrderExecutionReportBuilder b) => b;

    factory OrderExecutionReport([updates(OrderExecutionReportBuilder b)]) = _$OrderExecutionReport;
    static Serializer<OrderExecutionReport> get serializer => _$orderExecutionReportSerializer;
}

class OrderExecutionReportExecInstEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'MAKER_OR_CANCEL')
  static const OrderExecutionReportExecInstEnum MAKER_OR_CANCEL = _$orderExecutionReportExecInstEnum_MAKER_OR_CANCEL;
  @BuiltValueEnumConst(wireName: r'AUCTION_ONLY')
  static const OrderExecutionReportExecInstEnum AUCTION_ONLY = _$orderExecutionReportExecInstEnum_AUCTION_ONLY;
  @BuiltValueEnumConst(wireName: r'INDICATION_OF_INTEREST')
  static const OrderExecutionReportExecInstEnum INDICATION_OF_INTEREST = _$orderExecutionReportExecInstEnum_INDICATION_OF_INTEREST;

  static Serializer<OrderExecutionReportExecInstEnum> get serializer => _$orderExecutionReportExecInstEnumSerializer;

  const OrderExecutionReportExecInstEnum._(String name): super(name);

  static BuiltSet<OrderExecutionReportExecInstEnum> get values => _$orderExecutionReportExecInstEnumValues;
  static OrderExecutionReportExecInstEnum valueOf(String name) => _$orderExecutionReportExecInstEnumValueOf(name);
}

