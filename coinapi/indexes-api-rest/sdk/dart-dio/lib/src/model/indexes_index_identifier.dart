//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexes_index_identifier.g.dart';

/// Represents an index id
///
/// Properties:
/// * [id] - Index ID
@BuiltValue()
abstract class IndexesIndexIdentifier implements Built<IndexesIndexIdentifier, IndexesIndexIdentifierBuilder> {
  /// Index ID
  @BuiltValueField(wireName: r'id')
  String? get id;

  IndexesIndexIdentifier._();

  factory IndexesIndexIdentifier([void updates(IndexesIndexIdentifierBuilder b)]) = _$IndexesIndexIdentifier;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexesIndexIdentifierBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexesIndexIdentifier> get serializer => _$IndexesIndexIdentifierSerializer();
}

class _$IndexesIndexIdentifierSerializer implements PrimitiveSerializer<IndexesIndexIdentifier> {
  @override
  final Iterable<Type> types = const [IndexesIndexIdentifier, _$IndexesIndexIdentifier];

  @override
  final String wireName = r'IndexesIndexIdentifier';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexesIndexIdentifier object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexesIndexIdentifier object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndexesIndexIdentifierBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexesIndexIdentifier deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexesIndexIdentifierBuilder();
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

