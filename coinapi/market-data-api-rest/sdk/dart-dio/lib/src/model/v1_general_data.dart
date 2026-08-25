//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_general_data.g.dart';

/// Class representation of general metric data. This class is an XML type with name \"general_data\" and inherits from the BaseCsvModel class.
///
/// Properties:
/// * [entryTime] - Gets or sets the entry time for the data point.
/// * [recvTime] - Gets or sets the received time for the data point.
/// * [exchangeId] - Gets or sets the identifier for the exchange.
/// * [assetId] - Gets or sets the identifier for the asset.
/// * [symbolId] - Gets or sets the identifier for the symbol.
/// * [metricId] - Gets or sets the identifier for the metric.
/// * [valueDecimal] - Gets or sets the decimal value for the metric.
/// * [valueText] - Gets or sets the textual representation of the value for the metric.
/// * [valueTime] - Gets or sets the timestamp value for the metric.
@BuiltValue()
abstract class V1GeneralData implements Built<V1GeneralData, V1GeneralDataBuilder> {
  /// Gets or sets the entry time for the data point.
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  /// Gets or sets the received time for the data point.
  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Gets or sets the identifier for the exchange.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  /// Gets or sets the identifier for the asset.
  @BuiltValueField(wireName: r'asset_id')
  String? get assetId;

  /// Gets or sets the identifier for the symbol.
  @BuiltValueField(wireName: r'symbol_id')
  String? get symbolId;

  /// Gets or sets the identifier for the metric.
  @BuiltValueField(wireName: r'metric_id')
  String? get metricId;

  /// Gets or sets the decimal value for the metric.
  @BuiltValueField(wireName: r'value_decimal')
  double? get valueDecimal;

  /// Gets or sets the textual representation of the value for the metric.
  @BuiltValueField(wireName: r'value_text')
  String? get valueText;

  /// Gets or sets the timestamp value for the metric.
  @BuiltValueField(wireName: r'value_time')
  DateTime? get valueTime;

  V1GeneralData._();

  factory V1GeneralData([void updates(V1GeneralDataBuilder b)]) = _$V1GeneralData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1GeneralDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1GeneralData> get serializer => _$V1GeneralDataSerializer();
}

class _$V1GeneralDataSerializer implements PrimitiveSerializer<V1GeneralData> {
  @override
  final Iterable<Type> types = const [V1GeneralData, _$V1GeneralData];

  @override
  final String wireName = r'V1GeneralData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1GeneralData object, {
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
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.assetId != null) {
      yield r'asset_id';
      yield serializers.serialize(
        object.assetId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.symbolId != null) {
      yield r'symbol_id';
      yield serializers.serialize(
        object.symbolId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.metricId != null) {
      yield r'metric_id';
      yield serializers.serialize(
        object.metricId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.valueDecimal != null) {
      yield r'value_decimal';
      yield serializers.serialize(
        object.valueDecimal,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.valueText != null) {
      yield r'value_text';
      yield serializers.serialize(
        object.valueText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.valueTime != null) {
      yield r'value_time';
      yield serializers.serialize(
        object.valueTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1GeneralData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1GeneralDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entry_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.entryTime = valueDes;
          break;
        case r'recv_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.recvTime = valueDes;
          break;
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exchangeId = valueDes;
          break;
        case r'asset_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetId = valueDes;
          break;
        case r'symbol_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolId = valueDes;
          break;
        case r'metric_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.metricId = valueDes;
          break;
        case r'value_decimal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.valueDecimal = valueDes;
          break;
        case r'value_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.valueText = valueDes;
          break;
        case r'value_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.valueTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1GeneralData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1GeneralDataBuilder();
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


