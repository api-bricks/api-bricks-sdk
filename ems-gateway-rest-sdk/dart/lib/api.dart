//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/balances_api.dart';
part 'api/orders_api.dart';
part 'api/positions_api.dart';

part 'model/balance.dart';
part 'model/balance_data_inner.dart';
part 'model/fills.dart';
part 'model/message_error.dart';
part 'model/message_reject.dart';
part 'model/ord_side.dart';
part 'model/ord_status.dart';
part 'model/ord_type.dart';
part 'model/order_cancel_all_request.dart';
part 'model/order_cancel_single_request.dart';
part 'model/order_execution_report.dart';
part 'model/order_execution_report_all_of.dart';
part 'model/order_history.dart';
part 'model/order_new_single_request.dart';
part 'model/position.dart';
part 'model/position_data_inner.dart';
part 'model/reject_reason.dart';
part 'model/time_in_force.dart';
part 'model/validation_error.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
