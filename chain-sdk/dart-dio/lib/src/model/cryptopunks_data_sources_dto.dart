//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cryptopunks_data_sources_dto.g.dart';

/// CRYPTOPUNKSDataSourcesDTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [vid] - 
/// * [blockRange] - 
/// * [causalityRegion] - 
/// * [manifestIdx] - 
/// * [parent] - 
/// * [id] - 
/// * [param] - 
/// * [context] - 
/// * [doneAt] - 
@BuiltValue()
abstract class CRYPTOPUNKSDataSourcesDTO implements Built<CRYPTOPUNKSDataSourcesDTO, CRYPTOPUNKSDataSourcesDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  /// 
  @BuiltValueField(wireName: r'block_range')
  String? get blockRange;

  /// 
  @BuiltValueField(wireName: r'causality_region')
  int? get causalityRegion;

  /// 
  @BuiltValueField(wireName: r'manifest_idx')
  int? get manifestIdx;

  /// 
  @BuiltValueField(wireName: r'parent')
  int? get parent;

  /// 
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// 
  @BuiltValueField(wireName: r'param')
  String? get param;

  /// 
  @BuiltValueField(wireName: r'context')
  String? get context;

  /// 
  @BuiltValueField(wireName: r'done_at')
  int? get doneAt;

  CRYPTOPUNKSDataSourcesDTO._();

  factory CRYPTOPUNKSDataSourcesDTO([void updates(CRYPTOPUNKSDataSourcesDTOBuilder b)]) = _$CRYPTOPUNKSDataSourcesDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CRYPTOPUNKSDataSourcesDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CRYPTOPUNKSDataSourcesDTO> get serializer => _$CRYPTOPUNKSDataSourcesDTOSerializer();
}

class _$CRYPTOPUNKSDataSourcesDTOSerializer implements PrimitiveSerializer<CRYPTOPUNKSDataSourcesDTO> {
  @override
  final Iterable<Type> types = const [CRYPTOPUNKSDataSourcesDTO, _$CRYPTOPUNKSDataSourcesDTO];

  @override
  final String wireName = r'CRYPTOPUNKSDataSourcesDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CRYPTOPUNKSDataSourcesDTO object, {
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
    if (object.causalityRegion != null) {
      yield r'causality_region';
      yield serializers.serialize(
        object.causalityRegion,
        specifiedType: const FullType(int),
      );
    }
    if (object.manifestIdx != null) {
      yield r'manifest_idx';
      yield serializers.serialize(
        object.manifestIdx,
        specifiedType: const FullType(int),
      );
    }
    if (object.parent != null) {
      yield r'parent';
      yield serializers.serialize(
        object.parent,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.param != null) {
      yield r'param';
      yield serializers.serialize(
        object.param,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.context != null) {
      yield r'context';
      yield serializers.serialize(
        object.context,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.doneAt != null) {
      yield r'done_at';
      yield serializers.serialize(
        object.doneAt,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CRYPTOPUNKSDataSourcesDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CRYPTOPUNKSDataSourcesDTOBuilder result,
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
        case r'causality_region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.causalityRegion = valueDes;
          break;
        case r'manifest_idx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.manifestIdx = valueDes;
          break;
        case r'parent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.parent = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'param':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.param = valueDes;
          break;
        case r'context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.context = valueDes;
          break;
        case r'done_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.doneAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CRYPTOPUNKSDataSourcesDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CRYPTOPUNKSDataSourcesDTOBuilder();
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

