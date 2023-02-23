//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/reject_reason.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_reject.g.dart';

/// MessageReject
///
/// Properties:
/// * [type] - Message type, constant.
/// * [rejectReason] 
/// * [exchangeId] - If the message related to exchange, then the identifier of the exchange will be provided.
/// * [message] - Message text.
/// * [rejectedMessage] - Value of rejected request, if available.
@BuiltValue()
abstract class MessageReject implements Built<MessageReject, MessageRejectBuilder> {
  /// Message type, constant.
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'reject_reason')
  RejectReason? get rejectReason;
  // enum rejectReasonEnum {  OTHER,  EXCHANGE_UNREACHABLE,  EXCHANGE_RESPONSE_TIMEOUT,  ORDER_ID_NOT_FOUND,  INVALID_TYPE,  METHOD_NOT_SUPPORTED,  JSON_ERROR,  };

  /// If the message related to exchange, then the identifier of the exchange will be provided.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  /// Message text.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Value of rejected request, if available.
  @BuiltValueField(wireName: r'rejected_message')
  String? get rejectedMessage;

  MessageReject._();

  factory MessageReject([void updates(MessageRejectBuilder b)]) = _$MessageReject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MessageRejectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MessageReject> get serializer => _$MessageRejectSerializer();
}

class _$MessageRejectSerializer implements PrimitiveSerializer<MessageReject> {
  @override
  final Iterable<Type> types = const [MessageReject, _$MessageReject];

  @override
  final String wireName = r'MessageReject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MessageReject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.rejectReason != null) {
      yield r'reject_reason';
      yield serializers.serialize(
        object.rejectReason,
        specifiedType: const FullType(RejectReason),
      );
    }
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.rejectedMessage != null) {
      yield r'rejected_message';
      yield serializers.serialize(
        object.rejectedMessage,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MessageReject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessageRejectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'reject_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RejectReason),
          ) as RejectReason;
          result.rejectReason = valueDes;
          break;
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exchangeId = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'rejected_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rejectedMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MessageReject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessageRejectBuilder();
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

