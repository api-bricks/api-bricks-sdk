import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/reject_reason.dart';

part 'message_reject.jser.dart';

class MessageReject {
   /* Message type, constant. */
  @Alias('type', isNullable: false,  )
  final String type;
  
  @Alias('reject_reason', isNullable: false,
          
             processor:  const RejectReasonFieldProcessor(),
          
  )
  final RejectReason rejectReason;
  //enum rejectReasonEnum {  OTHER,  EXCHANGE_UNREACHABLE,  EXCHANGE_RESPONSE_TIMEOUT,  ORDER_ID_NOT_FOUND,  INVALID_TYPE,  METHOD_NOT_SUPPORTED,  JSON_ERROR,  }; /* If the message related to exchange, then the identifier of the exchange will be provided. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Message text. */
  @Alias('message', isNullable: false,  )
  final String message;
   /* Value of rejected request, if available. */
  @Alias('rejected_message', isNullable: false,  )
  final String rejectedMessage;
  

  MessageReject(
      

{
     this.type = null,  
     this.rejectReason = null,  
     this.exchangeId = null,  
     this.message = null,  
     this.rejectedMessage = null 
    
    }
  );

  @override
  String toString() {
    return 'MessageReject[type=$type, rejectReason=$rejectReason, exchangeId=$exchangeId, message=$message, rejectedMessage=$rejectedMessage, ]';
  }
}

@GenSerializer(nullableFields: true)
class MessageRejectSerializer extends Serializer<MessageReject> with _$MessageRejectSerializer {

}

