//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/models_trading_status_model.dart';
import 'package:openapi/src/model/models_official_price_model.dart';
import 'package:openapi/src/model/models_operational_halt_status_model.dart';
import 'package:openapi/src/model/models_retail_liquidity_indicator_model.dart';
import 'package:openapi/src/model/models_security_directory_model.dart';
import 'package:openapi/src/model/models_security_event_model.dart';
import 'package:openapi/src/model/iex_system_event_system_event_model.dart';
import 'package:openapi/src/model/models_short_sale_price_test_status_model.dart';
import 'package:openapi/src/model/models_auction_information_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_admin_message_model.g.dart';

/// Represents the response DTO for IEX admin information, combining all symbol-based admin message types
///
/// Properties:
/// * [tradingStatus] 
/// * [officialPrice] 
/// * [securityEvent] 
/// * [auctionInformation] 
/// * [shortSalePriceTest] 
/// * [operationalHaltStatus] 
/// * [retailLiquidityIndicator] 
/// * [systemEvent] 
/// * [securityDirectory] 
@BuiltValue()
abstract class ModelsAdminMessageModel implements Built<ModelsAdminMessageModel, ModelsAdminMessageModelBuilder> {
  @BuiltValueField(wireName: r'trading_status')
  ModelsTradingStatusModel? get tradingStatus;

  @BuiltValueField(wireName: r'official_price')
  ModelsOfficialPriceModel? get officialPrice;

  @BuiltValueField(wireName: r'security_event')
  ModelsSecurityEventModel? get securityEvent;

  @BuiltValueField(wireName: r'auction_information')
  ModelsAuctionInformationModel? get auctionInformation;

  @BuiltValueField(wireName: r'short_sale_price_test')
  ModelsShortSalePriceTestStatusModel? get shortSalePriceTest;

  @BuiltValueField(wireName: r'operational_halt_status')
  ModelsOperationalHaltStatusModel? get operationalHaltStatus;

  @BuiltValueField(wireName: r'retail_liquidity_indicator')
  ModelsRetailLiquidityIndicatorModel? get retailLiquidityIndicator;

  @BuiltValueField(wireName: r'system_event')
  IEXSystemEventSystemEventModel? get systemEvent;

  @BuiltValueField(wireName: r'security_directory')
  ModelsSecurityDirectoryModel? get securityDirectory;

  ModelsAdminMessageModel._();

  factory ModelsAdminMessageModel([void updates(ModelsAdminMessageModelBuilder b)]) = _$ModelsAdminMessageModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsAdminMessageModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsAdminMessageModel> get serializer => _$ModelsAdminMessageModelSerializer();
}

class _$ModelsAdminMessageModelSerializer implements PrimitiveSerializer<ModelsAdminMessageModel> {
  @override
  final Iterable<Type> types = const [ModelsAdminMessageModel, _$ModelsAdminMessageModel];

  @override
  final String wireName = r'ModelsAdminMessageModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsAdminMessageModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tradingStatus != null) {
      yield r'trading_status';
      yield serializers.serialize(
        object.tradingStatus,
        specifiedType: const FullType(ModelsTradingStatusModel),
      );
    }
    if (object.officialPrice != null) {
      yield r'official_price';
      yield serializers.serialize(
        object.officialPrice,
        specifiedType: const FullType(ModelsOfficialPriceModel),
      );
    }
    if (object.securityEvent != null) {
      yield r'security_event';
      yield serializers.serialize(
        object.securityEvent,
        specifiedType: const FullType(ModelsSecurityEventModel),
      );
    }
    if (object.auctionInformation != null) {
      yield r'auction_information';
      yield serializers.serialize(
        object.auctionInformation,
        specifiedType: const FullType(ModelsAuctionInformationModel),
      );
    }
    if (object.shortSalePriceTest != null) {
      yield r'short_sale_price_test';
      yield serializers.serialize(
        object.shortSalePriceTest,
        specifiedType: const FullType(ModelsShortSalePriceTestStatusModel),
      );
    }
    if (object.operationalHaltStatus != null) {
      yield r'operational_halt_status';
      yield serializers.serialize(
        object.operationalHaltStatus,
        specifiedType: const FullType(ModelsOperationalHaltStatusModel),
      );
    }
    if (object.retailLiquidityIndicator != null) {
      yield r'retail_liquidity_indicator';
      yield serializers.serialize(
        object.retailLiquidityIndicator,
        specifiedType: const FullType(ModelsRetailLiquidityIndicatorModel),
      );
    }
    if (object.systemEvent != null) {
      yield r'system_event';
      yield serializers.serialize(
        object.systemEvent,
        specifiedType: const FullType(IEXSystemEventSystemEventModel),
      );
    }
    if (object.securityDirectory != null) {
      yield r'security_directory';
      yield serializers.serialize(
        object.securityDirectory,
        specifiedType: const FullType(ModelsSecurityDirectoryModel),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsAdminMessageModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsAdminMessageModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'trading_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsTradingStatusModel),
          ) as ModelsTradingStatusModel?;
          if (valueDes == null) continue;
          result.tradingStatus.replace(valueDes);
          break;
        case r'official_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsOfficialPriceModel),
          ) as ModelsOfficialPriceModel?;
          if (valueDes == null) continue;
          result.officialPrice.replace(valueDes);
          break;
        case r'security_event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsSecurityEventModel),
          ) as ModelsSecurityEventModel?;
          if (valueDes == null) continue;
          result.securityEvent.replace(valueDes);
          break;
        case r'auction_information':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsAuctionInformationModel),
          ) as ModelsAuctionInformationModel?;
          if (valueDes == null) continue;
          result.auctionInformation.replace(valueDes);
          break;
        case r'short_sale_price_test':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsShortSalePriceTestStatusModel),
          ) as ModelsShortSalePriceTestStatusModel?;
          if (valueDes == null) continue;
          result.shortSalePriceTest.replace(valueDes);
          break;
        case r'operational_halt_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsOperationalHaltStatusModel),
          ) as ModelsOperationalHaltStatusModel?;
          if (valueDes == null) continue;
          result.operationalHaltStatus.replace(valueDes);
          break;
        case r'retail_liquidity_indicator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsRetailLiquidityIndicatorModel),
          ) as ModelsRetailLiquidityIndicatorModel?;
          if (valueDes == null) continue;
          result.retailLiquidityIndicator.replace(valueDes);
          break;
        case r'system_event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IEXSystemEventSystemEventModel),
          ) as IEXSystemEventSystemEventModel?;
          if (valueDes == null) continue;
          result.systemEvent.replace(valueDes);
          break;
        case r'security_directory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsSecurityDirectoryModel),
          ) as ModelsSecurityDirectoryModel?;
          if (valueDes == null) continue;
          result.securityDirectory.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsAdminMessageModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsAdminMessageModelBuilder();
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


