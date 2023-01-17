//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dex_price_dto.g.dart';

/// Token price in conjuction with batch id.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Identifier, format: (token id)-(batch id).
/// * [token] - Token identifier.
/// * [batchId] - Batch identifier.
/// * [priceInOwlNumerator] - Price enumerator in OWL (derivative of the GNO token).
/// * [priceInOwlDenominator] - Price denominator in OWL (derivative of the GNO token).
/// * [volume] - Volume.
/// * [createEpoch] - Create epoch.
/// * [txHash] - Transaction hash.
/// * [vid] - 
@BuiltValue()
abstract class DexPriceDTO implements Built<DexPriceDTO, DexPriceDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Identifier, format: (token id)-(batch id).
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Token identifier.
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// Batch identifier.
  @BuiltValueField(wireName: r'batch_id')
  String? get batchId;

  /// Price enumerator in OWL (derivative of the GNO token).
  @BuiltValueField(wireName: r'price_in_owl_numerator')
  String? get priceInOwlNumerator;

  /// Price denominator in OWL (derivative of the GNO token).
  @BuiltValueField(wireName: r'price_in_owl_denominator')
  String? get priceInOwlDenominator;

  /// Volume.
  @BuiltValueField(wireName: r'volume')
  String? get volume;

  /// Create epoch.
  @BuiltValueField(wireName: r'create_epoch')
  String? get createEpoch;

  /// Transaction hash.
  @BuiltValueField(wireName: r'tx_hash')
  String? get txHash;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  DexPriceDTO._();

  factory DexPriceDTO([void updates(DexPriceDTOBuilder b)]) = _$DexPriceDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DexPriceDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DexPriceDTO> get serializer => _$DexPriceDTOSerializer();
}

class _$DexPriceDTOSerializer implements PrimitiveSerializer<DexPriceDTO> {
  @override
  final Iterable<Type> types = const [DexPriceDTO, _$DexPriceDTO];

  @override
  final String wireName = r'DexPriceDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DexPriceDTO object, {
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
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.batchId != null) {
      yield r'batch_id';
      yield serializers.serialize(
        object.batchId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.priceInOwlNumerator != null) {
      yield r'price_in_owl_numerator';
      yield serializers.serialize(
        object.priceInOwlNumerator,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.priceInOwlDenominator != null) {
      yield r'price_in_owl_denominator';
      yield serializers.serialize(
        object.priceInOwlDenominator,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volume != null) {
      yield r'volume';
      yield serializers.serialize(
        object.volume,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createEpoch != null) {
      yield r'create_epoch';
      yield serializers.serialize(
        object.createEpoch,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.txHash != null) {
      yield r'tx_hash';
      yield serializers.serialize(
        object.txHash,
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
    DexPriceDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DexPriceDTOBuilder result,
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
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'batch_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.batchId = valueDes;
          break;
        case r'price_in_owl_numerator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.priceInOwlNumerator = valueDes;
          break;
        case r'price_in_owl_denominator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.priceInOwlDenominator = valueDes;
          break;
        case r'volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volume = valueDes;
          break;
        case r'create_epoch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createEpoch = valueDes;
          break;
        case r'tx_hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.txHash = valueDes;
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
  DexPriceDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DexPriceDTOBuilder();
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

