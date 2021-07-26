#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for OEML - REST API.
#
# LICENSE:
# https://github.com/coinapi/coinapi-sdk/blob/master/LICENSE
#
# CONTACT:
# support@coinapi.io
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statemets
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["v1BalancesGet:::exchange_id"]=0
operation_parameters_minimum_occurrences["v1OrdersCancelAllPost:::OrderCancelAllRequest"]=1
operation_parameters_minimum_occurrences["v1OrdersCancelPost:::OrderCancelSingleRequest"]=1
operation_parameters_minimum_occurrences["v1OrdersGet:::exchange_id"]=0
operation_parameters_minimum_occurrences["v1OrdersPost:::OrderNewSingleRequest"]=1
operation_parameters_minimum_occurrences["v1OrdersStatusClientOrderIdGet:::client_order_id"]=1
operation_parameters_minimum_occurrences["v1PositionsGet:::exchange_id"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["v1BalancesGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1OrdersCancelAllPost:::OrderCancelAllRequest"]=0
operation_parameters_maximum_occurrences["v1OrdersCancelPost:::OrderCancelSingleRequest"]=0
operation_parameters_maximum_occurrences["v1OrdersGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1OrdersPost:::OrderNewSingleRequest"]=0
operation_parameters_maximum_occurrences["v1OrdersStatusClientOrderIdGet:::client_order_id"]=0
operation_parameters_maximum_occurrences["v1PositionsGet:::exchange_id"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["v1BalancesGet:::exchange_id"]=""
operation_parameters_collection_type["v1OrdersCancelAllPost:::OrderCancelAllRequest"]=""
operation_parameters_collection_type["v1OrdersCancelPost:::OrderCancelSingleRequest"]=""
operation_parameters_collection_type["v1OrdersGet:::exchange_id"]=""
operation_parameters_collection_type["v1OrdersPost:::OrderNewSingleRequest"]=""
operation_parameters_collection_type["v1OrdersStatusClientOrderIdGet:::client_order_id"]=""
operation_parameters_collection_type["v1PositionsGet:::exchange_id"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""


##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_json+=", "
        fi
        body_json+="\"${key}\": ${body_parameters[${key}]}"
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'mutli' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}OEML - REST API command line client (API version v1)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[balances]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1BalancesGet${OFF};Get balances
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[orders]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1OrdersCancelAllPost${OFF};Cancel all orders request
  ${CYAN}v1OrdersCancelPost${OFF};Cancel order request
  ${CYAN}v1OrdersGet${OFF};Get open orders
  ${CYAN}v1OrdersPost${OFF};Send new order
  ${CYAN}v1OrdersStatusClientOrderIdGet${OFF};Get order execution report
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[positions]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1PositionsGet${OFF};Get open positions
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}OEML - REST API command line client (API version v1)${OFF}"
    echo ""
    echo -e "License: MIT"
    echo -e "Contact: support@coinapi.io"
    echo ""
read -r -d '' appdescription <<EOF

This section will provide necessary information about the 'CoinAPI OEML REST API' protocol.
This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}OEML - REST API command line client (API version v1)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for v1BalancesGet operation
#
##############################################################################
print_v1BalancesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1BalancesGet - Get balances${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get current currency balance from all or single exchange." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter the balances to the specific exchange.${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Collection of balances.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=490
    echo -e "${result_color_table[${code:0:1}]}  490;Exchange is unreachable.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OrdersCancelAllPost operation
#
##############################################################################
print_v1OrdersCancelAllPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OrdersCancelAllPost - Cancel all orders request${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This request cancels all open orders on single specified exchange." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - OrderCancelAllRequest object." | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Result${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Input model validation errors.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=490
    echo -e "${result_color_table[${code:0:1}]}  490;Exchange is unreachable.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OrdersCancelPost operation
#
##############################################################################
print_v1OrdersCancelPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OrdersCancelPost - Cancel order request${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Request cancel for an existing order. The order can be canceled using the 'client_order_id' or 'exchange_order_id'." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - OrderCancelSingleRequest object." | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;The last execution report for the order for which cancelation was requested.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Input model validation errors.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=490
    echo -e "${result_color_table[${code:0:1}]}  490;Exchange is unreachable.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OrdersGet operation
#
##############################################################################
print_v1OrdersGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OrdersGet - Get open orders${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get last execution reports for open orders across all or single exchange." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter the open orders to the specific exchange.${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Collection of order execution reports.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=490
    echo -e "${result_color_table[${code:0:1}]}  490;Filtered exchange is unreachable.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OrdersPost operation
#
##############################################################################
print_v1OrdersPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OrdersPost - Send new order${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This request creating new order for the specific exchange." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - OrderNewSingleRequest object." | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Input model validation errors.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=490
    echo -e "${result_color_table[${code:0:1}]}  490;Exchange is unreachable.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Exchange didn't responded in the defined timeout.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OrdersStatusClientOrderIdGet operation
#
##############################################################################
print_v1OrdersStatusClientOrderIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OrdersStatusClientOrderIdGet - Get order execution report${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the last order execution report for the specified order. The requested order does not need to be active or opened." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}client_order_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The unique identifier of the order assigned by the client. ${YELLOW}Specify as: client_order_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;The last execution report of the requested order.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The requested order was not found.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1PositionsGet operation
#
##############################################################################
print_v1PositionsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1PositionsGet - Get open positions${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get current open positions across all or single exchange." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter the balances to the specific exchange.${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Collection of positons.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=490
    echo -e "${result_color_table[${code:0:1}]}  490;Exchange is unreachable.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call v1BalancesGet operation
#
##############################################################################
call_v1BalancesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(exchange_id)
    local path

    if ! path=$(build_request_path "/v1/balances" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OrdersCancelAllPost operation
#
##############################################################################
call_v1OrdersCancelAllPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/orders/cancel/all" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1OrdersCancelPost operation
#
##############################################################################
call_v1OrdersCancelPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/orders/cancel" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1OrdersGet operation
#
##############################################################################
call_v1OrdersGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(exchange_id)
    local path

    if ! path=$(build_request_path "/v1/orders" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OrdersPost operation
#
##############################################################################
call_v1OrdersPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/orders" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call v1OrdersStatusClientOrderIdGet operation
#
##############################################################################
call_v1OrdersStatusClientOrderIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(client_order_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/v1/orders/status/{client_order_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1PositionsGet operation
#
##############################################################################
call_v1PositionsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(exchange_id)
    local path

    if ! path=$(build_request_path "/v1/positions" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    v1BalancesGet)
    operation="v1BalancesGet"
    ;;
    v1OrdersCancelAllPost)
    operation="v1OrdersCancelAllPost"
    ;;
    v1OrdersCancelPost)
    operation="v1OrdersCancelPost"
    ;;
    v1OrdersGet)
    operation="v1OrdersGet"
    ;;
    v1OrdersPost)
    operation="v1OrdersPost"
    ;;
    v1OrdersStatusClientOrderIdGet)
    operation="v1OrdersStatusClientOrderIdGet"
    ;;
    v1PositionsGet)
    operation="v1PositionsGet"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without qoutes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    v1BalancesGet)
    call_v1BalancesGet
    ;;
    v1OrdersCancelAllPost)
    call_v1OrdersCancelAllPost
    ;;
    v1OrdersCancelPost)
    call_v1OrdersCancelPost
    ;;
    v1OrdersGet)
    call_v1OrdersGet
    ;;
    v1OrdersPost)
    call_v1OrdersPost
    ;;
    v1OrdersStatusClientOrderIdGet)
    call_v1OrdersStatusClientOrderIdGet
    ;;
    v1PositionsGet)
    call_v1PositionsGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
