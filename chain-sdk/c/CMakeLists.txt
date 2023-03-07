cmake_minimum_required (VERSION 2.6...3.10.2)
project (CGenerator)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_CXX_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

find_package(OpenSSL)

if (OPENSSL_FOUND)
    message (STATUS "OPENSSL found")

    set(CMAKE_C_FLAGS "-DOPENSSL")
    if(CMAKE_VERSION VERSION_LESS 3.4)
        include_directories(${OPENSSL_INCLUDE_DIR})
        include_directories(${OPENSSL_INCLUDE_DIRS})
        link_directories(${OPENSSL_LIBRARIES})
    endif()

    message(STATUS "Using OpenSSL ${OPENSSL_VERSION}")
else()
    message (STATUS "OpenSSL Not found.")
endif()

set(pkgName "on_chain_dapps___rest_api")

# this default version can be overridden in PreTarget.cmake
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_PATCH 1)

if( (DEFINED CURL_INCLUDE_DIR) AND (DEFINED CURL_LIBRARIES))
    include_directories(${CURL_INCLUDE_DIR})
    set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else()
    find_package(CURL 7.58.0 REQUIRED)
    if(CURL_FOUND)
        include_directories(${CURL_INCLUDE_DIR})
        set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
    else(CURL_FOUND)
        message(FATAL_ERROR "Could not find the CURL library and development files.")
    endif()
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    src/binary.c
    external/cJSON.c
    model/object.c
    model/cow_order_dto.c
    model/cow_settlement_dto.c
    model/cow_token_dto.c
    model/cow_trade_dto.c
    model/cow_user_dto.c
    model/cryptopunks_bid_dto.c
    model/cryptopunks_collection_daily_snapshot_dto.c
    model/cryptopunks_collection_dto.c
    model/cryptopunks_data_sources_dto.c
    model/cryptopunks_item_dto.c
    model/cryptopunks_market_place_dto.c
    model/cryptopunks_marketplace_daily_snapshot_dto.c
    model/cryptopunks_trade_dto.c
    model/cryptopunks_user_dto.c
    model/curve_account_dto.c
    model/curve_add_liquidity_event_dto.c
    model/curve_admin_fee_change_log_dto.c
    model/curve_amplification_coeff_change_log_dto.c
    model/curve_coin_dto.c
    model/curve_contract_dto.c
    model/curve_contract_version_dto.c
    model/curve_daily_volume_dto.c
    model/curve_exchange_dto.c
    model/curve_fee_change_log_dto.c
    model/curve_gauge_deposit_dto.c
    model/curve_gauge_dto.c
    model/curve_gauge_liquidity_dto.c
    model/curve_gauge_total_weight_dto.c
    model/curve_gauge_type_dto.c
    model/curve_gauge_type_weight_dto.c
    model/curve_gauge_weight_dto.c
    model/curve_gauge_weight_vote_dto.c
    model/curve_gauge_withdraw_dto.c
    model/curve_hourly_volume_dto.c
    model/curve_lp_token_dto.c
    model/curve_pool_dto.c
    model/curve_proposal_dto.c
    model/curve_proposal_vote_dto.c
    model/curve_remove_liquidity_event_dto.c
    model/curve_remove_liquidity_one_event_dto.c
    model/curve_system_state_dto.c
    model/curve_token_dto.c
    model/curve_transfer_ownership_event_dto.c
    model/curve_underlying_coin_dto.c
    model/curve_voting_app_dto.c
    model/curve_weekly_volume_dto.c
    model/dex_batch_dto.c
    model/dex_deposit_dto.c
    model/dex_order_dto.c
    model/dex_price_dto.c
    model/dex_solution_dto.c
    model/dex_stats_dto.c
    model/dex_token_dto.c
    model/dex_trade_dto.c
    model/dex_user_dto.c
    model/dex_withdraw_dto.c
    model/dex_withdraw_request_dto.c
    model/numerics_big_integer.c
    model/sushiswap_bundle_dto.c
    model/sushiswap_burn_dto.c
    model/sushiswap_day_data_dto.c
    model/sushiswap_factory_dto.c
    model/sushiswap_hour_data_dto.c
    model/sushiswap_liquidity_position_dto.c
    model/sushiswap_liquidity_position_snapshot_dto.c
    model/sushiswap_mint_dto.c
    model/sushiswap_pair_day_data_dto.c
    model/sushiswap_pair_dto.c
    model/sushiswap_pair_hour_data_dto.c
    model/sushiswap_swap_dto.c
    model/sushiswap_token_day_data_dto.c
    model/sushiswap_token_dto.c
    model/sushiswap_transaction_dto.c
    model/sushiswap_user_dto.c
    model/transactions_e_trade_aggressive_side.c
    model/uniswap_v2_bundle_dto.c
    model/uniswap_v2_burn_dto.c
    model/uniswap_v2_liquidity_position_dto.c
    model/uniswap_v2_liquidity_position_snapshot_dto.c
    model/uniswap_v2_mint_dto.c
    model/uniswap_v2_pair_day_data_dto.c
    model/uniswap_v2_pair_dto.c
    model/uniswap_v2_pair_hour_data_dto.c
    model/uniswap_v2_swap_dto.c
    model/uniswap_v2_token_day_data_dto.c
    model/uniswap_v2_token_dto.c
    model/uniswap_v2_transaction_dto.c
    model/uniswap_v2_uniswap_day_data_dto.c
    model/uniswap_v2_uniswap_factory_dto.c
    model/uniswap_v2_user_dto.c
    model/uniswap_v3_bundle_dto.c
    model/uniswap_v3_burn_dto.c
    model/uniswap_v3_factory_dto.c
    model/uniswap_v3_mint_dto.c
    model/uniswap_v3_pool_day_data_dto.c
    model/uniswap_v3_pool_dto.c
    model/uniswap_v3_pool_hour_data_dto.c
    model/uniswap_v3_position_dto.c
    model/uniswap_v3_position_snapshot_dto.c
    model/uniswap_v3_swap_dto.c
    model/uniswap_v3_tick_day_data_dto.c
    model/uniswap_v3_tick_dto.c
    model/uniswap_v3_token_dto.c
    model/uniswap_v3_token_hour_data_dto.c
    model/uniswap_v3_token_v3_day_data_dto.c
    model/uniswap_v3_transaction_dto.c
    model/uniswap_v3_uniswap_day_data_dto.c
    api/CRYPTOPUNKSAPI.c
    api/CowAPI.c
    api/CurveAPI.c
    api/DexAPI.c
    api/MetadataAPI.c
    api/SushiswapAPI.c
    api/UniswapV2API.c
    api/UniswapV3API.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/binary.h
    include/keyValuePair.h
    external/cJSON.h
    model/object.h
    model/cow_order_dto.h
    model/cow_settlement_dto.h
    model/cow_token_dto.h
    model/cow_trade_dto.h
    model/cow_user_dto.h
    model/cryptopunks_bid_dto.h
    model/cryptopunks_collection_daily_snapshot_dto.h
    model/cryptopunks_collection_dto.h
    model/cryptopunks_data_sources_dto.h
    model/cryptopunks_item_dto.h
    model/cryptopunks_market_place_dto.h
    model/cryptopunks_marketplace_daily_snapshot_dto.h
    model/cryptopunks_trade_dto.h
    model/cryptopunks_user_dto.h
    model/curve_account_dto.h
    model/curve_add_liquidity_event_dto.h
    model/curve_admin_fee_change_log_dto.h
    model/curve_amplification_coeff_change_log_dto.h
    model/curve_coin_dto.h
    model/curve_contract_dto.h
    model/curve_contract_version_dto.h
    model/curve_daily_volume_dto.h
    model/curve_exchange_dto.h
    model/curve_fee_change_log_dto.h
    model/curve_gauge_deposit_dto.h
    model/curve_gauge_dto.h
    model/curve_gauge_liquidity_dto.h
    model/curve_gauge_total_weight_dto.h
    model/curve_gauge_type_dto.h
    model/curve_gauge_type_weight_dto.h
    model/curve_gauge_weight_dto.h
    model/curve_gauge_weight_vote_dto.h
    model/curve_gauge_withdraw_dto.h
    model/curve_hourly_volume_dto.h
    model/curve_lp_token_dto.h
    model/curve_pool_dto.h
    model/curve_proposal_dto.h
    model/curve_proposal_vote_dto.h
    model/curve_remove_liquidity_event_dto.h
    model/curve_remove_liquidity_one_event_dto.h
    model/curve_system_state_dto.h
    model/curve_token_dto.h
    model/curve_transfer_ownership_event_dto.h
    model/curve_underlying_coin_dto.h
    model/curve_voting_app_dto.h
    model/curve_weekly_volume_dto.h
    model/dex_batch_dto.h
    model/dex_deposit_dto.h
    model/dex_order_dto.h
    model/dex_price_dto.h
    model/dex_solution_dto.h
    model/dex_stats_dto.h
    model/dex_token_dto.h
    model/dex_trade_dto.h
    model/dex_user_dto.h
    model/dex_withdraw_dto.h
    model/dex_withdraw_request_dto.h
    model/numerics_big_integer.h
    model/sushiswap_bundle_dto.h
    model/sushiswap_burn_dto.h
    model/sushiswap_day_data_dto.h
    model/sushiswap_factory_dto.h
    model/sushiswap_hour_data_dto.h
    model/sushiswap_liquidity_position_dto.h
    model/sushiswap_liquidity_position_snapshot_dto.h
    model/sushiswap_mint_dto.h
    model/sushiswap_pair_day_data_dto.h
    model/sushiswap_pair_dto.h
    model/sushiswap_pair_hour_data_dto.h
    model/sushiswap_swap_dto.h
    model/sushiswap_token_day_data_dto.h
    model/sushiswap_token_dto.h
    model/sushiswap_transaction_dto.h
    model/sushiswap_user_dto.h
    model/transactions_e_trade_aggressive_side.h
    model/uniswap_v2_bundle_dto.h
    model/uniswap_v2_burn_dto.h
    model/uniswap_v2_liquidity_position_dto.h
    model/uniswap_v2_liquidity_position_snapshot_dto.h
    model/uniswap_v2_mint_dto.h
    model/uniswap_v2_pair_day_data_dto.h
    model/uniswap_v2_pair_dto.h
    model/uniswap_v2_pair_hour_data_dto.h
    model/uniswap_v2_swap_dto.h
    model/uniswap_v2_token_day_data_dto.h
    model/uniswap_v2_token_dto.h
    model/uniswap_v2_transaction_dto.h
    model/uniswap_v2_uniswap_day_data_dto.h
    model/uniswap_v2_uniswap_factory_dto.h
    model/uniswap_v2_user_dto.h
    model/uniswap_v3_bundle_dto.h
    model/uniswap_v3_burn_dto.h
    model/uniswap_v3_factory_dto.h
    model/uniswap_v3_mint_dto.h
    model/uniswap_v3_pool_day_data_dto.h
    model/uniswap_v3_pool_dto.h
    model/uniswap_v3_pool_hour_data_dto.h
    model/uniswap_v3_position_dto.h
    model/uniswap_v3_position_snapshot_dto.h
    model/uniswap_v3_swap_dto.h
    model/uniswap_v3_tick_day_data_dto.h
    model/uniswap_v3_tick_dto.h
    model/uniswap_v3_token_dto.h
    model/uniswap_v3_token_hour_data_dto.h
    model/uniswap_v3_token_v3_day_data_dto.h
    model/uniswap_v3_transaction_dto.h
    model/uniswap_v3_uniswap_day_data_dto.h
    api/CRYPTOPUNKSAPI.h
    api/CowAPI.h
    api/CurveAPI.h
    api/DexAPI.h
    api/MetadataAPI.h
    api/SushiswapAPI.h
    api/UniswapV2API.h
    api/UniswapV3API.h

)

