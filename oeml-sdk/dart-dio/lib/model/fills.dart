import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fills.g.dart';

abstract class Fills implements Built<Fills, FillsBuilder> {

    /// Execution time.
    @nullable
    @BuiltValueField(wireName: r'time')
    DateTime get time;

    /// Execution price.
    @nullable
    @BuiltValueField(wireName: r'price')
    num get price;

    /// Executed quantity.
    @nullable
    @BuiltValueField(wireName: r'amount')
    num get amount;

    // Boilerplate code needed to wire-up generated code
    Fills._();

    static void _initializeBuilder(FillsBuilder b) => b;

    factory Fills([updates(FillsBuilder b)]) = _$Fills;
    static Serializer<Fills> get serializer => _$fillsSerializer;
}

