//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_metric_data.g.dart';

/// Represents a data model for metric data.
///
/// Properties:
/// * [symbolId] - Gets or sets the symbol id.
/// * [time] - Gets or sets the time at which the value is recorded.
/// * [value] - Gets or sets the value of the metric.
@BuiltValue()
abstract class V1MetricData implements Built<V1MetricData, V1MetricDataBuilder> {
  /// Gets or sets the symbol id.
  @BuiltValueField(wireName: r'symbol_id')
  String? get symbolId;

  /// Gets or sets the time at which the value is recorded.
  @BuiltValueField(wireName: r'time')
  DateTime? get time;

  /// Gets or sets the value of the metric.
  @BuiltValueField(wireName: r'value')
  double? get value;

  V1MetricData._();

  factory V1MetricData([void updates(V1MetricDataBuilder b)]) = _$V1MetricData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1MetricDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1MetricData> get serializer => _$V1MetricDataSerializer();
}

class _$V1MetricDataSerializer implements PrimitiveSerializer<V1MetricData> {
  @override
  final Iterable<Type> types = const [V1MetricData, _$V1MetricData];

  @override
  final String wireName = r'V1MetricData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1MetricData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbolId != null) {
      yield r'symbol_id';
      yield serializers.serialize(
        object.symbolId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1MetricData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1MetricDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolId = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.time = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1MetricData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1MetricDataBuilder();
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


