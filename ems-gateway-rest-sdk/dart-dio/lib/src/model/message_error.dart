//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_error.g.dart';

/// MessageError
///
/// Properties:
/// * [message] - Message text.
@BuiltValue()
abstract class MessageError implements Built<MessageError, MessageErrorBuilder> {
  /// Message text.
  @BuiltValueField(wireName: r'message')
  String? get message;

  MessageError._();

  factory MessageError([void updates(MessageErrorBuilder b)]) = _$MessageError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MessageErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MessageError> get serializer => _$MessageErrorSerializer();
}

class _$MessageErrorSerializer implements PrimitiveSerializer<MessageError> {
  @override
  final Iterable<Type> types = const [MessageError, _$MessageError];

  @override
  final String wireName = r'MessageError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MessageError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MessageError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessageErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MessageError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessageErrorBuilder();
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