include(PreTarget.cmake OPTIONAL)

set(PROJECT_VERSION_STRING "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

# Add library with project file with project name as library name
add_library(${pkgName} ${SRCS} ${HDRS})
# Link dependent libraries
if(NOT CMAKE_VERSION VERSION_LESS 3.4)
    target_link_libraries(${pkgName} PRIVATE OpenSSL::SSL OpenSSL::Crypto)
endif()
target_link_libraries(${pkgName} PUBLIC ${CURL_LIBRARIES} )
target_include_directories(
    ${pkgName} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

include(PostTarget.cmake OPTIONAL)

# installation of libraries, headers, and config files
if (NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in)
    install(TARGETS ${pkgName} DESTINATION lib)
else()
    include(GNUInstallDirs)
    install(TARGETS ${pkgName} DESTINATION lib EXPORT ${pkgName}Targets)

    foreach(HDR_FILE ${HDRS})
        get_filename_component(HDR_DIRECTORY ${HDR_FILE} DIRECTORY)
        get_filename_component(ABSOLUTE_HDR_DIRECTORY ${HDR_DIRECTORY} ABSOLUTE)
        file(RELATIVE_PATH RELATIVE_HDR_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${ABSOLUTE_HDR_DIRECTORY})
        install(FILES ${HDR_FILE} DESTINATION include/${pkgName}/${RELATIVE_HDR_PATH})
    endforeach()

    include(CMakePackageConfigHelpers)
    write_basic_package_version_file(
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            VERSION "${PROJECT_VERSION_STRING}"
            COMPATIBILITY AnyNewerVersion
    )

    export(EXPORT ${pkgName}Targets
            FILE "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Targets.cmake"
            NAMESPACE ${pkgName}::
            )

    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            @ONLY
            )

    set(ConfigPackageLocation lib/cmake/${pkgName})
    install(EXPORT ${pkgName}Targets
            FILE
            ${pkgName}Targets.cmake
            NAMESPACE
            ${pkgName}::
            DESTINATION
            ${ConfigPackageLocation}
            )
    install(
            FILES
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            DESTINATION
            ${ConfigPackageLocation}
    )
endif()

# make installation packages
include(Packing.cmake OPTIONAL)

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled library to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-CRYPTOPUNKSAPI.c
#    unit-tests/manual-CowAPI.c
#    unit-tests/manual-CurveAPI.c
#    unit-tests/manual-DexAPI.c
#    unit-tests/manual-MetadataAPI.c
#    unit-tests/manual-SushiswapAPI.c
#    unit-tests/manual-UniswapV2API.c
#    unit-tests/manual-UniswapV3API.c
#)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable does not support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created library to executable and dependent library curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
