//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/reject_reason.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_reject.g.dart';

abstract class MessageReject implements Built<MessageReject, MessageRejectBuilder> {

    /// Message type, constant.
    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'reject_reason')
    RejectReason get rejectReason;
    // enum rejectReasonEnum {  OTHER,  EXCHANGE_UNREACHABLE,  EXCHANGE_RESPONSE_TIMEOUT,  ORDER_ID_NOT_FOUND,  INVALID_TYPE,  METHOD_NOT_SUPPORTED,  JSON_ERROR,  };

    /// If the message related to exchange, then the identifier of the exchange will be provided.
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// Message text.
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    /// Value of rejected request, if available.
    @nullable
    @BuiltValueField(wireName: r'rejected_message')
    String get rejectedMessage;

    MessageReject._();

    static void _initializeBuilder(MessageRejectBuilder b) => b;

    factory MessageReject([void updates(MessageRejectBuilder b)]) = _$MessageReject;

    @BuiltValueSerializer(custom: true)
    static Serializer<MessageReject> get serializer => _$MessageRejectSerializer();
}

class _$MessageRejectSerializer implements StructuredSerializer<MessageReject> {

    @override
    final Iterable<Type> types = const [MessageReject, _$MessageReject];
    @override
    final String wireName = r'MessageReject';

    @override
    Iterable<Object> serialize(Serializers serializers, MessageReject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.rejectReason != null) {
            result
                ..add(r'reject_reason')
                ..add(serializers.serialize(object.rejectReason,
                    specifiedType: const FullType(RejectReason)));
        }
        if (object.exchangeId != null) {
            result
                ..add(r'exchange_id')
                ..add(serializers.serialize(object.exchangeId,
                    specifiedType: const FullType(String)));
        }
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        if (object.rejectedMessage != null) {
            result
                ..add(r'rejected_message')
                ..add(serializers.serialize(object.rejectedMessage,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    MessageReject deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MessageRejectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'reject_reason':
                    result.rejectReason = serializers.deserialize(value,
                        specifiedType: const FullType(RejectReason)) as RejectReason;
                    break;
                case r'exchange_id':
                    result.exchangeId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'message':
                    result.message = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'rejected_message':
                    result.rejectedMessage = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

