//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/fills.dart';
import 'package:openapi/src/model/ord_type.dart';
import 'package:openapi/src/model/ord_side.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/order_new_single_request.dart';
import 'package:openapi/src/model/order_execution_report_all_of.dart';
import 'package:openapi/src/model/time_in_force.dart';
import 'package:openapi/src/model/ord_status.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_execution_report.g.dart';

/// The order execution report object.
///
/// Properties:
/// * [exchangeId] - Exchange identifier used to identify the routing destination.
/// * [clientOrderId] - The unique identifier of the order assigned by the client.
/// * [symbolIdExchange] - Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
/// * [symbolIdCoinapi] - CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
/// * [amountOrder] - Order quantity.
/// * [price] - Order price.
/// * [side] 
/// * [orderType] 
/// * [timeInForce] 
/// * [expireTime] - Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
/// * [execInst] - Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
/// * [clientOrderIdFormatExchange] - The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
/// * [exchangeOrderId] - Unique identifier of the order assigned by the exchange or executing system.
/// * [amountOpen] - Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
/// * [amountFilled] - Total quantity filled.
/// * [avgPx] - Calculated average price of all fills on this order.
/// * [status] 
/// * [statusHistory] - Timestamped history of order status changes.
/// * [errorMessage] - Error message.
/// * [fills] - Relay fill information on working orders.
@BuiltValue()
abstract class OrderExecutionReport implements OrderExecutionReportAllOf, OrderNewSingleRequest, Built<OrderExecutionReport, OrderExecutionReportBuilder> {
  OrderExecutionReport._();

  factory OrderExecutionReport([void updates(OrderExecutionReportBuilder b)]) = _$OrderExecutionReport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderExecutionReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderExecutionReport> get serializer => _$OrderExecutionReportSerializer();
}

class _$OrderExecutionReportSerializer implements PrimitiveSerializer<OrderExecutionReport> {
  @override
  final Iterable<Type> types = const [OrderExecutionReport, _$OrderExecutionReport];

  @override
  final String wireName = r'OrderExecutionReport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderExecutionReport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'order_type';
    yield serializers.serialize(
      object.orderType,
      specifiedType: const FullType(OrdType),
    );
    yield r'side';
    yield serializers.serialize(
      object.side,
      specifiedType: const FullType(OrdSide),
    );
    if (object.symbolIdExchange != null) {
      yield r'symbol_id_exchange';
      yield serializers.serialize(
        object.symbolIdExchange,
        specifiedType: const FullType(String),
      );
    }
    if (object.symbolIdCoinapi != null) {
      yield r'symbol_id_coinapi';
      yield serializers.serialize(
        object.symbolIdCoinapi,
        specifiedType: const FullType(String),
      );
    }
    yield r'amount_order';
    yield serializers.serialize(
      object.amountOrder,
      specifiedType: const FullType(num),
    );
    if (object.execInst != null) {
      yield r'exec_inst';
      yield serializers.serialize(
        object.execInst,
        specifiedType: const FullType(BuiltList, [FullType(OrderExecutionReportExecInstEnum)]),
      );
    }
    yield r'client_order_id';
    yield serializers.serialize(
      object.clientOrderId,
      specifiedType: const FullType(String),
    );
    if (object.errorMessage != null) {
      yield r'error_message';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType(String),
      );
    }
    yield r'amount_filled';
    yield serializers.serialize(
      object.amountFilled,
      specifiedType: const FullType(num),
    );
    yield r'amount_open';
    yield serializers.serialize(
      object.amountOpen,
      specifiedType: const FullType(num),
    );
    yield r'exchange_id';
    yield serializers.serialize(
      object.exchangeId,
      specifiedType: const FullType(String),
    );
    if (object.statusHistory != null) {
      yield r'status_history';
      yield serializers.serialize(
        object.statusHistory,
        specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(String)])]),
      );
    }
    if (object.expireTime != null) {
      yield r'expire_time';
      yield serializers.serialize(
        object.expireTime,
        specifiedType: const FullType(Date),
      );
    }
    yield r'client_order_id_format_exchange';
    yield serializers.serialize(
      object.clientOrderIdFormatExchange,
      specifiedType: const FullType(String),
    );
    if (object.avgPx != null) {
      yield r'avg_px';
      yield serializers.serialize(
        object.avgPx,
        specifiedType: const FullType(num),
      );
    }
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(num),
    );
    yield r'time_in_force';
    yield serializers.serialize(
      object.timeInForce,
      specifiedType: const FullType(TimeInForce),
    );
    if (object.fills != null) {
      yield r'fills';
      yield serializers.serialize(
        object.fills,
        specifiedType: const FullType(BuiltList, [FullType(Fills)]),
      );
    }
    if (object.exchangeOrderId != null) {
      yield r'exchange_order_id';
      yield serializers.serialize(
        object.exchangeOrderId,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(OrdStatus),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderExecutionReport object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderExecutionReportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrdType),
          ) as OrdType;
          result.orderType = valueDes;
          break;
        case r'side':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrdSide),
          ) as OrdSide;
          result.side = valueDes;
          break;
        case r'symbol_id_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbolIdExchange = valueDes;
          break;
        case r'symbol_id_coinapi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbolIdCoinapi = valueDes;
          break;
        case r'amount_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amountOrder = valueDes;
          break;
        case r'exec_inst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OrderExecutionReportExecInstEnum)]),
          ) as BuiltList<OrderExecutionReportExecInstEnum>;
          result.execInst.replace(valueDes);
          break;
        case r'client_order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientOrderId = valueDes;
          break;
        case r'error_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        case r'amount_filled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amountFilled = valueDes;
          break;
        case r'amount_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amountOpen = valueDes;
          break;
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exchangeId = valueDes;
          break;
        case r'status_history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(String)])]),
          ) as BuiltList<BuiltList<String>>;
          result.statusHistory.replace(valueDes);
          break;
        case r'expire_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.expireTime = valueDes;
          break;
        case r'client_order_id_format_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientOrderIdFormatExchange = valueDes;
          break;
        case r'avg_px':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.avgPx = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.price = valueDes;
          break;
        case r'time_in_force':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TimeInForce),
          ) as TimeInForce;
          result.timeInForce = valueDes;
          break;
        case r'fills':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Fills)]),
          ) as BuiltList<Fills>;
          result.fills.replace(valueDes);
          break;
        case r'exchange_order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exchangeOrderId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrdStatus),
          ) as OrdStatus;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderExecutionReport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderExecutionReportBuilder();
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

