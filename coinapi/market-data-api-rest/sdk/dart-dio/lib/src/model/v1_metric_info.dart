//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_metric_info.g.dart';

/// Represents a metric information.
///
/// Properties:
/// * [metricId] - Gets or sets the metric identifier.
/// * [description] - Gets or sets the description of the metric.
/// * [sourceId] - Gets or sets the source identifier of the metric.
@BuiltValue()
abstract class V1MetricInfo implements Built<V1MetricInfo, V1MetricInfoBuilder> {
  /// Gets or sets the metric identifier.
  @BuiltValueField(wireName: r'metric_id')
  String? get metricId;

  /// Gets or sets the description of the metric.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Gets or sets the source identifier of the metric.
  @BuiltValueField(wireName: r'source_id')
  String? get sourceId;

  V1MetricInfo._();

  factory V1MetricInfo([void updates(V1MetricInfoBuilder b)]) = _$V1MetricInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1MetricInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1MetricInfo> get serializer => _$V1MetricInfoSerializer();
}

class _$V1MetricInfoSerializer implements PrimitiveSerializer<V1MetricInfo> {
  @override
  final Iterable<Type> types = const [V1MetricInfo, _$V1MetricInfo];

  @override
  final String wireName = r'V1MetricInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1MetricInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metricId != null) {
      yield r'metric_id';
      yield serializers.serialize(
        object.metricId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceId != null) {
      yield r'source_id';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1MetricInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1MetricInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metric_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.metricId = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'source_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1MetricInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1MetricInfoBuilder();
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


