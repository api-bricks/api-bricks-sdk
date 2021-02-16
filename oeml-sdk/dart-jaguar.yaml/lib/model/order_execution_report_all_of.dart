import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/ord_status.dart';

import 'package:openapi/model/fills.dart';

part 'order_execution_report_all_of.jser.dart';

class OrderExecutionReportAllOf {
   /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
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
  

  OrderExecutionReportAllOf(
      

{
    
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
    return 'OrderExecutionReportAllOf[clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, avgPx=$avgPx, status=$status, statusHistory=$statusHistory, errorMessage=$errorMessage, fills=$fills, ]';
  }
}

@GenSerializer(nullableFields: true)
class OrderExecutionReportAllOfSerializer extends Serializer<OrderExecutionReportAllOf> with _$OrderExecutionReportAllOfSerializer {

}

