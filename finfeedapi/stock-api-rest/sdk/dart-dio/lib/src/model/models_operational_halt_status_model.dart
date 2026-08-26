//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_operational_halt_status_model.g.dart';

/// Represents the response DTO for operational halt status information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the operational halt status was recorded as DateTime
/// * [operationalHaltStatus] - Operational halt status as byte value
/// * [operationalHaltStatusCode] - Operational halt status as character string
/// * [operationalHaltStatusText] - Human-readable description of the operational halt status
/// * [isOperationallyHalted] - Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f).
/// * [isNotOperationallyHalted] - Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e).
@BuiltValue()
abstract class ModelsOperationalHaltStatusModel implements Built<ModelsOperationalHaltStatusModel, ModelsOperationalHaltStatusModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the operational halt status was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Operational halt status as byte value
  @BuiltValueField(wireName: r'operational_halt_status')
  int? get operationalHaltStatus;

  /// Operational halt status as character string
  @BuiltValueField(wireName: r'operational_halt_status_code')
  String? get operationalHaltStatusCode;

  /// Human-readable description of the operational halt status
  @BuiltValueField(wireName: r'operational_halt_status_text')
  String? get operationalHaltStatusText;

  /// Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f).
  @BuiltValueField(wireName: r'is_operationally_halted')
  bool? get isOperationallyHalted;

  /// Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e).
  @BuiltValueField(wireName: r'is_not_operationally_halted')
  bool? get isNotOperationallyHalted;

  ModelsOperationalHaltStatusModel._();

  factory ModelsOperationalHaltStatusModel([void updates(ModelsOperationalHaltStatusModelBuilder b)]) = _$ModelsOperationalHaltStatusModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsOperationalHaltStatusModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsOperationalHaltStatusModel> get serializer => _$ModelsOperationalHaltStatusModelSerializer();
}

class _$ModelsOperationalHaltStatusModelSerializer implements PrimitiveSerializer<ModelsOperationalHaltStatusModel> {
  @override
  final Iterable<Type> types = const [ModelsOperationalHaltStatusModel, _$ModelsOperationalHaltStatusModel];

  @override
  final String wireName = r'ModelsOperationalHaltStatusModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsOperationalHaltStatusModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestampNanos != null) {
      yield r'timestamp_nanos';
      yield serializers.serialize(
        object.timestampNanos,
        specifiedType: const FullType(int),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.operationalHaltStatus != null) {
      yield r'operational_halt_status';
      yield serializers.serialize(
        object.operationalHaltStatus,
        specifiedType: const FullType(int),
      );
    }
    if (object.operationalHaltStatusCode != null) {
      yield r'operational_halt_status_code';
      yield serializers.serialize(
        object.operationalHaltStatusCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.operationalHaltStatusText != null) {
      yield r'operational_halt_status_text';
      yield serializers.serialize(
        object.operationalHaltStatusText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isOperationallyHalted != null) {
      yield r'is_operationally_halted';
      yield serializers.serialize(
        object.isOperationallyHalted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isNotOperationallyHalted != null) {
      yield r'is_not_operationally_halted';
      yield serializers.serialize(
        object.isNotOperationallyHalted,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsOperationalHaltStatusModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsOperationalHaltStatusModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbol = valueDes;
          break;
        case r'timestamp_nanos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timestampNanos = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'operational_halt_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.operationalHaltStatus = valueDes;
          break;
        case r'operational_halt_status_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.operationalHaltStatusCode = valueDes;
          break;
        case r'operational_halt_status_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.operationalHaltStatusText = valueDes;
          break;
        case r'is_operationally_halted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isOperationallyHalted = valueDes;
          break;
        case r'is_not_operationally_halted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isNotOperationallyHalted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsOperationalHaltStatusModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsOperationalHaltStatusModelBuilder();
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


