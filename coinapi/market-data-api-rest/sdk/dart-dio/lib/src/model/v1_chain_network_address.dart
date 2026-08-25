//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_chain_network_address.g.dart';

/// Contains information about assets' chain network addresses
///
/// Properties:
/// * [chainId] - Gets or sets chain id
/// * [networkId] - Gets or sets network id
/// * [address] - Gets or sets chain address
@BuiltValue()
abstract class V1ChainNetworkAddress implements Built<V1ChainNetworkAddress, V1ChainNetworkAddressBuilder> {
  /// Gets or sets chain id
  @BuiltValueField(wireName: r'chain_id')
  String? get chainId;

  /// Gets or sets network id
  @BuiltValueField(wireName: r'network_id')
  String? get networkId;

  /// Gets or sets chain address
  @BuiltValueField(wireName: r'address')
  String? get address;

  V1ChainNetworkAddress._();

  factory V1ChainNetworkAddress([void updates(V1ChainNetworkAddressBuilder b)]) = _$V1ChainNetworkAddress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ChainNetworkAddressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ChainNetworkAddress> get serializer => _$V1ChainNetworkAddressSerializer();
}

class _$V1ChainNetworkAddressSerializer implements PrimitiveSerializer<V1ChainNetworkAddress> {
  @override
  final Iterable<Type> types = const [V1ChainNetworkAddress, _$V1ChainNetworkAddress];

  @override
  final String wireName = r'V1ChainNetworkAddress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ChainNetworkAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.chainId != null) {
      yield r'chain_id';
      yield serializers.serialize(
        object.chainId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.networkId != null) {
      yield r'network_id';
      yield serializers.serialize(
        object.networkId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ChainNetworkAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ChainNetworkAddressBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chain_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chainId = valueDes;
          break;
        case r'network_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.networkId = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ChainNetworkAddress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ChainNetworkAddressBuilder();
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


