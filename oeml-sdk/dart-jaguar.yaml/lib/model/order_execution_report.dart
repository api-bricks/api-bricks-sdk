import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/time_in_force.dart';

import 'package:openapi/model/ord_status.dart';

import 'package:openapi/model/ord_type.dart';

import 'package:openapi/model/ord_side.dart';

import 'package:openapi/model/order_execution_report_all_of.dart';

import 'package:openapi/model/order_new_single_request.dart';

import 'package:openapi/model/fills.dart';

part 'order_execution_report.jser.dart';

class OrderExecutionReport {
   /* Exchange identifier used to identify the routing destination. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* The unique identifier of the order assigned by the client. */
  @Alias('client_order_id', isNullable: false,  )
  final String clientOrderId;
   /* Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. */
  @Alias('symbol_id_exchange', isNullable: false,  )
  final String symbolIdExchange;
   /* CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. */
  @Alias('symbol_id_coinapi', isNullable: false,  )
  final String symbolIdCoinapi;
   /* Order quantity. */
  @Alias('amount_order', isNullable: false,  )
  final num amountOrder;
   /* Order price. */
  @Alias('price', isNullable: false,  )
  final num price;
  
  @Alias('side', isNullable: false,
          
             processor:  const OrdSideFieldProcessor(),
          
  )
  final OrdSide side;
  //enum sideEnum {  BUY,  SELL,  };
  @Alias('order_type', isNullable: false,
          
             processor:  const OrdTypeFieldProcessor(),
          
  )
  final OrdType orderType;
  //enum orderTypeEnum {  LIMIT,  };
  @Alias('time_in_force', isNullable: false,
          
             processor:  const TimeInForceFieldProcessor(),
          
  )
  final TimeInForce timeInForce;
  //enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  }; /* Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. */
  @Alias('expire_time', isNullable: false,  )
  final DateTime expireTime;
   /* Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>  */
  @Alias('exec_inst', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> execInst;
  //enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  }; /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
  @Alias('client_order_id_format_exchange', isNullable: false,  )
  final String clientOrderIdFormatExchange;
   /* Unique identifier of the order assigned by the exchange or executing system. */
  @Alias('exchange_order_id', isNullable: false,  )
  final String exchangeOrderId;
   /* Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled` */
  @Alias('amount_open', isNullable: false,  )
  final num amountOpen;
   /* Total quantity filled. */
  @Alias('amount_filled', isNullable: false,  )
  final num amountFilled;
   /* Calculated average price of all fills on this order. */
  @Alias('avg_px', isNullable: false,  )
  final num avgPx;
  
  @Alias('status', isNullable: false,
          
             processor:  const OrdStatusFieldProcessor(),
          
  )
  final OrdStatus status;
  //enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  }; /* Timestamped history of order status changes. */
  @Alias('status_history', isNullable: false,  )
  final List<List<String>> statusHistory;
   /* Error message. */
  @Alias('error_message', isNullable: false,  )
  final String errorMessage;
   /* Relay fill information on working orders. */
  @Alias('fills', isNullable: false,  )
  final List<Fills> fills;
  

  OrderExecutionReport(
      

{
    
     this.exchangeId = null,  
     this.clientOrderId = null,   this.symbolIdExchange = null,  
     this.symbolIdCoinapi = null,  
    
     this.amountOrder = null,  
     this.price = null,  
     this.side = null,  
     this.orderType = null,  
     this.timeInForce = null,   this.expireTime = null,  
     this.execInst = const [],  
    
     this.clientOrderIdFormatExchange = null,   this.exchangeOrderId = null,  
    
     this.amountOpen = null,  
     this.amountFilled = null,   this.avgPx = null,  
    
     this.status = null,   this.statusHistory = const [],  
     this.errorMessage = null,  
     this.fills = const [] 
    
    }
  );

  @override
  String toString() {
    return 'OrderExecutionReport[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, avgPx=$avgPx, status=$status, statusHistory=$statusHistory, errorMessage=$errorMessage, fills=$fills, ]';
  }
}

@GenSerializer(nullableFields: true)
class OrderExecutionReportSerializer extends Serializer<OrderExecutionReport> with _$OrderExecutionReportSerializer {

}

