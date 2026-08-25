//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_metric.g.dart';

/// Represents a metric.
///
/// Properties:
/// * [metricId] - Gets or sets the metric ID.
/// * [description] - Gets or sets the metric description.
@BuiltValue()
abstract class V1Metric implements Built<V1Metric, V1MetricBuilder> {
  /// Gets or sets the metric ID.
  @BuiltValueField(wireName: r'metric_id')
  String? get metricId;

  /// Gets or sets the metric description.
  @BuiltValueField(wireName: r'description')
  String? get description;

  V1Metric._();

  factory V1Metric([void updates(V1MetricBuilder b)]) = _$V1Metric;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1MetricBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1Metric> get serializer => _$V1MetricSerializer();
}

class _$V1MetricSerializer implements PrimitiveSerializer<V1Metric> {
  @override
  final Iterable<Type> types = const [V1Metric, _$V1Metric];

  @override
  final String wireName = r'V1Metric';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1Metric object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    V1Metric object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1MetricBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1Metric deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1MetricBuilder();
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


