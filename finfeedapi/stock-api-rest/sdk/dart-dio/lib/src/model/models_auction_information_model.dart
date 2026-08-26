//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_auction_information_model.g.dart';

/// Represents the response DTO for auction information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the auction data was recorded as DateTime
/// * [auctionType] - Type of auction as byte value
/// * [auctionTypeCode] - Type of auction as character string
/// * [auctionTypeText] - Human-readable description of the auction type
/// * [isAuctionTypeOpening] - Indicates if the auction type is 'Opening Auction' ('O'/0x4f).
/// * [isAuctionTypeClosing] - Indicates if the auction type is 'Closing Auction' ('C'/0x43).
/// * [isAuctionTypeIpo] - Indicates if the auction type is 'IPO Auction' ('I'/0x49).
/// * [isAuctionTypeHalt] - Indicates if the auction type is 'Halt Auction' ('H'/0x48).
/// * [isAuctionTypeVolatility] - Indicates if the auction type is 'Volatility Auction' ('V'/0x56).
/// * [pairedShares] - Number of shares paired at the Reference Price
/// * [referencePrice] - Reference price as decimal
/// * [indicativeClearingPrice] - Indicative clearing price as decimal
/// * [imbalanceShares] - Number of unpaired shares at the Reference Price
/// * [imbalanceSide] - Side of the imbalance as byte value
/// * [imbalanceSideCode] - Side of the imbalance as character string
/// * [imbalanceSideText] - Human-readable description of the imbalance side
/// * [isImbalanceSideBuy] - Indicates if there is a buy-side imbalance ('B'/0x42).
/// * [isImbalanceSideSell] - Indicates if there is a sell-side imbalance ('S'/0x53).
/// * [isImbalanceSideNone] - Indicates if there is no imbalance ('N'/0x4e).
/// * [extensionNumber] - Number of extensions to the auction
/// * [scheduledAuctionTimeSeconds] - Scheduled auction time in seconds since epoch
/// * [scheduledAuctionTime] - Scheduled time for the auction as DateTime
/// * [auctionBookClearingPrice] - Auction book clearing price as decimal
/// * [collarReferencePrice] - Collar reference price as decimal
/// * [lowerAuctionCollar] - Lower auction collar as decimal
/// * [upperAuctionCollar] - Upper auction collar as decimal
@BuiltValue()
abstract class ModelsAuctionInformationModel implements Built<ModelsAuctionInformationModel, ModelsAuctionInformationModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the auction data was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Type of auction as byte value
  @BuiltValueField(wireName: r'auction_type')
  int? get auctionType;

  /// Type of auction as character string
  @BuiltValueField(wireName: r'auction_type_code')
  String? get auctionTypeCode;

  /// Human-readable description of the auction type
  @BuiltValueField(wireName: r'auction_type_text')
  String? get auctionTypeText;

  /// Indicates if the auction type is 'Opening Auction' ('O'/0x4f).
  @BuiltValueField(wireName: r'is_auction_type_opening')
  bool? get isAuctionTypeOpening;

  /// Indicates if the auction type is 'Closing Auction' ('C'/0x43).
  @BuiltValueField(wireName: r'is_auction_type_closing')
  bool? get isAuctionTypeClosing;

  /// Indicates if the auction type is 'IPO Auction' ('I'/0x49).
  @BuiltValueField(wireName: r'is_auction_type_ipo')
  bool? get isAuctionTypeIpo;

  /// Indicates if the auction type is 'Halt Auction' ('H'/0x48).
  @BuiltValueField(wireName: r'is_auction_type_halt')
  bool? get isAuctionTypeHalt;

  /// Indicates if the auction type is 'Volatility Auction' ('V'/0x56).
  @BuiltValueField(wireName: r'is_auction_type_volatility')
  bool? get isAuctionTypeVolatility;

  /// Number of shares paired at the Reference Price
  @BuiltValueField(wireName: r'paired_shares')
  int? get pairedShares;

  /// Reference price as decimal
  @BuiltValueField(wireName: r'reference_price')
  double? get referencePrice;

  /// Indicative clearing price as decimal
  @BuiltValueField(wireName: r'indicative_clearing_price')
  double? get indicativeClearingPrice;

  /// Number of unpaired shares at the Reference Price
  @BuiltValueField(wireName: r'imbalance_shares')
  int? get imbalanceShares;

  /// Side of the imbalance as byte value
  @BuiltValueField(wireName: r'imbalance_side')
  int? get imbalanceSide;

  /// Side of the imbalance as character string
  @BuiltValueField(wireName: r'imbalance_side_code')
  String? get imbalanceSideCode;

  /// Human-readable description of the imbalance side
  @BuiltValueField(wireName: r'imbalance_side_text')
  String? get imbalanceSideText;

  /// Indicates if there is a buy-side imbalance ('B'/0x42).
  @BuiltValueField(wireName: r'is_imbalance_side_buy')
  bool? get isImbalanceSideBuy;

  /// Indicates if there is a sell-side imbalance ('S'/0x53).
  @BuiltValueField(wireName: r'is_imbalance_side_sell')
  bool? get isImbalanceSideSell;

  /// Indicates if there is no imbalance ('N'/0x4e).
  @BuiltValueField(wireName: r'is_imbalance_side_none')
  bool? get isImbalanceSideNone;

  /// Number of extensions to the auction
  @BuiltValueField(wireName: r'extension_number')
  int? get extensionNumber;

  /// Scheduled auction time in seconds since epoch
  @BuiltValueField(wireName: r'scheduled_auction_time_seconds')
  int? get scheduledAuctionTimeSeconds;

  /// Scheduled time for the auction as DateTime
  @BuiltValueField(wireName: r'scheduled_auction_time')
  DateTime? get scheduledAuctionTime;

  /// Auction book clearing price as decimal
  @BuiltValueField(wireName: r'auction_book_clearing_price')
  double? get auctionBookClearingPrice;

  /// Collar reference price as decimal
  @BuiltValueField(wireName: r'collar_reference_price')
  double? get collarReferencePrice;

  /// Lower auction collar as decimal
  @BuiltValueField(wireName: r'lower_auction_collar')
  double? get lowerAuctionCollar;

  /// Upper auction collar as decimal
  @BuiltValueField(wireName: r'upper_auction_collar')
  double? get upperAuctionCollar;

  ModelsAuctionInformationModel._();

  factory ModelsAuctionInformationModel([void updates(ModelsAuctionInformationModelBuilder b)]) = _$ModelsAuctionInformationModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsAuctionInformationModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsAuctionInformationModel> get serializer => _$ModelsAuctionInformationModelSerializer();
}

