library openapi.api;

import 'package:http/http.dart' as http;
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:openapi/auth/api_key_auth.dart';
import 'package:openapi/auth/basic_auth.dart';
import 'package:openapi/auth/oauth.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';

import 'package:openapi/api/balances_api.dart';
import 'package:openapi/api/orders_api.dart';
import 'package:openapi/api/positions_api.dart';

import 'package:openapi/model/balance.dart';
import 'package:openapi/model/balance_data.dart';
import 'package:openapi/model/fills.dart';
import 'package:openapi/model/message.dart';
import 'package:openapi/model/ord_side.dart';
import 'package:openapi/model/ord_status.dart';
import 'package:openapi/model/ord_type.dart';
import 'package:openapi/model/order_cancel_all_request.dart';
import 'package:openapi/model/order_cancel_single_request.dart';
import 'package:openapi/model/order_execution_report.dart';
import 'package:openapi/model/order_execution_report_all_of.dart';
import 'package:openapi/model/order_new_single_request.dart';
import 'package:openapi/model/position.dart';
import 'package:openapi/model/position_data.dart';
import 'package:openapi/model/severity.dart';
import 'package:openapi/model/time_in_force.dart';
import 'package:openapi/model/validation_error.dart';



final _jsonJaguarRepo = JsonRepo()
..add(BalanceSerializer())
..add(BalanceDataSerializer())
..add(FillsSerializer())
..add(MessageSerializer())



..add(OrderCancelAllRequestSerializer())
..add(OrderCancelSingleRequestSerializer())
..add(OrderExecutionReportSerializer())
..add(OrderExecutionReportAllOfSerializer())
..add(OrderNewSingleRequestSerializer())
..add(PositionSerializer())
..add(PositionDataSerializer())


..add(ValidationErrorSerializer())
;
final Map<String, CodecRepo> defaultConverters = {
    MimeTypes.json: _jsonJaguarRepo,
};



final _defaultInterceptors = [OAuthInterceptor(), BasicAuthInterceptor(), ApiKeyAuthInterceptor()];

class Openapi {
    List<Interceptor> interceptors;
    String basePath = "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io";
    Route _baseRoute;
    final Duration timeout;

    /**
    * Add custom global interceptors, put overrideInterceptors to true to set your interceptors only (auth interceptors will not be added)
    */
    Openapi({List<Interceptor> interceptors, bool overrideInterceptors = false, String baseUrl, this.timeout = const Duration(minutes: 2)}) {
        _baseRoute = Route(baseUrl ?? basePath).withClient(globalClient ?? http.Client());
        if(interceptors == null) {
            this.interceptors = _defaultInterceptors;
        }
        else if(overrideInterceptors){
            this.interceptors = interceptors;
        }
        else {
            this.interceptors = List.from(_defaultInterceptors)..addAll(interceptors);
        }

        this.interceptors.forEach((interceptor) {
            _baseRoute.before(interceptor.before);
            _baseRoute.after(interceptor.after);
        });
    }

    void setOAuthToken(String name, String token) {
        (_defaultInterceptors[0] as OAuthInterceptor).tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (_defaultInterceptors[1] as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (_defaultInterceptors[2] as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }

    
    /**
    * Get BalancesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    BalancesApi getBalancesApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return BalancesApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get OrdersApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    OrdersApi getOrdersApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return OrdersApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get PositionsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    PositionsApi getPositionsApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return PositionsApi(base: base, converters: converters, timeout: timeout);
    }

    
}
