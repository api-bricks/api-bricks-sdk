//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/models_modify_order_model.dart';
import 'package:openapi/src/model/models_add_order_model.dart';
import 'package:openapi/src/model/models_delete_order_model.dart';
import 'package:openapi/src/model/models_clear_book_model.dart';
import 'package:openapi/src/model/models_executed_order_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_order_book_model.g.dart';

/// Represents the response DTO for Level-3 order book information
///
/// Properties:
/// * [addOrder] 
/// * [deleteOrder] 
/// * [modifyOrder] 
/// * [executedOrder] 
/// * [clearBook] 
@BuiltValue()
abstract class ModelsOrderBookModel implements Built<ModelsOrderBookModel, ModelsOrderBookModelBuilder> {
  @BuiltValueField(wireName: r'add_order')
  ModelsAddOrderModel? get addOrder;

  @BuiltValueField(wireName: r'delete_order')
  ModelsDeleteOrderModel? get deleteOrder;

  @BuiltValueField(wireName: r'modify_order')
  ModelsModifyOrderModel? get modifyOrder;

  @BuiltValueField(wireName: r'executed_order')
  ModelsExecutedOrderModel? get executedOrder;

  @BuiltValueField(wireName: r'clear_book')
  ModelsClearBookModel? get clearBook;

  ModelsOrderBookModel._();

  factory ModelsOrderBookModel([void updates(ModelsOrderBookModelBuilder b)]) = _$ModelsOrderBookModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsOrderBookModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsOrderBookModel> get serializer => _$ModelsOrderBookModelSerializer();
}

class _$ModelsOrderBookModelSerializer implements PrimitiveSerializer<ModelsOrderBookModel> {
  @override
  final Iterable<Type> types = const [ModelsOrderBookModel, _$ModelsOrderBookModel];

  @override
  final String wireName = r'ModelsOrderBookModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsOrderBookModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.addOrder != null) {
      yield r'add_order';
      yield serializers.serialize(
        object.addOrder,
        specifiedType: const FullType(ModelsAddOrderModel),
      );
    }
    if (object.deleteOrder != null) {
      yield r'delete_order';
      yield serializers.serialize(
        object.deleteOrder,
        specifiedType: const FullType(ModelsDeleteOrderModel),
      );
    }
    if (object.modifyOrder != null) {
      yield r'modify_order';
      yield serializers.serialize(
        object.modifyOrder,
        specifiedType: const FullType(ModelsModifyOrderModel),
      );
    }
    if (object.executedOrder != null) {
      yield r'executed_order';
      yield serializers.serialize(
        object.executedOrder,
        specifiedType: const FullType(ModelsExecutedOrderModel),
      );
    }
    if (object.clearBook != null) {
      yield r'clear_book';
      yield serializers.serialize(
        object.clearBook,
        specifiedType: const FullType(ModelsClearBookModel),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsOrderBookModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsOrderBookModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'add_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsAddOrderModel),
          ) as ModelsAddOrderModel?;
          if (valueDes == null) continue;
          result.addOrder.replace(valueDes);
          break;
        case r'delete_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsDeleteOrderModel),
          ) as ModelsDeleteOrderModel?;
          if (valueDes == null) continue;
          result.deleteOrder.replace(valueDes);
          break;
        case r'modify_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsModifyOrderModel),
          ) as ModelsModifyOrderModel?;
          if (valueDes == null) continue;
          result.modifyOrder.replace(valueDes);
          break;
        case r'executed_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsExecutedOrderModel),
          ) as ModelsExecutedOrderModel?;
          if (valueDes == null) continue;
          result.executedOrder.replace(valueDes);
          break;
        case r'clear_book':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelsClearBookModel),
          ) as ModelsClearBookModel?;
          if (valueDes == null) continue;
          result.clearBook.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsOrderBookModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsOrderBookModelBuilder();
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


