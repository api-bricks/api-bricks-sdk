#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Generator version: 7.25.0
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for FinFeedAPI Stock REST API.
#
# LICENSE:
# https://github.com/api-bricks/api-bricks-sdk/blob/master/LICENSE
#
# CONTACT:
# support@apibricks.io
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
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
# Declare colors with autodetection if output is terminal
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
operation_parameters_minimum_occurrences["v1SymbolsExchangeIdGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1SymbolsExchangeIdGet:::filter_symbol_id"]=0
operation_parameters_minimum_occurrences["v1SymbolsExchangeIdGet:::limit"]=0
operation_parameters_minimum_occurrences["v1SymbolsExchangeIdGet:::page"]=0
operation_parameters_minimum_occurrences["v1NativeIexAdminMessagesSymbolGet:::symbol"]=1
operation_parameters_minimum_occurrences["v1NativeIexAdminMessagesSymbolGet:::date"]=1
operation_parameters_minimum_occurrences["v1NativeIexAdminMessagesSymbolGet:::limit"]=0
operation_parameters_minimum_occurrences["v1NativeIexAdminSystemEventGet:::date"]=1
operation_parameters_minimum_occurrences["v1NativeIexAdminSystemEventGet:::limit"]=0
operation_parameters_minimum_occurrences["v1NativeIexLevel1QuoteSymbolGet:::symbol"]=1
operation_parameters_minimum_occurrences["v1NativeIexLevel1QuoteSymbolGet:::date"]=1
operation_parameters_minimum_occurrences["v1NativeIexLevel1QuoteSymbolGet:::limit"]=0
operation_parameters_minimum_occurrences["v1NativeIexLevel2PriceLevelUpdateSymbolGet:::symbol"]=1
operation_parameters_minimum_occurrences["v1NativeIexLevel2PriceLevelUpdateSymbolGet:::date"]=1
operation_parameters_minimum_occurrences["v1NativeIexLevel2PriceLevelUpdateSymbolGet:::limit"]=0
operation_parameters_minimum_occurrences["v1NativeIexLevel3OrderBookSymbolGet:::symbol"]=1
operation_parameters_minimum_occurrences["v1NativeIexLevel3OrderBookSymbolGet:::date"]=1
operation_parameters_minimum_occurrences["v1NativeIexLevel3OrderBookSymbolGet:::limit"]=0
operation_parameters_minimum_occurrences["v1NativeIexTradeSymbolGet:::symbol"]=1
operation_parameters_minimum_occurrences["v1NativeIexTradeSymbolGet:::date"]=1
operation_parameters_minimum_occurrences["v1NativeIexTradeSymbolGet:::limit"]=0
operation_parameters_minimum_occurrences["v1OhlcvExchangeExchangeIdHistoryGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangeExchangeIdHistoryGet:::period_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangeExchangeIdHistoryGet:::time_start"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangeExchangeIdHistoryGet:::time_end"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangeExchangeIdHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::period_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::time_start"]=0
operation_parameters_minimum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::time_end"]=0
operation_parameters_minimum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::period_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::limit"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["v1SymbolsExchangeIdGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1SymbolsExchangeIdGet:::filter_symbol_id"]=0
operation_parameters_maximum_occurrences["v1SymbolsExchangeIdGet:::limit"]=0
operation_parameters_maximum_occurrences["v1SymbolsExchangeIdGet:::page"]=0
operation_parameters_maximum_occurrences["v1NativeIexAdminMessagesSymbolGet:::symbol"]=0
operation_parameters_maximum_occurrences["v1NativeIexAdminMessagesSymbolGet:::date"]=0
operation_parameters_maximum_occurrences["v1NativeIexAdminMessagesSymbolGet:::limit"]=0
operation_parameters_maximum_occurrences["v1NativeIexAdminSystemEventGet:::date"]=0
operation_parameters_maximum_occurrences["v1NativeIexAdminSystemEventGet:::limit"]=0
operation_parameters_maximum_occurrences["v1NativeIexLevel1QuoteSymbolGet:::symbol"]=0
operation_parameters_maximum_occurrences["v1NativeIexLevel1QuoteSymbolGet:::date"]=0
operation_parameters_maximum_occurrences["v1NativeIexLevel1QuoteSymbolGet:::limit"]=0
operation_parameters_maximum_occurrences["v1NativeIexLevel2PriceLevelUpdateSymbolGet:::symbol"]=0
operation_parameters_maximum_occurrences["v1NativeIexLevel2PriceLevelUpdateSymbolGet:::date"]=0
operation_parameters_maximum_occurrences["v1NativeIexLevel2PriceLevelUpdateSymbolGet:::limit"]=0
operation_parameters_maximum_occurrences["v1NativeIexLevel3OrderBookSymbolGet:::symbol"]=0
operation_parameters_maximum_occurrences["v1NativeIexLevel3OrderBookSymbolGet:::date"]=0
operation_parameters_maximum_occurrences["v1NativeIexLevel3OrderBookSymbolGet:::limit"]=0
operation_parameters_maximum_occurrences["v1NativeIexTradeSymbolGet:::symbol"]=0
operation_parameters_maximum_occurrences["v1NativeIexTradeSymbolGet:::date"]=0
operation_parameters_maximum_occurrences["v1NativeIexTradeSymbolGet:::limit"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeExchangeIdHistoryGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeExchangeIdHistoryGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeExchangeIdHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeExchangeIdHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeExchangeIdHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::limit"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["v1SymbolsExchangeIdGet:::exchange_id"]=""
operation_parameters_collection_type["v1SymbolsExchangeIdGet:::filter_symbol_id"]=""
operation_parameters_collection_type["v1SymbolsExchangeIdGet:::limit"]=""
operation_parameters_collection_type["v1SymbolsExchangeIdGet:::page"]=""
operation_parameters_collection_type["v1NativeIexAdminMessagesSymbolGet:::symbol"]=""
operation_parameters_collection_type["v1NativeIexAdminMessagesSymbolGet:::date"]=""
operation_parameters_collection_type["v1NativeIexAdminMessagesSymbolGet:::limit"]=""
operation_parameters_collection_type["v1NativeIexAdminSystemEventGet:::date"]=""
operation_parameters_collection_type["v1NativeIexAdminSystemEventGet:::limit"]=""
operation_parameters_collection_type["v1NativeIexLevel1QuoteSymbolGet:::symbol"]=""
operation_parameters_collection_type["v1NativeIexLevel1QuoteSymbolGet:::date"]=""
operation_parameters_collection_type["v1NativeIexLevel1QuoteSymbolGet:::limit"]=""
operation_parameters_collection_type["v1NativeIexLevel2PriceLevelUpdateSymbolGet:::symbol"]=""
operation_parameters_collection_type["v1NativeIexLevel2PriceLevelUpdateSymbolGet:::date"]=""
operation_parameters_collection_type["v1NativeIexLevel2PriceLevelUpdateSymbolGet:::limit"]=""
operation_parameters_collection_type["v1NativeIexLevel3OrderBookSymbolGet:::symbol"]=""
operation_parameters_collection_type["v1NativeIexLevel3OrderBookSymbolGet:::date"]=""
operation_parameters_collection_type["v1NativeIexLevel3OrderBookSymbolGet:::limit"]=""
operation_parameters_collection_type["v1NativeIexTradeSymbolGet:::symbol"]=""
operation_parameters_collection_type["v1NativeIexTradeSymbolGet:::date"]=""
operation_parameters_collection_type["v1NativeIexTradeSymbolGet:::limit"]=""
operation_parameters_collection_type["v1OhlcvExchangeExchangeIdHistoryGet:::exchange_id"]=""
operation_parameters_collection_type["v1OhlcvExchangeExchangeIdHistoryGet:::period_id"]=""
operation_parameters_collection_type["v1OhlcvExchangeExchangeIdHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1OhlcvExchangeExchangeIdHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1OhlcvExchangeExchangeIdHistoryGet:::limit"]=""
operation_parameters_collection_type["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::exchange_id"]=""
operation_parameters_collection_type["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::symbol_id"]=""
operation_parameters_collection_type["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::period_id"]=""
operation_parameters_collection_type["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet:::limit"]=""
operation_parameters_collection_type["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::exchange_id"]=""
operation_parameters_collection_type["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::symbol_id"]=""
operation_parameters_collection_type["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::period_id"]=""
operation_parameters_collection_type["v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet:::limit"]=""


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
# The user API key
apikey_auth_credential=""

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
    local api_key_header=""
    local api_key_header_in_cli=""
    api_key_header="Authorization"

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
    done
    #
    # If the api_key was not provided in the header, try one from the
    # environment variable
    #
    if [[ -z $api_key_header_in_cli && -n $apikey_auth_credential ]]; then
        headers_curl+="-H \"${api_key_header}: ${apikey_auth_credential}\""
    fi
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
    if [[ $RAW_BODY == "1" ]]; then
        echo "-d '${body_parameters["RAW_BODY"]}'"
    else
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
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
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
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
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

${BOLD}${WHITE}FinFeedAPI Stock REST API command line client (API version v1)${OFF}

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
    echo -e "${BOLD}${WHITE}Authentication methods${OFF}"
    echo -e ""
    echo -e "  - ${BLUE}Api-key${OFF} - add '${RED}Authorization:<api-key>${OFF}' after ${YELLOW}<operation>${OFF}"
    
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[metadata]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1ExchangesGet${OFF};List of exchanges (AUTH) (AUTH)
  ${CYAN}v1SymbolsExchangeIdGet${OFF};List of symbols for the exchange (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[nativeIEX]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1NativeIexAdminMessagesSymbolGet${OFF};Get Admin Messages (AUTH) (AUTH)
  ${CYAN}v1NativeIexAdminSystemEventGet${OFF};Get System Events (AUTH) (AUTH)
  ${CYAN}v1NativeIexLevel1QuoteSymbolGet${OFF};Get Level-1 Quotes (AUTH) (AUTH)
  ${CYAN}v1NativeIexLevel2PriceLevelUpdateSymbolGet${OFF};Get Level-2 Price Level Book (AUTH) (AUTH)
  ${CYAN}v1NativeIexLevel3OrderBookSymbolGet${OFF};Get Level-3 Order Book (AUTH) (AUTH)
  ${CYAN}v1NativeIexTradeSymbolGet${OFF};Get Trades (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[ohlcv]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1OhlcvExchangeExchangeIdHistoryGet${OFF};Historical data by exchange (AUTH) (AUTH)
  ${CYAN}v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet${OFF};Historical data (AUTH) (AUTH)
  ${CYAN}v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet${OFF};Latest data (AUTH) (AUTH)
  ${CYAN}v1OhlcvPeriodsGet${OFF};List all periods (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://api-historical.stock.finfeedapi.com')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
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
    echo -e "${BOLD}${WHITE}FinFeedAPI Stock REST API command line client (API version v1)${OFF}"
    echo ""
    echo -e "License: MIT License"
    echo -e "Contact: support@apibricks.io"
    echo ""
read -r -d '' appdescription <<EOF

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
EOF
echo "$appdescription" | paste -sd' ' - | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}FinFeedAPI Stock REST API command line client (API version v1)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for v1ExchangesGet operation
#
##############################################################################
print_v1ExchangesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ExchangesGet - List of exchanges${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1SymbolsExchangeIdGet operation
#
##############################################################################
print_v1SymbolsExchangeIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1SymbolsExchangeIdGet - List of symbols for the exchange${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Results are paginated. Use 'limit' and 'page' to control page size and offset
(default limit: 100, max: 10000, default page: 1)." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The ID of the exchange (from the Metadata -> Exchanges) ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_symbol_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited symbol identifiers used to filter response (optional, eg. 'TSLA' or 'TSLA,NVDA')${YELLOW} Specify as: filter_symbol_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Maximum number of symbols to return (1-10000, default 100)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - Page number (1-based, default 1)${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1NativeIexAdminMessagesSymbolGet operation
#
##############################################################################
print_v1NativeIexAdminMessagesSymbolGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1NativeIexAdminMessagesSymbolGet - Get Admin Messages${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Streaming endpoint. Use 'limit' to cap the number of records returned (default 100, max 10000)." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The symbol identifier ${YELLOW}Specify as: symbol=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}date${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Date in format YYYY-MM-DD${YELLOW} Specify as: date=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Maximum number of records to return (1-10000, default 100)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1NativeIexAdminSystemEventGet operation
#
##############################################################################
print_v1NativeIexAdminSystemEventGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1NativeIexAdminSystemEventGet - Get System Events${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Streaming endpoint. Use 'limit' to cap the number of records returned (default 100, max 10000)." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}date${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Date in format YYYY-MM-DD${YELLOW} Specify as: date=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Maximum number of records to return (1-10000, default 100)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1NativeIexLevel1QuoteSymbolGet operation
#
##############################################################################
print_v1NativeIexLevel1QuoteSymbolGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1NativeIexLevel1QuoteSymbolGet - Get Level-1 Quotes${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Streaming endpoint. Use 'limit' to cap the number of records returned (default 100, max 10000)." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The symbol identifier ${YELLOW}Specify as: symbol=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}date${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Date in format YYYY-MM-DD${YELLOW} Specify as: date=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Maximum number of records to return (1-10000, default 100)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1NativeIexLevel2PriceLevelUpdateSymbolGet operation
#
##############################################################################
print_v1NativeIexLevel2PriceLevelUpdateSymbolGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1NativeIexLevel2PriceLevelUpdateSymbolGet - Get Level-2 Price Level Book${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Streaming endpoint. Use 'limit' to cap the number of records returned (default 100, max 10000)." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The symbol identifier ${YELLOW}Specify as: symbol=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}date${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Date in format YYYY-MM-DD${YELLOW} Specify as: date=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Maximum number of records to return (1-10000, default 100)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1NativeIexLevel3OrderBookSymbolGet operation
#
##############################################################################
print_v1NativeIexLevel3OrderBookSymbolGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1NativeIexLevel3OrderBookSymbolGet - Get Level-3 Order Book${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Streaming endpoint. Use 'limit' to cap the number of records returned (default 100, max 10000)." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The symbol identifier ${YELLOW}Specify as: symbol=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}date${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Date in format YYYY-MM-DD${YELLOW} Specify as: date=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Maximum number of records to return (1-10000, default 100)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1NativeIexTradeSymbolGet operation
#
##############################################################################
print_v1NativeIexTradeSymbolGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1NativeIexTradeSymbolGet - Get Trades${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Streaming endpoint. Use 'limit' to cap the number of trade records returned (default 100, max 10000)." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The symbol identifier ${YELLOW}Specify as: symbol=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}date${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Date in format YYYY-MM-DD${YELLOW} Specify as: date=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Maximum number of records to return (1-10000, default 100)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OhlcvExchangeExchangeIdHistoryGet operation
#
##############################################################################
print_v1OhlcvExchangeExchangeIdHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OhlcvExchangeExchangeIdHistoryGet - Historical data by exchange${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange.
Time range is limited to 24 hours. Use 'limit' to cap the number of symbol rows returned." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier of requested timeseries (from the Metadata -> Exchanges) ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '5SEC' or '1DAY')${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Timeseries starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Timeseries ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Maximum number of symbol rows to return (1-10000, default 100)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet operation
#
##############################################################################
print_v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet - Historical data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get OHLCV timeseries data returned in time ascending order." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier of requested timeseries (from the Metadata -> Exchanges) ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier of requested timeseries (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '5SEC' or '2MTH')${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timeseries starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timeseries ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet operation
#
##############################################################################
print_v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet - Latest data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg 'BITSTAMP_SPOT_BTC_USD', if you need to query timeseries by asset pairs eg. 'BTC/USD', then please reffer to the Exchange Rates Timeseries data
            
:::info
OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted 'time_start' and 'time_end' parameters. 
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier of requested timeseries (from the Metadata -> Exchanges) ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier of requested timeseries (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '5SEC' or '2MTH')${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OhlcvPeriodsGet operation
#
##############################################################################
print_v1OhlcvPeriodsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OhlcvPeriodsGet - List all periods${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get full list of supported time periods available for requesting OHLCV timeseries data.
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call v1ExchangesGet operation
#
##############################################################################
call_v1ExchangesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/exchanges" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1SymbolsExchangeIdGet operation
#
##############################################################################
call_v1SymbolsExchangeIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_symbol_id limit page    )
    local path

    if ! path=$(build_request_path "/v1/symbols/{exchange_id}" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1NativeIexAdminMessagesSymbolGet operation
#
##############################################################################
call_v1NativeIexAdminMessagesSymbolGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(date limit    )
    local path

    if ! path=$(build_request_path "/v1/native/iex/admin/messages/{symbol}" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1NativeIexAdminSystemEventGet operation
#
##############################################################################
call_v1NativeIexAdminSystemEventGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(date limit    )
    local path

    if ! path=$(build_request_path "/v1/native/iex/admin/system-event" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1NativeIexLevel1QuoteSymbolGet operation
#
##############################################################################
call_v1NativeIexLevel1QuoteSymbolGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(date limit    )
    local path

    if ! path=$(build_request_path "/v1/native/iex/level1-quote/{symbol}" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1NativeIexLevel2PriceLevelUpdateSymbolGet operation
#
##############################################################################
call_v1NativeIexLevel2PriceLevelUpdateSymbolGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(date limit    )
    local path

    if ! path=$(build_request_path "/v1/native/iex/level2-price-level-update/{symbol}" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1NativeIexLevel3OrderBookSymbolGet operation
#
##############################################################################
call_v1NativeIexLevel3OrderBookSymbolGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(date limit    )
    local path

    if ! path=$(build_request_path "/v1/native/iex/level3-order-book/{symbol}" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1NativeIexTradeSymbolGet operation
#
##############################################################################
call_v1NativeIexTradeSymbolGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(date limit    )
    local path

    if ! path=$(build_request_path "/v1/native/iex/trade/{symbol}" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OhlcvExchangeExchangeIdHistoryGet operation
#
##############################################################################
call_v1OhlcvExchangeExchangeIdHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(period_id time_start time_end limit    )
    local path

    if ! path=$(build_request_path "/v1/ohlcv/exchange/{exchange_id}/history" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet operation
#
##############################################################################
call_v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(period_id time_start time_end limit    )
    local path

    if ! path=$(build_request_path "/v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet operation
#
##############################################################################
call_v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(period_id limit    )
    local path

    if ! path=$(build_request_path "/v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OhlcvPeriodsGet operation
#
##############################################################################
call_v1OhlcvPeriodsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/ohlcv/periods" path_parameter_names query_parameter_names); then
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
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
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
    v1ExchangesGet)
    operation="v1ExchangesGet"
    ;;
    v1SymbolsExchangeIdGet)
    operation="v1SymbolsExchangeIdGet"
    ;;
    v1NativeIexAdminMessagesSymbolGet)
    operation="v1NativeIexAdminMessagesSymbolGet"
    ;;
    v1NativeIexAdminSystemEventGet)
    operation="v1NativeIexAdminSystemEventGet"
    ;;
    v1NativeIexLevel1QuoteSymbolGet)
    operation="v1NativeIexLevel1QuoteSymbolGet"
    ;;
    v1NativeIexLevel2PriceLevelUpdateSymbolGet)
    operation="v1NativeIexLevel2PriceLevelUpdateSymbolGet"
    ;;
    v1NativeIexLevel3OrderBookSymbolGet)
    operation="v1NativeIexLevel3OrderBookSymbolGet"
    ;;
    v1NativeIexTradeSymbolGet)
    operation="v1NativeIexTradeSymbolGet"
    ;;
    v1OhlcvExchangeExchangeIdHistoryGet)
    operation="v1OhlcvExchangeExchangeIdHistoryGet"
    ;;
    v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet)
    operation="v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet"
    ;;
    v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet)
    operation="v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet"
    ;;
    v1OhlcvPeriodsGet)
    operation="v1OhlcvPeriodsGet"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    --body=*)
    # Parse value of body as argument and convert it into only
    # the raw body content
    if [[ "$operation" ]]; then
        IFS='--body=' read -r body_value <<< "$key"
        body_value=${body_value##--body=}
        body_parameters["RAW_BODY"]="${body_value}"
        RAW_BODY=1
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
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
        #
        # If the header key is the same as the api_key expected by API in the
        # header, override the ${apikey_auth_credential} variable
        #
        if [[ $header_name == "Authorization" ]]; then
            apikey_auth_credential=$header_value
        fi
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
    v1ExchangesGet)
    call_v1ExchangesGet
    ;;
    v1SymbolsExchangeIdGet)
    call_v1SymbolsExchangeIdGet
    ;;
    v1NativeIexAdminMessagesSymbolGet)
    call_v1NativeIexAdminMessagesSymbolGet
    ;;
    v1NativeIexAdminSystemEventGet)
    call_v1NativeIexAdminSystemEventGet
    ;;
    v1NativeIexLevel1QuoteSymbolGet)
    call_v1NativeIexLevel1QuoteSymbolGet
    ;;
    v1NativeIexLevel2PriceLevelUpdateSymbolGet)
    call_v1NativeIexLevel2PriceLevelUpdateSymbolGet
    ;;
    v1NativeIexLevel3OrderBookSymbolGet)
    call_v1NativeIexLevel3OrderBookSymbolGet
    ;;
    v1NativeIexTradeSymbolGet)
    call_v1NativeIexTradeSymbolGet
    ;;
    v1OhlcvExchangeExchangeIdHistoryGet)
    call_v1OhlcvExchangeExchangeIdHistoryGet
    ;;
    v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet)
    call_v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet
    ;;
    v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet)
    call_v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet
    ;;
    v1OhlcvPeriodsGet)
    call_v1OhlcvPeriodsGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
