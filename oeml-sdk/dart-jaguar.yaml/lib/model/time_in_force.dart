import 'package:jaguar_serializer/jaguar_serializer.dart';



class TimeInForce {
  /// The underlying value of this enum member.
  final String value;

  const TimeInForce._internal(this.value);

  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  static const TimeInForce GOOD_TILL_CANCEL = const TimeInForce._internal('GOOD_TILL_CANCEL');
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  static const TimeInForce GOOD_TILL_TIME_EXCHANGE = const TimeInForce._internal('GOOD_TILL_TIME_EXCHANGE');
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  static const TimeInForce GOOD_TILL_TIME_OMS = const TimeInForce._internal('GOOD_TILL_TIME_OMS');
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  static const TimeInForce FILL_OR_KILL = const TimeInForce._internal('FILL_OR_KILL');
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  static const TimeInForce IMMEDIATE_OR_CANCEL = const TimeInForce._internal('IMMEDIATE_OR_CANCEL');
}

class TimeInForceFieldProcessor implements FieldProcessor<TimeInForce, String> {
    const TimeInForceFieldProcessor();

    TimeInForce deserialize(String data) {
        switch (data) {
            case 'GOOD_TILL_CANCEL': return TimeInForce.GOOD_TILL_CANCEL;
            case 'GOOD_TILL_TIME_EXCHANGE': return TimeInForce.GOOD_TILL_TIME_EXCHANGE;
            case 'GOOD_TILL_TIME_OMS': return TimeInForce.GOOD_TILL_TIME_OMS;
            case 'FILL_OR_KILL': return TimeInForce.FILL_OR_KILL;
            case 'IMMEDIATE_OR_CANCEL': return TimeInForce.IMMEDIATE_OR_CANCEL;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(TimeInForce item) {
        return item.value;
    }
}

