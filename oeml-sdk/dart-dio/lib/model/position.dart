import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/position_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'position.g.dart';

abstract class Position implements Built<Position, PositionBuilder> {

    /// Exchange identifier used to identify the routing destination.
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    @nullable
    @BuiltValueField(wireName: r'data')
    BuiltList<PositionData> get data;

    // Boilerplate code needed to wire-up generated code
    Position._();

    static void _initializeBuilder(PositionBuilder b) => b;

    factory Position([updates(PositionBuilder b)]) = _$Position;
    static Serializer<Position> get serializer => _$positionSerializer;
}

