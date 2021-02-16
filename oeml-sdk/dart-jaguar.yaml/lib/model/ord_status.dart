import 'package:jaguar_serializer/jaguar_serializer.dart';



class OrdStatus {
  /// The underlying value of this enum member.
  final String value;

  const OrdStatus._internal(this.value);

  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus RECEIVED = const OrdStatus._internal('RECEIVED');
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus ROUTING = const OrdStatus._internal('ROUTING');
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus ROUTED = const OrdStatus._internal('ROUTED');
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus NEW = const OrdStatus._internal('NEW');
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus PENDING_CANCEL = const OrdStatus._internal('PENDING_CANCEL');
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus PARTIALLY_FILLED = const OrdStatus._internal('PARTIALLY_FILLED');
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus FILLED = const OrdStatus._internal('FILLED');
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus CANCELED = const OrdStatus._internal('CANCELED');
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus REJECTED = const OrdStatus._internal('REJECTED');
}

class OrdStatusFieldProcessor implements FieldProcessor<OrdStatus, String> {
    const OrdStatusFieldProcessor();

    OrdStatus deserialize(String data) {
        switch (data) {
            case 'RECEIVED': return OrdStatus.RECEIVED;
            case 'ROUTING': return OrdStatus.ROUTING;
            case 'ROUTED': return OrdStatus.ROUTED;
            case 'NEW': return OrdStatus.NEW;
            case 'PENDING_CANCEL': return OrdStatus.PENDING_CANCEL;
            case 'PARTIALLY_FILLED': return OrdStatus.PARTIALLY_FILLED;
            case 'FILLED': return OrdStatus.FILLED;
            case 'CANCELED': return OrdStatus.CANCELED;
            case 'REJECTED': return OrdStatus.REJECTED;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(OrdStatus item) {
        return item.value;
    }
}

