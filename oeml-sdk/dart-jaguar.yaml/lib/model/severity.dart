import 'package:jaguar_serializer/jaguar_serializer.dart';



class Severity {
  /// The underlying value of this enum member.
  final String value;

  const Severity._internal(this.value);

  /// Severity of the message.
  static const Severity INFO = const Severity._internal('INFO');
  /// Severity of the message.
  static const Severity WARNING = const Severity._internal('WARNING');
  /// Severity of the message.
  static const Severity ERROR = const Severity._internal('ERROR');
}

class SeverityFieldProcessor implements FieldProcessor<Severity, String> {
    const SeverityFieldProcessor();

    Severity deserialize(String data) {
        switch (data) {
            case 'INFO': return Severity.INFO;
            case 'WARNING': return Severity.WARNING;
            case 'ERROR': return Severity.ERROR;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(Severity item) {
        return item.value;
    }
}

