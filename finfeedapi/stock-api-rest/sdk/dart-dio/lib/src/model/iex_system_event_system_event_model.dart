//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'iex_system_event_system_event_model.g.dart';

/// Represents the response DTO for system event information
///
/// Properties:
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the system event was recorded as DateTime
/// * [systemEvent] - System event as byte value
/// * [systemEventCode] - System event as string
/// * [systemEventText] - Human-readable description of the system event
/// * [isSystemEventStartOfMessages] - Indicates if the system event is 'Start of Messages' (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session.
/// * [isSystemEventStartOfSystemHours] - Indicates if the system event is 'Start of System Hours' (S). This message indicates that IEX is open and ready to start accepting orders.
/// * [isSystemEventStartOfRegularMarketHours] - Indicates if the system event is 'Start of Regular Market Hours' (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX.
/// * [isSystemEventEndOfRegularMarketHours] - Indicates if the system event is 'End of Regular Market Hours' (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX.
/// * [isSystemEventEndOfSystemHours] - Indicates if the system event is 'End of System Hours' (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day.
/// * [isSystemEventEndOfMessages] - Indicates if the system event is 'End of Messages' (C). This is always the last message sent in any trading session.
@BuiltValue()
abstract class IEXSystemEventSystemEventModel implements Built<IEXSystemEventSystemEventModel, IEXSystemEventSystemEventModelBuilder> {
  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the system event was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// System event as byte value
  @BuiltValueField(wireName: r'system_event')
  int? get systemEvent;

  /// System event as string
  @BuiltValueField(wireName: r'system_event_code')
  String? get systemEventCode;

  /// Human-readable description of the system event
  @BuiltValueField(wireName: r'system_event_text')
  String? get systemEventText;

  /// Indicates if the system event is 'Start of Messages' (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session.
  @BuiltValueField(wireName: r'is_system_event_start_of_messages')
  bool? get isSystemEventStartOfMessages;

  /// Indicates if the system event is 'Start of System Hours' (S). This message indicates that IEX is open and ready to start accepting orders.
  @BuiltValueField(wireName: r'is_system_event_start_of_system_hours')
  bool? get isSystemEventStartOfSystemHours;

  /// Indicates if the system event is 'Start of Regular Market Hours' (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX.
  @BuiltValueField(wireName: r'is_system_event_start_of_regular_market_hours')
  bool? get isSystemEventStartOfRegularMarketHours;

  /// Indicates if the system event is 'End of Regular Market Hours' (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX.
  @BuiltValueField(wireName: r'is_system_event_end_of_regular_market_hours')
  bool? get isSystemEventEndOfRegularMarketHours;

  /// Indicates if the system event is 'End of System Hours' (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day.
  @BuiltValueField(wireName: r'is_system_event_end_of_system_hours')
  bool? get isSystemEventEndOfSystemHours;

  /// Indicates if the system event is 'End of Messages' (C). This is always the last message sent in any trading session.
  @BuiltValueField(wireName: r'is_system_event_end_of_messages')
  bool? get isSystemEventEndOfMessages;

  IEXSystemEventSystemEventModel._();

  factory IEXSystemEventSystemEventModel([void updates(IEXSystemEventSystemEventModelBuilder b)]) = _$IEXSystemEventSystemEventModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IEXSystemEventSystemEventModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IEXSystemEventSystemEventModel> get serializer => _$IEXSystemEventSystemEventModelSerializer();
}

class _$IEXSystemEventSystemEventModelSerializer implements PrimitiveSerializer<IEXSystemEventSystemEventModel> {
  @override
  final Iterable<Type> types = const [IEXSystemEventSystemEventModel, _$IEXSystemEventSystemEventModel];

  @override
  final String wireName = r'IEXSystemEventSystemEventModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IEXSystemEventSystemEventModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.systemEvent != null) {
      yield r'system_event';
      yield serializers.serialize(
        object.systemEvent,
        specifiedType: const FullType(int),
      );
    }
    if (object.systemEventCode != null) {
      yield r'system_event_code';
      yield serializers.serialize(
        object.systemEventCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.systemEventText != null) {
      yield r'system_event_text';
      yield serializers.serialize(
        object.systemEventText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isSystemEventStartOfMessages != null) {
      yield r'is_system_event_start_of_messages';
      yield serializers.serialize(
        object.isSystemEventStartOfMessages,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSystemEventStartOfSystemHours != null) {
      yield r'is_system_event_start_of_system_hours';
      yield serializers.serialize(
        object.isSystemEventStartOfSystemHours,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSystemEventStartOfRegularMarketHours != null) {
      yield r'is_system_event_start_of_regular_market_hours';
      yield serializers.serialize(
        object.isSystemEventStartOfRegularMarketHours,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSystemEventEndOfRegularMarketHours != null) {
      yield r'is_system_event_end_of_regular_market_hours';
      yield serializers.serialize(
        object.isSystemEventEndOfRegularMarketHours,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSystemEventEndOfSystemHours != null) {
      yield r'is_system_event_end_of_system_hours';
      yield serializers.serialize(
        object.isSystemEventEndOfSystemHours,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSystemEventEndOfMessages != null) {
      yield r'is_system_event_end_of_messages';
      yield serializers.serialize(
        object.isSystemEventEndOfMessages,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IEXSystemEventSystemEventModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IEXSystemEventSystemEventModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'system_event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.systemEvent = valueDes;
          break;
        case r'system_event_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.systemEventCode = valueDes;
          break;
        case r'system_event_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.systemEventText = valueDes;
          break;
        case r'is_system_event_start_of_messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isSystemEventStartOfMessages = valueDes;
          break;
        case r'is_system_event_start_of_system_hours':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isSystemEventStartOfSystemHours = valueDes;
          break;
        case r'is_system_event_start_of_regular_market_hours':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isSystemEventStartOfRegularMarketHours = valueDes;
          break;
        case r'is_system_event_end_of_regular_market_hours':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isSystemEventEndOfRegularMarketHours = valueDes;
          break;
        case r'is_system_event_end_of_system_hours':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isSystemEventEndOfSystemHours = valueDes;
          break;
        case r'is_system_event_end_of_messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isSystemEventEndOfMessages = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IEXSystemEventSystemEventModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IEXSystemEventSystemEventModelBuilder();
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


