//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_security_directory_model.g.dart';

/// Represents the response DTO for security directory information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the security directory information was recorded as DateTime
/// * [flags] - Flags for the security
/// * [roundLotSize] - Number of shares that represent a round lot
/// * [adjustedPocPrice] - Adjusted previous official closing price as decimal
/// * [luldTier] - LULD tier as byte value
/// * [luldTierCode] - LULD tier as numeric string
/// * [luldTierText] - Human-readable description of the LULD tier
/// * [isLuldTierNotApplicable] - Indicates if LULD Tier is 'Not applicable' (0x0).
/// * [isLuldTier1] - Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1).
/// * [isLuldTier2] - Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2).
@BuiltValue()
abstract class ModelsSecurityDirectoryModel implements Built<ModelsSecurityDirectoryModel, ModelsSecurityDirectoryModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the security directory information was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Flags for the security
  @BuiltValueField(wireName: r'flags')
  int? get flags;

  /// Number of shares that represent a round lot
  @BuiltValueField(wireName: r'round_lot_size')
  int? get roundLotSize;

  /// Adjusted previous official closing price as decimal
  @BuiltValueField(wireName: r'adjusted_poc_price')
  double? get adjustedPocPrice;

  /// LULD tier as byte value
  @BuiltValueField(wireName: r'luld_tier')
  int? get luldTier;

  /// LULD tier as numeric string
  @BuiltValueField(wireName: r'luld_tier_code')
  String? get luldTierCode;

  /// Human-readable description of the LULD tier
  @BuiltValueField(wireName: r'luld_tier_text')
  String? get luldTierText;

  /// Indicates if LULD Tier is 'Not applicable' (0x0).
  @BuiltValueField(wireName: r'is_luld_tier_not_applicable')
  bool? get isLuldTierNotApplicable;

  /// Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1).
  @BuiltValueField(wireName: r'is_luld_tier1')
  bool? get isLuldTier1;

  /// Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2).
  @BuiltValueField(wireName: r'is_luld_tier2')
  bool? get isLuldTier2;

  ModelsSecurityDirectoryModel._();

  factory ModelsSecurityDirectoryModel([void updates(ModelsSecurityDirectoryModelBuilder b)]) = _$ModelsSecurityDirectoryModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsSecurityDirectoryModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsSecurityDirectoryModel> get serializer => _$ModelsSecurityDirectoryModelSerializer();
}

class _$ModelsSecurityDirectoryModelSerializer implements PrimitiveSerializer<ModelsSecurityDirectoryModel> {
  @override
  final Iterable<Type> types = const [ModelsSecurityDirectoryModel, _$ModelsSecurityDirectoryModel];

  @override
  final String wireName = r'ModelsSecurityDirectoryModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsSecurityDirectoryModel object, {
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
    if (object.flags != null) {
      yield r'flags';
      yield serializers.serialize(
        object.flags,
        specifiedType: const FullType(int),
      );
    }
    if (object.roundLotSize != null) {
      yield r'round_lot_size';
      yield serializers.serialize(
        object.roundLotSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.adjustedPocPrice != null) {
      yield r'adjusted_poc_price';
      yield serializers.serialize(
        object.adjustedPocPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.luldTier != null) {
      yield r'luld_tier';
      yield serializers.serialize(
        object.luldTier,
        specifiedType: const FullType(int),
      );
    }
    if (object.luldTierCode != null) {
      yield r'luld_tier_code';
      yield serializers.serialize(
        object.luldTierCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.luldTierText != null) {
      yield r'luld_tier_text';
      yield serializers.serialize(
        object.luldTierText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isLuldTierNotApplicable != null) {
      yield r'is_luld_tier_not_applicable';
      yield serializers.serialize(
        object.isLuldTierNotApplicable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isLuldTier1 != null) {
      yield r'is_luld_tier1';
      yield serializers.serialize(
        object.isLuldTier1,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isLuldTier2 != null) {
      yield r'is_luld_tier2';
      yield serializers.serialize(
        object.isLuldTier2,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsSecurityDirectoryModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsSecurityDirectoryModelBuilder result,
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
        case r'flags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.flags = valueDes;
          break;
        case r'round_lot_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.roundLotSize = valueDes;
          break;
        case r'adjusted_poc_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.adjustedPocPrice = valueDes;
          break;
        case r'luld_tier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.luldTier = valueDes;
          break;
        case r'luld_tier_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.luldTierCode = valueDes;
          break;
        case r'luld_tier_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.luldTierText = valueDes;
          break;
        case r'is_luld_tier_not_applicable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isLuldTierNotApplicable = valueDes;
          break;
        case r'is_luld_tier1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isLuldTier1 = valueDes;
          break;
        case r'is_luld_tier2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isLuldTier2 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsSecurityDirectoryModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsSecurityDirectoryModelBuilder();
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


