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

part 'api/cryptopunks_api.dart';
part 'api/cow_api.dart';
part 'api/curve_api.dart';
part 'api/dex_api.dart';
part 'api/metadata_api.dart';
part 'api/sushiswap_api.dart';
part 'api/uniswap_v2_api.dart';
part 'api/uniswap_v3_api.dart';

part 'model/cryptopunks_bid_dto.dart';
part 'model/cryptopunks_collection_dto.dart';
part 'model/cryptopunks_collection_daily_snapshot_dto.dart';
part 'model/cryptopunks_data_sources_dto.dart';
part 'model/cryptopunks_item_dto.dart';
part 'model/cryptopunks_market_place_dto.dart';
part 'model/cryptopunks_marketplace_daily_snapshot_dto.dart';
part 'model/cryptopunks_trade_dto.dart';
part 'model/cryptopunks_user_dto.dart';
part 'model/cow_order_dto.dart';
part 'model/cow_settlement_dto.dart';
part 'model/cow_token_dto.dart';
part 'model/cow_trade_dto.dart';
part 'model/cow_user_dto.dart';
part 'model/curve_account_dto.dart';
part 'model/curve_add_liquidity_event_dto.dart';
part 'model/curve_admin_fee_change_log_dto.dart';
part 'model/curve_amplification_coeff_change_log_dto.dart';
part 'model/curve_coin_dto.dart';
part 'model/curve_contract_dto.dart';
part 'model/curve_contract_version_dto.dart';
part 'model/curve_daily_volume_dto.dart';
part 'model/curve_exchange_dto.dart';
part 'model/curve_fee_change_log_dto.dart';
part 'model/curve_gauge_dto.dart';
part 'model/curve_gauge_deposit_dto.dart';
part 'model/curve_gauge_liquidity_dto.dart';
part 'model/curve_gauge_total_weight_dto.dart';
part 'model/curve_gauge_type_dto.dart';
part 'model/curve_gauge_type_weight_dto.dart';
part 'model/curve_gauge_weight_dto.dart';
part 'model/curve_gauge_weight_vote_dto.dart';
part 'model/curve_gauge_withdraw_dto.dart';
part 'model/curve_hourly_volume_dto.dart';
part 'model/curve_lp_token_dto.dart';
part 'model/curve_pool_dto.dart';
part 'model/curve_proposal_dto.dart';
part 'model/curve_proposal_vote_dto.dart';
part 'model/curve_remove_liquidity_event_dto.dart';
part 'model/curve_remove_liquidity_one_event_dto.dart';
part 'model/curve_system_state_dto.dart';
part 'model/curve_token_dto.dart';
part 'model/curve_transfer_ownership_event_dto.dart';
part 'model/curve_underlying_coin_dto.dart';
part 'model/curve_voting_app_dto.dart';
part 'model/curve_weekly_volume_dto.dart';
part 'model/dex_batch_dto.dart';
part 'model/dex_deposit_dto.dart';
part 'model/dex_order_dto.dart';
part 'model/dex_price_dto.dart';
part 'model/dex_solution_dto.dart';
part 'model/dex_stats_dto.dart';
part 'model/dex_token_dto.dart';
part 'model/dex_trade_dto.dart';
part 'model/dex_user_dto.dart';
part 'model/dex_withdraw_dto.dart';
part 'model/dex_withdraw_request_dto.dart';
part 'model/numerics_big_integer.dart';
part 'model/sushiswap_bundle_dto.dart';
part 'model/sushiswap_burn_dto.dart';
part 'model/sushiswap_day_data_dto.dart';
part 'model/sushiswap_factory_dto.dart';
part 'model/sushiswap_hour_data_dto.dart';
part 'model/sushiswap_liquidity_position_dto.dart';
part 'model/sushiswap_liquidity_position_snapshot_dto.dart';
part 'model/sushiswap_mint_dto.dart';
part 'model/sushiswap_pair_dto.dart';
part 'model/sushiswap_pair_day_data_dto.dart';
part 'model/sushiswap_pair_hour_data_dto.dart';
part 'model/sushiswap_swap_dto.dart';
part 'model/sushiswap_token_dto.dart';
part 'model/sushiswap_token_day_data_dto.dart';
part 'model/sushiswap_transaction_dto.dart';
part 'model/sushiswap_user_dto.dart';
part 'model/transactions_e_trade_aggressive_side.dart';
part 'model/uniswap_v2_bundle_dto.dart';
part 'model/uniswap_v2_burn_dto.dart';
part 'model/uniswap_v2_liquidity_position_dto.dart';
part 'model/uniswap_v2_liquidity_position_snapshot_dto.dart';
part 'model/uniswap_v2_mint_dto.dart';
part 'model/uniswap_v2_pair_dto.dart';
part 'model/uniswap_v2_pair_day_data_dto.dart';
part 'model/uniswap_v2_pair_hour_data_dto.dart';
part 'model/uniswap_v2_swap_dto.dart';
part 'model/uniswap_v2_token_dto.dart';
part 'model/uniswap_v2_token_day_data_dto.dart';
part 'model/uniswap_v2_transaction_dto.dart';
part 'model/uniswap_v2_uniswap_day_data_dto.dart';
part 'model/uniswap_v2_uniswap_factory_dto.dart';
part 'model/uniswap_v2_user_dto.dart';
part 'model/uniswap_v3_bundle_dto.dart';
part 'model/uniswap_v3_burn_dto.dart';
part 'model/uniswap_v3_factory_dto.dart';
part 'model/uniswap_v3_mint_dto.dart';
part 'model/uniswap_v3_pool_dto.dart';
part 'model/uniswap_v3_pool_day_data_dto.dart';
part 'model/uniswap_v3_pool_hour_data_dto.dart';
part 'model/uniswap_v3_position_dto.dart';
part 'model/uniswap_v3_position_snapshot_dto.dart';
part 'model/uniswap_v3_swap_dto.dart';
part 'model/uniswap_v3_tick_dto.dart';
part 'model/uniswap_v3_tick_day_data_dto.dart';
part 'model/uniswap_v3_token_dto.dart';
part 'model/uniswap_v3_token_hour_data_dto.dart';
part 'model/uniswap_v3_token_v3_day_data_dto.dart';
part 'model/uniswap_v3_transaction_dto.dart';
part 'model/uniswap_v3_uniswap_day_data_dto.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