class _$ModelsAuctionInformationModelSerializer implements PrimitiveSerializer<ModelsAuctionInformationModel> {
  @override
  final Iterable<Type> types = const [ModelsAuctionInformationModel, _$ModelsAuctionInformationModel];

  @override
  final String wireName = r'ModelsAuctionInformationModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsAuctionInformationModel object, {
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
    if (object.auctionType != null) {
      yield r'auction_type';
      yield serializers.serialize(
        object.auctionType,
        specifiedType: const FullType(int),
      );
    }
    if (object.auctionTypeCode != null) {
      yield r'auction_type_code';
      yield serializers.serialize(
        object.auctionTypeCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.auctionTypeText != null) {
      yield r'auction_type_text';
      yield serializers.serialize(
        object.auctionTypeText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isAuctionTypeOpening != null) {
      yield r'is_auction_type_opening';
      yield serializers.serialize(
        object.isAuctionTypeOpening,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isAuctionTypeClosing != null) {
      yield r'is_auction_type_closing';
      yield serializers.serialize(
        object.isAuctionTypeClosing,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isAuctionTypeIpo != null) {
      yield r'is_auction_type_ipo';
      yield serializers.serialize(
        object.isAuctionTypeIpo,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isAuctionTypeHalt != null) {
      yield r'is_auction_type_halt';
      yield serializers.serialize(
        object.isAuctionTypeHalt,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isAuctionTypeVolatility != null) {
      yield r'is_auction_type_volatility';
      yield serializers.serialize(
        object.isAuctionTypeVolatility,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pairedShares != null) {
      yield r'paired_shares';
      yield serializers.serialize(
        object.pairedShares,
        specifiedType: const FullType(int),
      );
    }
    if (object.referencePrice != null) {
      yield r'reference_price';
      yield serializers.serialize(
        object.referencePrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.indicativeClearingPrice != null) {
      yield r'indicative_clearing_price';
      yield serializers.serialize(
        object.indicativeClearingPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.imbalanceShares != null) {
      yield r'imbalance_shares';
      yield serializers.serialize(
        object.imbalanceShares,
        specifiedType: const FullType(int),
      );
    }
    if (object.imbalanceSide != null) {
      yield r'imbalance_side';
      yield serializers.serialize(
        object.imbalanceSide,
        specifiedType: const FullType(int),
      );
    }
    if (object.imbalanceSideCode != null) {
      yield r'imbalance_side_code';
      yield serializers.serialize(
        object.imbalanceSideCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.imbalanceSideText != null) {
      yield r'imbalance_side_text';
      yield serializers.serialize(
        object.imbalanceSideText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isImbalanceSideBuy != null) {
      yield r'is_imbalance_side_buy';
      yield serializers.serialize(
        object.isImbalanceSideBuy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isImbalanceSideSell != null) {
      yield r'is_imbalance_side_sell';
      yield serializers.serialize(
        object.isImbalanceSideSell,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isImbalanceSideNone != null) {
      yield r'is_imbalance_side_none';
      yield serializers.serialize(
        object.isImbalanceSideNone,
        specifiedType: const FullType(bool),
      );
    }
    if (object.extensionNumber != null) {
      yield r'extension_number';
      yield serializers.serialize(
        object.extensionNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.scheduledAuctionTimeSeconds != null) {
      yield r'scheduled_auction_time_seconds';
      yield serializers.serialize(
        object.scheduledAuctionTimeSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.scheduledAuctionTime != null) {
      yield r'scheduled_auction_time';
      yield serializers.serialize(
        object.scheduledAuctionTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.auctionBookClearingPrice != null) {
      yield r'auction_book_clearing_price';
      yield serializers.serialize(
        object.auctionBookClearingPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.collarReferencePrice != null) {
      yield r'collar_reference_price';
      yield serializers.serialize(
        object.collarReferencePrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.lowerAuctionCollar != null) {
      yield r'lower_auction_collar';
      yield serializers.serialize(
        object.lowerAuctionCollar,
        specifiedType: const FullType(double),
      );
    }
    if (object.upperAuctionCollar != null) {
      yield r'upper_auction_collar';
      yield serializers.serialize(
        object.upperAuctionCollar,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsAuctionInformationModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsAuctionInformationModelBuilder result,
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
        case r'auction_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.auctionType = valueDes;
          break;
        case r'auction_type_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.auctionTypeCode = valueDes;
          break;
        case r'auction_type_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.auctionTypeText = valueDes;
          break;
        case r'is_auction_type_opening':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isAuctionTypeOpening = valueDes;
          break;
        case r'is_auction_type_closing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isAuctionTypeClosing = valueDes;
          break;
        case r'is_auction_type_ipo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isAuctionTypeIpo = valueDes;
          break;
        case r'is_auction_type_halt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isAuctionTypeHalt = valueDes;
          break;
        case r'is_auction_type_volatility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isAuctionTypeVolatility = valueDes;
          break;
        case r'paired_shares':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pairedShares = valueDes;
          break;
        case r'reference_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.referencePrice = valueDes;
          break;
        case r'indicative_clearing_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.indicativeClearingPrice = valueDes;
          break;
        case r'imbalance_shares':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.imbalanceShares = valueDes;
          break;
        case r'imbalance_side':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.imbalanceSide = valueDes;
          break;
        case r'imbalance_side_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imbalanceSideCode = valueDes;
          break;
        case r'imbalance_side_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imbalanceSideText = valueDes;
          break;
        case r'is_imbalance_side_buy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isImbalanceSideBuy = valueDes;
          break;
        case r'is_imbalance_side_sell':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isImbalanceSideSell = valueDes;
          break;
        case r'is_imbalance_side_none':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isImbalanceSideNone = valueDes;
          break;
        case r'extension_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.extensionNumber = valueDes;
          break;
        case r'scheduled_auction_time_seconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.scheduledAuctionTimeSeconds = valueDes;
          break;
        case r'scheduled_auction_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.scheduledAuctionTime = valueDes;
          break;
        case r'auction_book_clearing_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.auctionBookClearingPrice = valueDes;
          break;
        case r'collar_reference_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.collarReferencePrice = valueDes;
          break;
        case r'lower_auction_collar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.lowerAuctionCollar = valueDes;
          break;
        case r'upper_auction_collar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.upperAuctionCollar = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsAuctionInformationModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsAuctionInformationModelBuilder();
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


