//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_trading_status_model.g.dart';

/// Represents the response DTO for trading status information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the trading status was recorded as DateTime
/// * [isTradingLive] - Gets whether the security is currently trading on IEX
/// * [isTradingHalted] - Gets whether the security is halted across all US equity markets
/// * [isTradingInOrderAcceptancePeriod] - Gets whether the security is in Order Acceptance Period on IEX
/// * [isTradingPaused] - Gets whether the security is paused and in Order Acceptance Period on IEX
/// * [isReasonHaltNewsPending] - Gets whether the halt reason is News Pending
/// * [isReasonIpoNotYetTrading] - Gets whether the halt reason is IPO Not Yet Trading
/// * [isReasonIpoDeferred] - Gets whether the halt reason is IPO Deferred
/// * [isReasonHaltNewsDissemination] - Gets whether the order acceptance period reason is Halt News Dissemination
/// * [isReasonIpoOrderAcceptancePeriod] - Gets whether the order acceptance period reason is IPO Order Acceptance Period
/// * [isReasonIpoPreLaunchPeriod] - Gets whether the order acceptance period reason is IPO Pre-Launch Period
/// * [isReasonMarketWideCircuitBreakerLevel1] - Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached
/// * [isReasonMarketWideCircuitBreakerLevel2] - Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached
/// * [isReasonMarketWideCircuitBreakerLevel3] - Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached
/// * [isReasonNotApplicable] - Gets whether the reason is Not Applicable
/// * [isReasonNotAvailable] - Gets whether the halt reason is Not Available
@BuiltValue()
abstract class ModelsTradingStatusModel implements Built<ModelsTradingStatusModel, ModelsTradingStatusModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the trading status was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Gets whether the security is currently trading on IEX
  @BuiltValueField(wireName: r'is_trading_live')
  bool? get isTradingLive;

  /// Gets whether the security is halted across all US equity markets
  @BuiltValueField(wireName: r'is_trading_halted')
  bool? get isTradingHalted;

  /// Gets whether the security is in Order Acceptance Period on IEX
  @BuiltValueField(wireName: r'is_trading_in_order_acceptance_period')
  bool? get isTradingInOrderAcceptancePeriod;

  /// Gets whether the security is paused and in Order Acceptance Period on IEX
  @BuiltValueField(wireName: r'is_trading_paused')
  bool? get isTradingPaused;

  /// Gets whether the halt reason is News Pending
  @BuiltValueField(wireName: r'is_reason_halt_news_pending')
  bool? get isReasonHaltNewsPending;

  /// Gets whether the halt reason is IPO Not Yet Trading
  @BuiltValueField(wireName: r'is_reason_ipo_not_yet_trading')
  bool? get isReasonIpoNotYetTrading;

  /// Gets whether the halt reason is IPO Deferred
  @BuiltValueField(wireName: r'is_reason_ipo_deferred')
  bool? get isReasonIpoDeferred;

  /// Gets whether the order acceptance period reason is Halt News Dissemination
  @BuiltValueField(wireName: r'is_reason_halt_news_dissemination')
  bool? get isReasonHaltNewsDissemination;

  /// Gets whether the order acceptance period reason is IPO Order Acceptance Period
  @BuiltValueField(wireName: r'is_reason_ipo_order_acceptance_period')
  bool? get isReasonIpoOrderAcceptancePeriod;

  /// Gets whether the order acceptance period reason is IPO Pre-Launch Period
  @BuiltValueField(wireName: r'is_reason_ipo_pre_launch_period')
  bool? get isReasonIpoPreLaunchPeriod;

  /// Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached
  @BuiltValueField(wireName: r'is_reason_market_wide_circuit_breaker_level1')
  bool? get isReasonMarketWideCircuitBreakerLevel1;

  /// Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached
  @BuiltValueField(wireName: r'is_reason_market_wide_circuit_breaker_level2')
  bool? get isReasonMarketWideCircuitBreakerLevel2;

  /// Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached
  @BuiltValueField(wireName: r'is_reason_market_wide_circuit_breaker_level3')
  bool? get isReasonMarketWideCircuitBreakerLevel3;

  /// Gets whether the reason is Not Applicable
  @BuiltValueField(wireName: r'is_reason_not_applicable')
  bool? get isReasonNotApplicable;

  /// Gets whether the halt reason is Not Available
  @BuiltValueField(wireName: r'is_reason_not_available')
  bool? get isReasonNotAvailable;

  ModelsTradingStatusModel._();

  factory ModelsTradingStatusModel([void updates(ModelsTradingStatusModelBuilder b)]) = _$ModelsTradingStatusModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsTradingStatusModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsTradingStatusModel> get serializer => _$ModelsTradingStatusModelSerializer();
}

