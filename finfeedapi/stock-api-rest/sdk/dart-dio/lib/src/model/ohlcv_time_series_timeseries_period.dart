//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ohlcv_time_series_timeseries_period.g.dart';

/// Represents a timeseries period used in exchange rate data.
///
/// Properties:
/// * [periodId] - Gets or sets the period ID.
/// * [lengthSeconds] - Gets or sets the length of the period in seconds.
/// * [lengthMonths] - Gets or sets the length of the period in months.
/// * [unitCount] - Gets or sets the unit count.
/// * [unitName] - Gets or sets the unit name.
/// * [displayName] - Gets or sets the display name of the timeseries period.
@BuiltValue()
abstract class OHLCVTimeSeriesTimeseriesPeriod implements Built<OHLCVTimeSeriesTimeseriesPeriod, OHLCVTimeSeriesTimeseriesPeriodBuilder> {
  /// Gets or sets the period ID.
  @BuiltValueField(wireName: r'period_id')
  String? get periodId;

  /// Gets or sets the length of the period in seconds.
  @BuiltValueField(wireName: r'length_seconds')
  int? get lengthSeconds;

  /// Gets or sets the length of the period in months.
  @BuiltValueField(wireName: r'length_months')
  int? get lengthMonths;

  /// Gets or sets the unit count.
  @BuiltValueField(wireName: r'unit_count')
  int? get unitCount;

  /// Gets or sets the unit name.
  @BuiltValueField(wireName: r'unit_name')
  String? get unitName;

  /// Gets or sets the display name of the timeseries period.
  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  OHLCVTimeSeriesTimeseriesPeriod._();

  factory OHLCVTimeSeriesTimeseriesPeriod([void updates(OHLCVTimeSeriesTimeseriesPeriodBuilder b)]) = _$OHLCVTimeSeriesTimeseriesPeriod;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OHLCVTimeSeriesTimeseriesPeriodBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OHLCVTimeSeriesTimeseriesPeriod> get serializer => _$OHLCVTimeSeriesTimeseriesPeriodSerializer();
}

class _$OHLCVTimeSeriesTimeseriesPeriodSerializer implements PrimitiveSerializer<OHLCVTimeSeriesTimeseriesPeriod> {
  @override
  final Iterable<Type> types = const [OHLCVTimeSeriesTimeseriesPeriod, _$OHLCVTimeSeriesTimeseriesPeriod];

  @override
  final String wireName = r'OHLCVTimeSeriesTimeseriesPeriod';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OHLCVTimeSeriesTimeseriesPeriod object, {
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
    OHLCVTimeSeriesTimeseriesPeriod object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OHLCVTimeSeriesTimeseriesPeriodBuilder result,
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
  OHLCVTimeSeriesTimeseriesPeriod deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OHLCVTimeSeriesTimeseriesPeriodBuilder();
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


