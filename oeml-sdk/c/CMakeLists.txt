cmake_minimum_required (VERSION 2.6)
project (CGenerator)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_CXX_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_BUILD_TYPE Debug)

find_package(OpenSSL)

if (OPENSSL_FOUND)
	message (STATUS "OPENSSL found")
	set (CMAKE_C_FLAGS "-DOPENSSL")
	include_directories(${OPENSSL_INCLUDE_DIR})
	include_directories(${OPENSSL_INCLUDE_DIRS})
	link_directories(${OPENSSL_LIBRARIES})
	message(STATUS "Using OpenSSL ${OPENSSL_VERSION}")
else() 
	message (STATUS "OpenSSL Not found.")
endif()

set(pkgName "oeml___rest_api")

find_package(CURL 7.58.0 REQUIRED)
if(CURL_FOUND)
	include_directories(${CURL_INCLUDE_DIR})
	set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else(CURL_FOUND)
	message(FATAL_ERROR "Could not find the CURL library and development files.")
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    src/binary.c
    external/cJSON.c
    model/object.c
    model/balance.c
    model/balance_data.c
    model/fills.c
    model/message.c
    model/ord_side.c
    model/ord_status.c
    model/ord_type.c
    model/order_cancel_all_request.c
    model/order_cancel_single_request.c
    model/order_execution_report.c
    model/order_execution_report_all_of.c
    model/order_new_single_request.c
    model/position.c
    model/position_data.c
    model/severity.c
    model/time_in_force.c
    model/validation_error.c
    api/BalancesAPI.c
    api/OrdersAPI.c
    api/PositionsAPI.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/binary.h
    include/keyValuePair.h
    external/cJSON.h
    model/object.h
    model/balance.h
    model/balance_data.h
    model/fills.h
    model/message.h
    model/ord_side.h
    model/ord_status.h
    model/ord_type.h
    model/order_cancel_all_request.h
    model/order_cancel_single_request.h
    model/order_execution_report.h
    model/order_execution_report_all_of.h
    model/order_new_single_request.h
    model/position.h
    model/position_data.h
    model/severity.h
    model/time_in_force.h
    model/validation_error.h
    api/BalancesAPI.h
    api/OrdersAPI.h
    api/PositionsAPI.h

)

# Add library with project file with projectname as library name
add_library(${pkgName} SHARED ${SRCS} ${HDRS})
# Link dependent libraries
target_link_libraries(${pkgName} ${CURL_LIBRARIES} )
#install library to destination
install(TARGETS ${pkgName} DESTINATION ${CMAKE_INSTALL_PREFIX})

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled libary to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-BalancesAPI.c
#    unit-tests/manual-OrdersAPI.c
#    unit-tests/manual-PositionsAPI.c
#)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable doesnot support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created libary to executable and dependent libary curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
