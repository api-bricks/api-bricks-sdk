//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_exchange_rates_chain_network_address.g.dart';

/// Contains information about assets' chain network addresses
///
/// Properties:
/// * [chainId] - Gets or sets chain id
/// * [networkId] - Gets or sets network id
/// * [address] - Gets or sets chain address
@BuiltValue()
abstract class V1ExchangeRatesChainNetworkAddress implements Built<V1ExchangeRatesChainNetworkAddress, V1ExchangeRatesChainNetworkAddressBuilder> {
  /// Gets or sets chain id
  @BuiltValueField(wireName: r'chain_id')
  String? get chainId;

  /// Gets or sets network id
  @BuiltValueField(wireName: r'network_id')
  String? get networkId;

  /// Gets or sets chain address
  @BuiltValueField(wireName: r'address')
  String? get address;

  V1ExchangeRatesChainNetworkAddress._();

  factory V1ExchangeRatesChainNetworkAddress([void updates(V1ExchangeRatesChainNetworkAddressBuilder b)]) = _$V1ExchangeRatesChainNetworkAddress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ExchangeRatesChainNetworkAddressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ExchangeRatesChainNetworkAddress> get serializer => _$V1ExchangeRatesChainNetworkAddressSerializer();
}

class _$V1ExchangeRatesChainNetworkAddressSerializer implements PrimitiveSerializer<V1ExchangeRatesChainNetworkAddress> {
  @override
  final Iterable<Type> types = const [V1ExchangeRatesChainNetworkAddress, _$V1ExchangeRatesChainNetworkAddress];

  @override
  final String wireName = r'V1ExchangeRatesChainNetworkAddress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ExchangeRatesChainNetworkAddress object, {
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
    V1ExchangeRatesChainNetworkAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ExchangeRatesChainNetworkAddressBuilder result,
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
  V1ExchangeRatesChainNetworkAddress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ExchangeRatesChainNetworkAddressBuilder();
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