class _$ModelsTradingStatusModelSerializer implements PrimitiveSerializer<ModelsTradingStatusModel> {
  @override
  final Iterable<Type> types = const [ModelsTradingStatusModel, _$ModelsTradingStatusModel];

  @override
  final String wireName = r'ModelsTradingStatusModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsTradingStatusModel object, {
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
    if (object.isTradingLive != null) {
      yield r'is_trading_live';
      yield serializers.serialize(
        object.isTradingLive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isTradingHalted != null) {
      yield r'is_trading_halted';
      yield serializers.serialize(
        object.isTradingHalted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isTradingInOrderAcceptancePeriod != null) {
      yield r'is_trading_in_order_acceptance_period';
      yield serializers.serialize(
        object.isTradingInOrderAcceptancePeriod,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isTradingPaused != null) {
      yield r'is_trading_paused';
      yield serializers.serialize(
        object.isTradingPaused,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonHaltNewsPending != null) {
      yield r'is_reason_halt_news_pending';
      yield serializers.serialize(
        object.isReasonHaltNewsPending,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonIpoNotYetTrading != null) {
      yield r'is_reason_ipo_not_yet_trading';
      yield serializers.serialize(
        object.isReasonIpoNotYetTrading,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonIpoDeferred != null) {
      yield r'is_reason_ipo_deferred';
      yield serializers.serialize(
        object.isReasonIpoDeferred,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonHaltNewsDissemination != null) {
      yield r'is_reason_halt_news_dissemination';
      yield serializers.serialize(
        object.isReasonHaltNewsDissemination,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonIpoOrderAcceptancePeriod != null) {
      yield r'is_reason_ipo_order_acceptance_period';
      yield serializers.serialize(
        object.isReasonIpoOrderAcceptancePeriod,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonIpoPreLaunchPeriod != null) {
      yield r'is_reason_ipo_pre_launch_period';
      yield serializers.serialize(
        object.isReasonIpoPreLaunchPeriod,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonMarketWideCircuitBreakerLevel1 != null) {
      yield r'is_reason_market_wide_circuit_breaker_level1';
      yield serializers.serialize(
        object.isReasonMarketWideCircuitBreakerLevel1,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonMarketWideCircuitBreakerLevel2 != null) {
      yield r'is_reason_market_wide_circuit_breaker_level2';
      yield serializers.serialize(
        object.isReasonMarketWideCircuitBreakerLevel2,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonMarketWideCircuitBreakerLevel3 != null) {
      yield r'is_reason_market_wide_circuit_breaker_level3';
      yield serializers.serialize(
        object.isReasonMarketWideCircuitBreakerLevel3,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonNotApplicable != null) {
      yield r'is_reason_not_applicable';
      yield serializers.serialize(
        object.isReasonNotApplicable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isReasonNotAvailable != null) {
      yield r'is_reason_not_available';
      yield serializers.serialize(
        object.isReasonNotAvailable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsTradingStatusModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsTradingStatusModelBuilder result,
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
        case r'is_trading_live':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isTradingLive = valueDes;
          break;
        case r'is_trading_halted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isTradingHalted = valueDes;
          break;
        case r'is_trading_in_order_acceptance_period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isTradingInOrderAcceptancePeriod = valueDes;
          break;
        case r'is_trading_paused':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isTradingPaused = valueDes;
          break;
        case r'is_reason_halt_news_pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonHaltNewsPending = valueDes;
          break;
        case r'is_reason_ipo_not_yet_trading':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonIpoNotYetTrading = valueDes;
          break;
        case r'is_reason_ipo_deferred':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonIpoDeferred = valueDes;
          break;
        case r'is_reason_halt_news_dissemination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonHaltNewsDissemination = valueDes;
          break;
        case r'is_reason_ipo_order_acceptance_period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonIpoOrderAcceptancePeriod = valueDes;
          break;
        case r'is_reason_ipo_pre_launch_period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonIpoPreLaunchPeriod = valueDes;
          break;
        case r'is_reason_market_wide_circuit_breaker_level1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonMarketWideCircuitBreakerLevel1 = valueDes;
          break;
        case r'is_reason_market_wide_circuit_breaker_level2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonMarketWideCircuitBreakerLevel2 = valueDes;
          break;
        case r'is_reason_market_wide_circuit_breaker_level3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonMarketWideCircuitBreakerLevel3 = valueDes;
          break;
        case r'is_reason_not_applicable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonNotApplicable = valueDes;
          break;
        case r'is_reason_not_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isReasonNotAvailable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsTradingStatusModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsTradingStatusModelBuilder();
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


