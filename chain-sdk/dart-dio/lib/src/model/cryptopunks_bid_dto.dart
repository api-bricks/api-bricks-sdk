//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cryptopunks_bid_dto.g.dart';

/// CRYPTOPUNKSBidDTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - 
/// * [vid] - 
/// * [blockRange] - 
/// * [id] - 
/// * [tokensBid] - 
/// * [tokenId] - 
/// * [timestamp] - 
/// * [bidder] - 
@BuiltValue()
abstract class CRYPTOPUNKSBidDTO implements Built<CRYPTOPUNKSBidDTO, CRYPTOPUNKSBidDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// 
  @BuiltValueField(wireName: r'block_number')
  String? get blockNumber;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  /// 
  @BuiltValueField(wireName: r'block_range')
  String? get blockRange;

  /// 
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// 
  @BuiltValueField(wireName: r'tokens_bid')
  String? get tokensBid;

  /// 
  @BuiltValueField(wireName: r'token_id')
  String? get tokenId;

  /// 
  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  /// 
  @BuiltValueField(wireName: r'bidder')
  String? get bidder;

  CRYPTOPUNKSBidDTO._();

  factory CRYPTOPUNKSBidDTO([void updates(CRYPTOPUNKSBidDTOBuilder b)]) = _$CRYPTOPUNKSBidDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CRYPTOPUNKSBidDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CRYPTOPUNKSBidDTO> get serializer => _$CRYPTOPUNKSBidDTOSerializer();
}

class _$CRYPTOPUNKSBidDTOSerializer implements PrimitiveSerializer<CRYPTOPUNKSBidDTO> {
  @override
  final Iterable<Type> types = const [CRYPTOPUNKSBidDTO, _$CRYPTOPUNKSBidDTO];

  @override
  final String wireName = r'CRYPTOPUNKSBidDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CRYPTOPUNKSBidDTO object, {
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
    if (object.blockRange != null) {
      yield r'block_range';
      yield serializers.serialize(
        object.blockRange,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tokensBid != null) {
      yield r'tokens_bid';
      yield serializers.serialize(
        object.tokensBid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tokenId != null) {
      yield r'token_id';
      yield serializers.serialize(
        object.tokenId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bidder != null) {
      yield r'bidder';
      yield serializers.serialize(
        object.bidder,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CRYPTOPUNKSBidDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CRYPTOPUNKSBidDTOBuilder result,
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.blockNumber = valueDes;
          break;
        case r'vid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vid = valueDes;
          break;
        case r'block_range':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.blockRange = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'tokens_bid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tokensBid = valueDes;
          break;
        case r'token_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tokenId = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'bidder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bidder = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CRYPTOPUNKSBidDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CRYPTOPUNKSBidDTOBuilder();
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

