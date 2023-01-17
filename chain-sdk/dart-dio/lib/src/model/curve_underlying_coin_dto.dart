//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'curve_underlying_coin_dto.g.dart';

/// CurveUnderlyingCoinDTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Equals to: (pool_id)-(coin_index).
/// * [index] - Coin index.
/// * [pool] - 
/// * [token] - 
/// * [coin] - 
/// * [balance] - 
/// * [updated] - 
/// * [updatedAtBlock] - 
/// * [updatedAtTransaction] - 
/// * [vid] - 
@BuiltValue()
abstract class CurveUnderlyingCoinDTO implements Built<CurveUnderlyingCoinDTO, CurveUnderlyingCoinDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Equals to: (pool_id)-(coin_index).
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Coin index.
  @BuiltValueField(wireName: r'index')
  int? get index;

  /// 
  @BuiltValueField(wireName: r'pool')
  String? get pool;

  /// 
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// 
  @BuiltValueField(wireName: r'coin')
  String? get coin;

  /// 
  @BuiltValueField(wireName: r'balance')
  String? get balance;

  /// 
  @BuiltValueField(wireName: r'updated')
  String? get updated;

  /// 
  @BuiltValueField(wireName: r'updated_at_block')
  String? get updatedAtBlock;

  /// 
  @BuiltValueField(wireName: r'updated_at_transaction')
  String? get updatedAtTransaction;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  CurveUnderlyingCoinDTO._();

  factory CurveUnderlyingCoinDTO([void updates(CurveUnderlyingCoinDTOBuilder b)]) = _$CurveUnderlyingCoinDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CurveUnderlyingCoinDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CurveUnderlyingCoinDTO> get serializer => _$CurveUnderlyingCoinDTOSerializer();
}

class _$CurveUnderlyingCoinDTOSerializer implements PrimitiveSerializer<CurveUnderlyingCoinDTO> {
  @override
  final Iterable<Type> types = const [CurveUnderlyingCoinDTO, _$CurveUnderlyingCoinDTO];

  @override
  final String wireName = r'CurveUnderlyingCoinDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CurveUnderlyingCoinDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entryTime != null) {
      yield r'entry_time';
      yield serializers.serialize(
        object.entryTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.recvTime != null) {
      yield r'recv_time';
      yield serializers.serialize(
        object.recvTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.blockNumber != null) {
      yield r'block_number';
      yield serializers.serialize(
        object.blockNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.index != null) {
      yield r'index';
      yield serializers.serialize(
        object.index,
        specifiedType: const FullType(int),
      );
    }
    if (object.pool != null) {
      yield r'pool';
      yield serializers.serialize(
        object.pool,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.coin != null) {
      yield r'coin';
      yield serializers.serialize(
        object.coin,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.balance != null) {
      yield r'balance';
      yield serializers.serialize(
        object.balance,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updated != null) {
      yield r'updated';
      yield serializers.serialize(
        object.updated,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updatedAtBlock != null) {
      yield r'updated_at_block';
      yield serializers.serialize(
        object.updatedAtBlock,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updatedAtTransaction != null) {
      yield r'updated_at_transaction';
      yield serializers.serialize(
        object.updatedAtTransaction,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.vid != null) {
      yield r'vid';
      yield serializers.serialize(
        object.vid,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CurveUnderlyingCoinDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CurveUnderlyingCoinDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entry_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.entryTime = valueDes;
          break;
        case r'recv_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.recvTime = valueDes;
          break;
        case r'block_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.blockNumber = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.index = valueDes;
          break;
        case r'pool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pool = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'coin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.coin = valueDes;
          break;
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.balance = valueDes;
          break;
        case r'updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.updated = valueDes;
          break;
        case r'updated_at_block':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.updatedAtBlock = valueDes;
          break;
        case r'updated_at_transaction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.updatedAtTransaction = valueDes;
          break;
        case r'vid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CurveUnderlyingCoinDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CurveUnderlyingCoinDTOBuilder();
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

