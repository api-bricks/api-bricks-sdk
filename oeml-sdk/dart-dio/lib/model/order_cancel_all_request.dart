import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_cancel_all_request.g.dart';

abstract class OrderCancelAllRequest implements Built<OrderCancelAllRequest, OrderCancelAllRequestBuilder> {

    /// Identifier of the exchange from which active orders should be canceled.
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    // Boilerplate code needed to wire-up generated code
    OrderCancelAllRequest._();

    static void _initializeBuilder(OrderCancelAllRequestBuilder b) => b;

    factory OrderCancelAllRequest([updates(OrderCancelAllRequestBuilder b)]) = _$OrderCancelAllRequest;
    static Serializer<OrderCancelAllRequest> get serializer => _$orderCancelAllRequestSerializer;
}

