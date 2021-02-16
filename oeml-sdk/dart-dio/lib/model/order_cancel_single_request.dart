import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_cancel_single_request.g.dart';

abstract class OrderCancelSingleRequest implements Built<OrderCancelSingleRequest, OrderCancelSingleRequestBuilder> {

    /// Exchange identifier used to identify the routing destination.
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
    @nullable
    @BuiltValueField(wireName: r'exchange_order_id')
    String get exchangeOrderId;

    /// The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
    @nullable
    @BuiltValueField(wireName: r'client_order_id')
    String get clientOrderId;

    // Boilerplate code needed to wire-up generated code
    OrderCancelSingleRequest._();

    static void _initializeBuilder(OrderCancelSingleRequestBuilder b) => b;

    factory OrderCancelSingleRequest([updates(OrderCancelSingleRequestBuilder b)]) = _$OrderCancelSingleRequest;
    static Serializer<OrderCancelSingleRequest> get serializer => _$orderCancelSingleRequestSerializer;
}

