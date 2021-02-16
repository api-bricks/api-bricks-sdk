import 'package:openapi/model/severity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message.g.dart';

abstract class Message implements Built<Message, MessageBuilder> {

    /// Type of message.
    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'severity')
    Severity get severity;
    // enum severityEnum {  INFO,  WARNING,  ERROR,  };

    /// If the message related to exchange, then the identifier of the exchange will be provided.
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// Message text.
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    // Boilerplate code needed to wire-up generated code
    Message._();

    static void _initializeBuilder(MessageBuilder b) => b;

    factory Message([updates(MessageBuilder b)]) = _$Message;
    static Serializer<Message> get serializer => _$messageSerializer;
}

