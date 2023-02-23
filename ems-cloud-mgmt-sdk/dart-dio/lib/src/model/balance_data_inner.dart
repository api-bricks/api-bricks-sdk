//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance_data_inner.g.dart';

/// BalanceDataInner
///
/// Properties:
/// * [assetIdExchange] - Exchange currency code.
/// * [assetIdCoinapi] - CoinAPI currency code.
/// * [balance] - Value of the current total currency balance on the exchange.
/// * [available] - Value of the current available currency balance on the exchange that can be used as collateral.
/// * [locked] - Value of the current locked currency balance by the exchange.
/// * [lastUpdatedBy] - Source of the last modification. 
/// * [rateUsd] - Current exchange rate to the USD for the single unit of the currency. 
/// * [traded] - Value of the current total traded.
@BuiltValue()
abstract class BalanceDataInner implements Built<BalanceDataInner, BalanceDataInnerBuilder> {
  /// Exchange currency code.
  @BuiltValueField(wireName: r'asset_id_exchange')
  String? get assetIdExchange;

  /// CoinAPI currency code.
  @BuiltValueField(wireName: r'asset_id_coinapi')
  String? get assetIdCoinapi;

  /// Value of the current total currency balance on the exchange.
  @BuiltValueField(wireName: r'balance')
  double? get balance;

  /// Value of the current available currency balance on the exchange that can be used as collateral.
  @BuiltValueField(wireName: r'available')
  double? get available;

  /// Value of the current locked currency balance by the exchange.
  @BuiltValueField(wireName: r'locked')
  double? get locked;

  /// Source of the last modification. 
  @BuiltValueField(wireName: r'last_updated_by')
  BalanceDataInnerLastUpdatedByEnum? get lastUpdatedBy;
  // enum lastUpdatedByEnum {  INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE,  };

  /// Current exchange rate to the USD for the single unit of the currency. 
  @BuiltValueField(wireName: r'rate_usd')
  double? get rateUsd;

  /// Value of the current total traded.
  @BuiltValueField(wireName: r'traded')
  double? get traded;

  BalanceDataInner._();

  factory BalanceDataInner([void updates(BalanceDataInnerBuilder b)]) = _$BalanceDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BalanceDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BalanceDataInner> get serializer => _$BalanceDataInnerSerializer();
}

class _$BalanceDataInnerSerializer implements PrimitiveSerializer<BalanceDataInner> {
  @override
  final Iterable<Type> types = const [BalanceDataInner, _$BalanceDataInner];

  @override
  final String wireName = r'BalanceDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BalanceDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assetIdExchange != null) {
      yield r'asset_id_exchange';
      yield serializers.serialize(
        object.assetIdExchange,
        specifiedType: const FullType(String),
      );
    }
    if (object.assetIdCoinapi != null) {
      yield r'asset_id_coinapi';
      yield serializers.serialize(
        object.assetIdCoinapi,
        specifiedType: const FullType(String),
      );
    }
    if (object.balance != null) {
      yield r'balance';
      yield serializers.serialize(
        object.balance,
        specifiedType: const FullType(double),
      );
    }
    if (object.available != null) {
      yield r'available';
      yield serializers.serialize(
        object.available,
        specifiedType: const FullType(double),
      );
    }
    if (object.locked != null) {
      yield r'locked';
      yield serializers.serialize(
        object.locked,
        specifiedType: const FullType(double),
      );
    }
    if (object.lastUpdatedBy != null) {
      yield r'last_updated_by';
      yield serializers.serialize(
        object.lastUpdatedBy,
        specifiedType: const FullType(BalanceDataInnerLastUpdatedByEnum),
      );
    }
    if (object.rateUsd != null) {
      yield r'rate_usd';
      yield serializers.serialize(
        object.rateUsd,
        specifiedType: const FullType(double),
      );
    }
    if (object.traded != null) {
      yield r'traded';
      yield serializers.serialize(
        object.traded,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BalanceDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BalanceDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'asset_id_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assetIdExchange = valueDes;
          break;
        case r'asset_id_coinapi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assetIdCoinapi = valueDes;
          break;
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.balance = valueDes;
          break;
        case r'available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.available = valueDes;
          break;
        case r'locked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.locked = valueDes;
          break;
        case r'last_updated_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BalanceDataInnerLastUpdatedByEnum),
          ) as BalanceDataInnerLastUpdatedByEnum;
          result.lastUpdatedBy = valueDes;
          break;
        case r'rate_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.rateUsd = valueDes;
          break;
        case r'traded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.traded = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BalanceDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BalanceDataInnerBuilder();
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

class BalanceDataInnerLastUpdatedByEnum extends EnumClass {

  /// Source of the last modification. 
  @BuiltValueEnumConst(wireName: r'INITIALIZATION')
  static const BalanceDataInnerLastUpdatedByEnum INITIALIZATION = _$balanceDataInnerLastUpdatedByEnum_INITIALIZATION;
  /// Source of the last modification. 
  @BuiltValueEnumConst(wireName: r'BALANCE_MANAGER')
  static const BalanceDataInnerLastUpdatedByEnum BALANCE_MANAGER = _$balanceDataInnerLastUpdatedByEnum_BALANCE_MANAGER;
  /// Source of the last modification. 
  @BuiltValueEnumConst(wireName: r'EXCHANGE')
  static const BalanceDataInnerLastUpdatedByEnum EXCHANGE = _$balanceDataInnerLastUpdatedByEnum_EXCHANGE;

  static Serializer<BalanceDataInnerLastUpdatedByEnum> get serializer => _$balanceDataInnerLastUpdatedByEnumSerializer;

  const BalanceDataInnerLastUpdatedByEnum._(String name): super(name);

  static BuiltSet<BalanceDataInnerLastUpdatedByEnum> get values => _$balanceDataInnerLastUpdatedByEnumValues;
  static BalanceDataInnerLastUpdatedByEnum valueOf(String name) => _$balanceDataInnerLastUpdatedByEnumValueOf(name);
}

