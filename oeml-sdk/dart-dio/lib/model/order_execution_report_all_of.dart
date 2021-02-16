import 'package:openapi/model/fills.dart';
import 'package:openapi/model/ord_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_execution_report_all_of.g.dart';

abstract class OrderExecutionReportAllOf implements Built<OrderExecutionReportAllOf, OrderExecutionReportAllOfBuilder> {

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
    OrderExecutionReportAllOf._();

    static void _initializeBuilder(OrderExecutionReportAllOfBuilder b) => b;

    factory OrderExecutionReportAllOf([updates(OrderExecutionReportAllOfBuilder b)]) = _$OrderExecutionReportAllOf;
    static Serializer<OrderExecutionReportAllOf> get serializer => _$orderExecutionReportAllOfSerializer;
}

