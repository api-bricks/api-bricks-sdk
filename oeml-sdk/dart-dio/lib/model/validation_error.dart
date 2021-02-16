import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error.g.dart';

abstract class ValidationError implements Built<ValidationError, ValidationErrorBuilder> {

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'status')
    num get status;

    @nullable
    @BuiltValueField(wireName: r'traceId')
    String get traceId;

    @nullable
    @BuiltValueField(wireName: r'errors')
    String get errors;

    // Boilerplate code needed to wire-up generated code
    ValidationError._();

    static void _initializeBuilder(ValidationErrorBuilder b) => b;

    factory ValidationError([updates(ValidationErrorBuilder b)]) = _$ValidationError;
    static Serializer<ValidationError> get serializer => _$validationErrorSerializer;
}

