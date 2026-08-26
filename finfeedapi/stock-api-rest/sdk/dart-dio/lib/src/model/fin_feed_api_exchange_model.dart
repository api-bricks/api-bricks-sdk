//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fin_feed_api_exchange_model.g.dart';

/// FinFeedAPIExchangeModel
///
/// Properties:
/// * [exchangeId] 
/// * [lastDatapointDate] 
/// * [mic] 
/// * [operatingMic] 
/// * [oprtSgmt] 
/// * [marketNameInstitutionDescription] 
/// * [legalEntityName] 
/// * [lei] 
/// * [marketCategoryCode] 
/// * [acronym] 
/// * [isoCountryCode] 
/// * [city] 
/// * [website] 
/// * [status] 
/// * [creationDate] 
/// * [lastUpdateDate] 
/// * [lastValidationDate] 
/// * [expiryDate] 
/// * [comments] 
@BuiltValue()
abstract class FinFeedAPIExchangeModel implements Built<FinFeedAPIExchangeModel, FinFeedAPIExchangeModelBuilder> {
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  @BuiltValueField(wireName: r'last_datapoint_date')
  String? get lastDatapointDate;

  @BuiltValueField(wireName: r'mic')
  String? get mic;

  @BuiltValueField(wireName: r'operating_mic')
  String? get operatingMic;

  @BuiltValueField(wireName: r'oprt_sgmt')
  String? get oprtSgmt;

  @BuiltValueField(wireName: r'market_name_institution_description')
  String? get marketNameInstitutionDescription;

  @BuiltValueField(wireName: r'legal_entity_name')
  String? get legalEntityName;

  @BuiltValueField(wireName: r'lei')
  String? get lei;

  @BuiltValueField(wireName: r'market_category_code')
  String? get marketCategoryCode;

  @BuiltValueField(wireName: r'acronym')
  String? get acronym;

  @BuiltValueField(wireName: r'iso_country_code')
  String? get isoCountryCode;

  @BuiltValueField(wireName: r'city')
  String? get city;

  @BuiltValueField(wireName: r'website')
  String? get website;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'creation_date')
  DateTime? get creationDate;

  @BuiltValueField(wireName: r'last_update_date')
  DateTime? get lastUpdateDate;

  @BuiltValueField(wireName: r'last_validation_date')
  DateTime? get lastValidationDate;

  @BuiltValueField(wireName: r'expiry_date')
  DateTime? get expiryDate;

  @BuiltValueField(wireName: r'comments')
  String? get comments;

  FinFeedAPIExchangeModel._();

  factory FinFeedAPIExchangeModel([void updates(FinFeedAPIExchangeModelBuilder b)]) = _$FinFeedAPIExchangeModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FinFeedAPIExchangeModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FinFeedAPIExchangeModel> get serializer => _$FinFeedAPIExchangeModelSerializer();
}

class _$FinFeedAPIExchangeModelSerializer implements PrimitiveSerializer<FinFeedAPIExchangeModel> {
  @override
  final Iterable<Type> types = const [FinFeedAPIExchangeModel, _$FinFeedAPIExchangeModel];

  @override
  final String wireName = r'FinFeedAPIExchangeModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FinFeedAPIExchangeModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastDatapointDate != null) {
      yield r'last_datapoint_date';
      yield serializers.serialize(
        object.lastDatapointDate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.mic != null) {
      yield r'mic';
      yield serializers.serialize(
        object.mic,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.operatingMic != null) {
      yield r'operating_mic';
      yield serializers.serialize(
        object.operatingMic,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.oprtSgmt != null) {
      yield r'oprt_sgmt';
      yield serializers.serialize(
        object.oprtSgmt,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.marketNameInstitutionDescription != null) {
      yield r'market_name_institution_description';
      yield serializers.serialize(
        object.marketNameInstitutionDescription,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.legalEntityName != null) {
      yield r'legal_entity_name';
      yield serializers.serialize(
        object.legalEntityName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lei != null) {
      yield r'lei';
      yield serializers.serialize(
        object.lei,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.marketCategoryCode != null) {
      yield r'market_category_code';
      yield serializers.serialize(
        object.marketCategoryCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.acronym != null) {
      yield r'acronym';
      yield serializers.serialize(
        object.acronym,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isoCountryCode != null) {
      yield r'iso_country_code';
      yield serializers.serialize(
        object.isoCountryCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.website != null) {
      yield r'website';
      yield serializers.serialize(
        object.website,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.creationDate != null) {
      yield r'creation_date';
      yield serializers.serialize(
        object.creationDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastUpdateDate != null) {
      yield r'last_update_date';
      yield serializers.serialize(
        object.lastUpdateDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastValidationDate != null) {
      yield r'last_validation_date';
      yield serializers.serialize(
        object.lastValidationDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.expiryDate != null) {
      yield r'expiry_date';
      yield serializers.serialize(
        object.expiryDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.comments != null) {
      yield r'comments';
      yield serializers.serialize(
        object.comments,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FinFeedAPIExchangeModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FinFeedAPIExchangeModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exchangeId = valueDes;
          break;
        case r'last_datapoint_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastDatapointDate = valueDes;
          break;
        case r'mic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mic = valueDes;
          break;
        case r'operating_mic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.operatingMic = valueDes;
          break;
        case r'oprt_sgmt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.oprtSgmt = valueDes;
          break;
        case r'market_name_institution_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.marketNameInstitutionDescription = valueDes;
          break;
        case r'legal_entity_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.legalEntityName = valueDes;
          break;
        case r'lei':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lei = valueDes;
          break;
        case r'market_category_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.marketCategoryCode = valueDes;
          break;
        case r'acronym':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.acronym = valueDes;
          break;
        case r'iso_country_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.isoCountryCode = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.city = valueDes;
          break;
        case r'website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.website = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'creation_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.creationDate = valueDes;
          break;
        case r'last_update_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastUpdateDate = valueDes;
          break;
        case r'last_validation_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastValidationDate = valueDes;
          break;
        case r'expiry_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiryDate = valueDes;
          break;
        case r'comments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comments = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FinFeedAPIExchangeModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FinFeedAPIExchangeModelBuilder();
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


