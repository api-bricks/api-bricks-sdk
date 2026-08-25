//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_timeseries_period.g.dart';

/// Represents a timeseries period used in exchange rate data.
///
/// Properties:
/// * [periodId] - The period ID.
/// * [lengthSeconds] - The length of the period in seconds.
/// * [lengthMonths] - The length of the period in months.
/// * [unitCount] - The unit count.
/// * [unitName] - The unit name.
/// * [displayName] - The display name of the timeseries period.
@BuiltValue()
abstract class V1TimeseriesPeriod implements Built<V1TimeseriesPeriod, V1TimeseriesPeriodBuilder> {
  /// The period ID.
  @BuiltValueField(wireName: r'period_id')
  String? get periodId;

  /// The length of the period in seconds.
  @BuiltValueField(wireName: r'length_seconds')
  int? get lengthSeconds;

  /// The length of the period in months.
  @BuiltValueField(wireName: r'length_months')
  int? get lengthMonths;

  /// The unit count.
  @BuiltValueField(wireName: r'unit_count')
  int? get unitCount;

  /// The unit name.
  @BuiltValueField(wireName: r'unit_name')
  String? get unitName;

  /// The display name of the timeseries period.
  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  V1TimeseriesPeriod._();

  factory V1TimeseriesPeriod([void updates(V1TimeseriesPeriodBuilder b)]) = _$V1TimeseriesPeriod;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1TimeseriesPeriodBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1TimeseriesPeriod> get serializer => _$V1TimeseriesPeriodSerializer();
}

class _$V1TimeseriesPeriodSerializer implements PrimitiveSerializer<V1TimeseriesPeriod> {
  @override
  final Iterable<Type> types = const [V1TimeseriesPeriod, _$V1TimeseriesPeriod];

  @override
  final String wireName = r'V1TimeseriesPeriod';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1TimeseriesPeriod object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.periodId != null) {
      yield r'period_id';
      yield serializers.serialize(
        object.periodId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lengthSeconds != null) {
      yield r'length_seconds';
      yield serializers.serialize(
        object.lengthSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.lengthMonths != null) {
      yield r'length_months';
      yield serializers.serialize(
        object.lengthMonths,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitCount != null) {
      yield r'unit_count';
      yield serializers.serialize(
        object.unitCount,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.unitName != null) {
      yield r'unit_name';
      yield serializers.serialize(
        object.unitName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1TimeseriesPeriod object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1TimeseriesPeriodBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'period_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.periodId = valueDes;
          break;
        case r'length_seconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lengthSeconds = valueDes;
          break;
        case r'length_months':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lengthMonths = valueDes;
          break;
        case r'unit_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.unitCount = valueDes;
          break;
        case r'unit_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unitName = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1TimeseriesPeriod deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1TimeseriesPeriodBuilder();
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


