//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/balance_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance.g.dart';

/// Balance
///
/// Properties:
/// * [exchangeId] - Exchange identifier used to identify the routing destination.
/// * [data] 
@BuiltValue()
abstract class Balance implements Built<Balance, BalanceBuilder> {
  /// Exchange identifier used to identify the routing destination.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  @BuiltValueField(wireName: r'data')
  BuiltList<BalanceDataInner>? get data;

  Balance._();

  factory Balance([void updates(BalanceBuilder b)]) = _$Balance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BalanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Balance> get serializer => _$BalanceSerializer();
}

class _$BalanceSerializer implements PrimitiveSerializer<Balance> {
  @override
  final Iterable<Type> types = const [Balance, _$Balance];

  @override
  final String wireName = r'Balance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Balance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(BalanceDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Balance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BalanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exchangeId = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BalanceDataInner)]),
          ) as BuiltList<BalanceDataInner>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Balance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BalanceBuilder();
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

