#compdef 

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Based on: https://github.com/Valodim/zsh-curl-completion/blob/master/_curl
# !
# ! Generator version: 7.25.0
# !
# !
# ! Installation:
# !
# ! Copy the _ file to any directory under FPATH
# ! environment variable (echo $FPATH)
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


local curcontext="$curcontext" state line ret=1
typeset -A opt_args

typeset -A mime_type_abbreviations
# text/*
mime_type_abbreviations[text]="text/plain"
mime_type_abbreviations[html]="text/html"
mime_type_abbreviations[md]="text/x-markdown"
mime_type_abbreviations[csv]="text/csv"
mime_type_abbreviations[css]="text/css"
mime_type_abbreviations[rtf]="text/rtf"
# application/*
mime_type_abbreviations[json]="application/json"
mime_type_abbreviations[xml]="application/xml"
mime_type_abbreviations[yaml]="application/yaml"
mime_type_abbreviations[js]="application/javascript"
mime_type_abbreviations[bin]="application/octet-stream"
mime_type_abbreviations[rdf]="application/rdf+xml"
# image/*
mime_type_abbreviations[jpg]="image/jpeg"
mime_type_abbreviations[png]="image/png"
mime_type_abbreviations[gif]="image/gif"
mime_type_abbreviations[bmp]="image/bmp"
mime_type_abbreviations[tiff]="image/tiff"

#
# Generate zsh completion string list for abbreviated mime types
#
get_mime_type_completions() {
    typeset -a result
    result=()
    for k in "${(@k)mime_type_abbreviations}"; do
        value=$mime_type_abbreviations[${k}]
        #echo $value
        result+=( "${k}[${value}]" )
        #echo $result
    done
    echo "$result"
}

#
# cURL crypto engines completion function
#
_curl_crypto_engine() {
    local vals
    vals=( ${${(f)"$(curl --engine list)":gs/ /}[2,$]} )
    _describe -t outputs 'engines' vals && return 0
}

#
# cURL post data completion functions=
#
_curl_post_data() {

    # don't do anything further if this is raw content
    compset -P '=' && _message 'raw content' && return 0

    # complete filename or stdin for @ syntax
    compset -P '*@' && {
        local expl
        _description files expl stdin
        compadd "$expl[@]" - "-"
        _files
        return 0
    }

    # got a name already? expecting data.
    compset -P '*=' && _message 'data value' && return 0

    # otherwise, name (or @ or =) should be specified
    _message 'data name' && return 0

}


local arg_http arg_ftp arg_other arg_proxy arg_crypto arg_connection arg_auth arg_input arg_output

# HTTP Arguments
arg_http=(''\
  {-0,--http1.0}'[force use of use http 1.0 instead of 1.1]' \
  {-b,--cookie}'[pass data to http server as cookie]:data or file' \
  {-c,--cookie-jar}'[specify cookie file]:file name:_files' \
  {-d,--data}'[send specified data as HTTP POST data]:data:{_curl_post_data}' \
  '--data-binary[post HTTP POST data without any processing]:data:{_curl_post_data}' \
  '--data-urlencode[post HTTP POST data, with url encoding]:data:{_curl_post_data}' \
  {-f,--fail}'[enable failfast behavior for server errors]' \
  '*'{-F,--form}'[add POST form data]:name=content' \
  {-G,--get}'[use HTTP GET even with data (-d, --data, --data-binary)]' \
  '*'{-H,--header}'[specify an extra header]:header' \
  '--ignore-content-length[ignore Content-Length header]' \
  {-i,--include}'[include HTTP header in the output]' \
  {-j,--junk-session-cookies}'[discard all session cookies]' \
  {-e,--referer}'[send url as referer]:referer url:_urls' \
  {-L,--location}'[follow Location headers on http 3XX response]' \
  '--location-trusted[like --location, but allows sending of auth data to redirected hosts]' \
  '--max-redirs[set maximum number of redirection followings allowed]:number' \
  {-J,--remote-header-name}'[use Content-Disposition for output file name]' \
  {-O,--remote-name}'[write to filename parsed from url instead of stdout]' \
  '--post301[do not convert POST to GET after following 301 Location response (follow RFC 2616/10.3.2)]' \
  '--post302[do not convert POST to GET after following 302 Location response (follow RFC 2616/10.3.2)]' \
  )

# FTP arguments
arg_ftp=(\
  {-a,--append}'[append to target file instead of overwriting (FTP/SFTP)]' \
  '--crlf[convert LF to CRLF in upload]' \
  '--disable-eprt[disable use of EPRT and LPRT for active FTP transfers]' \
  '--disable-epsv[disable use of EPSV for passive FTP transfers]' \
  '--ftp-account[account data (FTP)]:data' \
  '--ftp-alternative-to-user[command to send when USER and PASS commands fail (FTP)]:command' \
  '--ftp-create-dirs[create paths remotely if it does not exist]' \
  '--ftp-method[ftp method to use to reach a file (FTP)]:method:(multicwd ocwd singlecwd)' \
  '--ftp-pasv[use passive mode for the data connection (FTP)]' \
  '--ftp-skip-pasv-ip[do not use the ip the server suggests for PASV]' \
  '--form-string[like --form, but do not parse content]:name=string' \
  '--ftp-pret[send PRET before PASV]' \
  '--ftp-ssl-ccc[use clear command channel (CCC) after authentication (FTP)]' \
  '--ftp-ssl-ccc-mode[sets the CCC mode (FTP)]:mode:(active passive)' \
  '--ftp-ssl-control[require SSL/TLS for FTP login, clear for transfer]' \
  {-l,--list-only}'[list names only when listing directories (FTP)]' \
  {-P,--ftp-port}'[use active mode, tell server to connect to specified address or interface (FTP]:address' \
  '*'{-Q,--quote}'[send arbitrary command to the remote server before transfer (FTP/SFTP)]:command' \
  )

# Other Protocol arguments
arg_other=(\
  '--mail-from[specify From: address]:address' \
  '--mail-rcpt[specify email recipient for SMTP, may be given multiple times]:address' \
  {-t,--telnet-option}'[pass options to telnet protocol]:opt=val' \
  '--tftp-blksize[set tftp BLKSIZE option]:value' \
  )

# Proxy arguments
arg_proxy=(\
  '--noproxy[list of hosts to connect directly to instead of through proxy]:no-proxy-list' \
  {-p,--proxytunnel}'[tunnel non-http protocols through http proxy]' \
  {-U,--proxy-user}'[specify the user name and password to use for proxy authentication]:user:password' \
  '--proxy-anyauth[use any authentication method for proxy, default to most secure]' \
  '--proxy-basic[use HTTP Basic authentication for proxy]' \
  '--proxy-digest[use http digest authentication for proxy]' \
  '--proxy-negotiate[enable GSS-Negotiate authentication for proxy]' \
  '--proxy-ntlm[enable ntlm authentication for proxy]' \
  '--proxy1.0[use http 1.0 proxy]:proxy url' \
  {-x,--proxy}'[use specified proxy]:proxy url' \
  '--socks5-gssapi-service[change service name for socks server]:servicename' \
  '--socks5-gssapi-nec[allow unprotected exchange of protection mode negotiation]' \
  )

# Crypto arguments
arg_crypto=(\
  {-1,--tlsv1}'[Forces curl to use TLS version 1 when negotiating with a remote TLS server.]' \
  {-2,--sslv2}'[Forces curl to use SSL version 2 when negotiating with a remote SSL server.]' \
  {-3,--sslv3}'[Forces curl to use SSL version 3 when negotiating with a remote SSL server.]' \
  '--ciphers[specifies which cipher to use for the ssl connection]:list of ciphers' \
  '--crlfile[specify file with revoked certificates]:file' \
  '--delegation[set delegation policy to use with GSS/kerberos]:delegation policy:(none policy always)' \
  {-E,--cert}'[use specified client certificate]:certificate file:_files' \
  '--engine[use selected OpenSSL crypto engine]:ssl crypto engine:{_curl_crypto_engine}' \
  '--egd-file[set ssl entropy gathering daemon socket]:entropy socket:_files' \
  '--cert-type[specify certificate type (PEM, DER, ENG)]:certificate type:(PEM DER ENG)' \
  '--cacert[specify certificate file to verify the peer with]:CA certificate:_files' \
  '--capath[specify a search path for certificate files]:CA certificate directory:_directories' \
  '--hostpubmd5[check remote hosts public key]:md5 hash' \
  {-k,--insecure}'[allow ssl to perform insecure ssl connections (ie, ignore certificate)]' \
  '--key[ssl/ssh private key file name]:key file:_files' \
  '--key-type[ssl/ssh private key file type]:file type:(PEM DER ENG)' \
  '--pubkey[ssh public key file]:pubkey file:_files' \
  '--random-file[set source of random data for ssl]:random source:_files' \
  '--no-sessionid[disable caching of ssl session ids]' \
  '--pass:phrase[passphrase for ssl/ssh private key]' \
  '--ssl[try to use ssl/tls for connection, if available]' \
  '--ssl-reqd[try to use ssl/tls for connection, fail if unavailable]' \
  '--tlsauthtype[set TLS authentication type (only SRP supported!)]:authtype' \
  '--tlsuser[set username for TLS authentication]:user' \
  '--tlspassword[set password for TLS authentication]:password' \
  )

# Connection arguments
arg_connection=(\
  {-4,--ipv4}'[prefer ipv4]' \
  {-6,--ipv6}'[prefer ipv6, if available]' \
  {-B,--use-ascii}'[use ascii mode]' \
  '--compressed[request a compressed transfer]' \
  '--connect-timeout[timeout for connection phase]:seconds' \
  {-I,--head}'[fetch http HEAD only (HTTP/FTP/FILE]' \
  '--interface[work on a specific interface]:name' \
  '--keepalive-time[set time to wait before sending keepalive probes]:seconds' \
  '--limit-rate[specify maximum transfer rate]:speed' \
  '--local-port[set preferred number or range of local ports to use]:num' \
  {-N,--no-buffer}'[disable buffering of the output stream]' \
  '--no-keepalive[disable use of keepalive messages in TCP connections]' \
  '--raw[disable all http decoding and pass raw data]' \
  '--resolve[provide a custom address for a specific host and port pair]:host\:port\:address' \
  '--retry[specify maximum number of retries for transient errors]:num' \
  '--retry-delay[specify delay between retries]:seconds' \
  '--retry-max-time[maximum time to spend on retries]:seconds' \
  '--tcp-nodelay[turn on TCP_NODELAY option]' \
  {-y,--speed-time}'[specify time to abort after if download is slower than speed-limit]:time' \
  {-Y,--speed-limit}'[specify minimum speed for --speed-time]:speed' \
  )

# Authentication arguments
arg_auth=(\
  '--anyauth[use any authentication method, default to most secure]' \
  '--basic[use HTTP Basic authentication]' \
  '--ntlm[enable ntlm authentication]' \
  '--digest[use http digest authentication]' \
  '--krb[use kerberos authentication]:auth:(clear safe confidential private)' \
  '--negotiate[enable GSS-Negotiate authentication]' \
  {-n,--netrc}'[scan ~/.netrc for login data]' \
  '--netrc-optional[like --netrc, but does not make .netrc usage mandatory]' \
  '--netrc-file[like --netrc, but specify file to use]:netrc file:_files' \
  '--tr-encoding[request compressed transfer-encoding]' \
  {-u,--user}'[specify user name and password for server authentication]:user\:password' \
  )

# Input arguments
arg_input=(\
  {-C,--continue-at}'[resume at offset ]:offset' \
  {-g,--globoff}'[do not glob {}\[\] letters]' \
  '--max-filesize[maximum filesize to download, fail for bigger files]:bytes' \
  '--proto[specify allowed protocols for transfer]:protocols' \
  '--proto-redir[specify allowed protocols for transfer after a redirect]:protocols' \
  {-r,--range}'[set range of bytes to request (HTTP/FTP/SFTP/FILE)]:range' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  {-T,--upload-file}'[transfer file to remote url (using PUT for HTTP)]:file to upload:_files' \
  '--url[specify a URL to fetch (multi)]:url:_urls' \
  {-z,--time-cond}'[request downloaded file to be newer than date or given reference file]:date expression' \
  )

# Output arguments
arg_output=(\
  '--create-dirs[create local directory hierarchy as needed]' \
  {-D,--dump-header}'[write protocol headers to file]:dump file:_files' \
  {-o,--output}'[write to specified file instead of stdout]:output file:_files' \
  {--progress-bar,-\#}'[display progress as a simple progress bar]' \
  {-\#,--progress-bar}'[Make curl display progress as a simple progress bar instead of the standard, more informational, meter.]' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  '--raw[disable all http decoding and pass raw data]' \
  {-s,--silent}'[silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[show errors in silent mode]' \
  '--stderr[redirect stderr to specified file]:output file:_files' \
  '--trace[enable full trace dump of all incoming and outgoing data]:trace file:_files' \
  '--trace-ascii[enable full trace dump of all incoming and outgoing data, without hex data]:trace file:_files' \
  '--trace-time[prepends a time stamp to each trace or verbose line that curl displays]' \
  {-v,--verbose}'[output debug info]' \
  {-w,--write-out}'[specify message to output on successful operation]:format string' \
  '--xattr[store some file metadata in extended file attributes]' \
  {-X,--request}'[specifies request method for HTTP server]:method:(GET POST PUT DELETE HEAD OPTIONS TRACE CONNECT PATCH LINK UNLINK)' \
  )

_arguments -C -s $arg_http $arg_ftp $arg_other $arg_crypto $arg_connection $arg_auth $arg_input $arg_output \
  {-M,--manual}'[Print manual]' \
  '*'{-K,--config}'[Use other config file to read arguments from]:config file:_files' \
  '--libcurl[output libcurl code for the operation to file]:output file:_files' \
  {-m,--max-time}'[Limit total time of operation]:seconds' \
  {-s,--silent}'[Silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[Show errors in silent mode]' \
  '--stderr[Redirect stderr to specified file]:output file:_files' \
  '-q[Do not read settings from .curlrc (must be first option)]' \
  {-h,--help}'[Print help and list of operations]' \
  {-V,--version}'[Print service API version]' \
  '--about[Print the information about service]' \
  '--host[Specify the host URL]':URL:_urls \
  '--dry-run[Print out the cURL command without executing it]' \
  {-ac,--accept}'[Set the Accept header in the request]: :{_values "Accept mime type" $(get_mime_type_completions)}' \
  {-ct,--content-type}'[Set the Content-type header in request]: :{_values "Content mime type" $(get_mime_type_completions)}' \
  '1: :->ops' \
  '*:: :->args' \
  && ret=0


case $state in
  ops)
    # Operations
    _values "Operations" \
            "getSpecificRate[Get specific rate]" \
            "v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet[Timeseries data]" \
            "v1ExchangerateAssetIdBaseGet[Get all current rates]" \
            "v1ExchangerateHistoryPeriodsGet[Timeseries periods]"             "v1AssetsAssetIdGet[List all assets by asset ID]" \
            "v1AssetsGet[List all assets]" \
            "v1AssetsIconsSizeGet[List all asset icons]" \
            "v1ChainsChainIdGet[List all chains by chain ID]" \
            "v1ChainsGet[List all blockchain chains]" \
            "v1ExchangesExchangeIdGet[List all exchanges by exchange_id]" \
            "v1ExchangesGet[List all exchanges]" \
            "v1ExchangesIconsSizeGet[List of icons for the exchanges]" \
            "v1SymbolsExchangeIdActiveGet[List all active symbols]" \
            "v1SymbolsExchangeIdByExchangeSymbolExchangeSymbolIdGet[Get a single symbol by its exchange-native symbol identifier.]" \
            "v1SymbolsExchangeIdHistoryGet[List all historical symbols for an exchange.]" \
            "v1SymbolsExchangeIdUnmappedGet[List symbols not yet mapped to a CoinAPI symbol_id for an exchange.]" \
            "v1SymbolsMapExchangeIdGet[List active symbol mapping for the exchange]"             "v1MetricsAssetCurrentGet[Current metrics for given asset]" \
            "v1MetricsAssetHistoryGet[Historical metrics for asset]" \
            "v1MetricsAssetListingGet[Listing of all supported metrics for asset]" \
            "v1MetricsExchangeCurrentGet[Current metrics for given exchange]" \
            "v1MetricsExchangeHistoryGet[Historical metrics for the exchange]" \
            "v1MetricsExchangeListingGet[Listing of all supported exchange metrics]" \
            "v1MetricsListingGet[Listing of all supported metrics by CoinAPI]" \
            "v1MetricsSymbolCurrentGet[Current metrics for given symbol]" \
            "v1MetricsSymbolHistoryGet[Historical metrics for symbol]" \
            "v1MetricsSymbolListingGet[Listing of all supported metrics for symbol]"             "marketdataListMetricsV2AssetHistory[Historical metrics for the asset]" \
            "marketdataListMetricsV2AssetListing[Listing of metrics available for specific asset]" \
            "marketdataListMetricsV2ChainHistory[Historical metrics for the chain]" \
            "marketdataListMetricsV2ChainListing[Listing of metrics available for specific chain]" \
            "marketdataListMetricsV2ExchangeHistory[Historical metrics for the exchange]" \
            "marketdataListMetricsV2ExchangeListing[Listing of metrics available for specific exchange]" \
            "marketdataListMetricsV2Listing[Listing of all supported metrics]"             "v1OhlcvExchangesExchangeIdHistoryGet[Historical data by exchange]" \
            "v1OhlcvPeriodsGet[List all periods]" \
            "v1OhlcvSymbolIdHistoryGet[Historical data]" \
            "v1OhlcvSymbolIdLatestGet[Latest data]"             "v1OptionsExchangeIdCurrentGet[Current data by Exchange]"             "v1OrderbooksSymbolIdCurrentGet[Get current order book]" \
            "v1OrderbooksSymbolIdDepthCurrentGet[Current depth of the order book]" \
            "v1OrderbooksSymbolIdHistoryGet[Historical data]"             "v1Orderbooks3CurrentGet[Current order books]" \
            "v1Orderbooks3SymbolIdCurrentGet[Current order book by symbol_id]"             "v1QuotesCurrentGet[Current data]" \
            "v1QuotesLatestGet[Latest data]" \
            "v1QuotesSymbolIdCurrentGet[Current quotes for a specific symbol]" \
            "v1QuotesSymbolIdHistoryGet[Historical data]" \
            "v1QuotesSymbolIdLatestGet[Latest quote updates for a specific symbol]"             "v1TradesLatestGet[Latest data]" \
            "v1TradesSymbolIdHistoryGet[Historical data]" \
            "v1TradesSymbolIdLatestGet[Latest data by symbol_id]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      getSpecificRate)
        local -a _op_arguments
        _op_arguments=(
          "asset_id_base=:[PATH] Requested exchange rate base asset identifier (from the Metadata -&gt; Assets)"
"asset_id_quote=:[PATH] Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets)"
          "time=:[QUERY] Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet)
        local -a _op_arguments
        _op_arguments=(
          "asset_id_base=:[PATH] Requested exchange rates base asset identifier (from the Metadata -&gt; Assets)"
"asset_id_quote=:[PATH] Requested exchange rates base asset identifier (from the Metadata -&gt; Assets)"
          "period_id=:[QUERY] Identifier of requested timeseries period (required, e.g. &#39;5SEC&#39; or &#39;1HRS&#39;)"
"time_start=:[QUERY] Timeseries starting time in ISO 8601 (required)"
"time_end=:[QUERY] Timeseries ending time in ISO 8601 (required)"
"limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ExchangerateAssetIdBaseGet)
        local -a _op_arguments
        _op_arguments=(
          "asset_id_base=:[PATH] Requested exchange rates base asset identifier (from the Metadata -&gt; Assets)"
          "filter_asset_id=:[QUERY] Comma or semicolon delimited asset identifiers used to filter response (optional)"
"invert=true:[QUERY] True will invert all the rates (optional, if true then rates will be calculated as &#39;rate &#x3D; 1 / actual_rate&#39; eg. &#39;USD/BTC&#39; as &#39;BTC/USD&#39;)"
          "invert=false:[QUERY] True will invert all the rates (optional, if true then rates will be calculated as &#39;rate &#x3D; 1 / actual_rate&#39; eg. &#39;USD/BTC&#39; as &#39;BTC/USD&#39;)"
"time=:[QUERY] Time for historical rates (optional)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ExchangerateHistoryPeriodsGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AssetsAssetIdGet)
        local -a _op_arguments
        _op_arguments=(
          "asset_id=:[PATH] The asset ID."
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AssetsGet)
        local -a _op_arguments
        _op_arguments=(
                    "filter_asset_id=:[QUERY] Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#39;BTC;ETH&#39;)."
"filter_asset_type=:[QUERY] Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1AssetsIconsSizeGet)
        local -a _op_arguments
        _op_arguments=(
          "size=:[PATH] The size of the icons."
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ChainsChainIdGet)
        local -a _op_arguments
        _op_arguments=(
          "chain_id=:[PATH] The chain ID."
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ChainsGet)
        local -a _op_arguments
        _op_arguments=(
                    "filter_chain_id=:[QUERY] Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#39;ETHEREUM;ARBITRUM&#39;)."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ExchangesExchangeIdGet)
        local -a _op_arguments
        _op_arguments=(
          "exchange_id=:[PATH] The ID of the exchange."
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ExchangesGet)
        local -a _op_arguments
        _op_arguments=(
                    "filter_exchange_id=:[QUERY] Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#39;BITSTAMP;GEMINI&#39;)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1ExchangesIconsSizeGet)
        local -a _op_arguments
        _op_arguments=(
          "size=:[PATH] The size of the icons."
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SymbolsExchangeIdActiveGet)
        local -a _op_arguments
        _op_arguments=(
          "exchange_id=:[PATH] The ID of the exchange."
          "filter_symbol_id=:[QUERY] Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#39;BITSTAMP&#39;_ or &#39;BINANCE_SPOT_&#39;)"
"filter_asset_id=:[QUERY] The filter for asset ID."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SymbolsExchangeIdByExchangeSymbolExchangeSymbolIdGet)
        local -a _op_arguments
        _op_arguments=(
          "exchange_id=:[PATH] The ID of the exchange."
"exchange_symbol_id=:[PATH] The exchange-native symbol identifier (&#39;symbol_id_exchange&#39;)."
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SymbolsExchangeIdHistoryGet)
        local -a _op_arguments
        _op_arguments=(
          "exchange_id=:[PATH] The ID of the exchange."
          "page=:[QUERY] The page number for pagination (starts from 1)."
"limit=:[QUERY] Number of records to return per page."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SymbolsExchangeIdUnmappedGet)
        local -a _op_arguments
        _op_arguments=(
          "exchange_id=:[PATH] The ID of the exchange."
          "page=:[QUERY] The page number for pagination (starts from 1)."
"limit=:[QUERY] Number of records to return per page."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1SymbolsMapExchangeIdGet)
        local -a _op_arguments
        _op_arguments=(
          "exchange_id=:[PATH] The ID of the exchange (from the Metadata -&gt; Exchanges)"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MetricsAssetCurrentGet)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] Metric identifier (from the Metrics -&gt; Listing)"
"asset_id=:[QUERY] Asset identifier (from the Metadata -&gt; Assets)"
"asset_id_external=:[QUERY] Exchange asset identifier"
"exchange_id=:[QUERY] Exchange identifier (from the Metadata -&gt; Exchanges)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MetricsAssetHistoryGet)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] Metric identifier (from the Metrics -&gt; Listing)"
"asset_id=:[QUERY] Asset identifier (from the Metadata -&gt; Assets)"
"asset_id_external=:[QUERY] Exchange asset identifier"
"exchange_id=:[QUERY] Exchange identifier (from the Metadata -&gt; Exchanges)"
"time_start=:[QUERY] Starting time in ISO 8601"
"time_end=:[QUERY] Ending time in ISO 8601"
"time_format=:[QUERY] If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)"
"period_id=:[QUERY] Identifier of requested timeseries period (e.g. &#39;5SEC&#39; or &#39;2MTH&#39;), default value is &#39;1SEC&#39;"
"limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MetricsAssetListingGet)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] Metric identifier (from the Metrics -&gt; Listing)"
"exchange_id=:[QUERY] Exchange identifier (from the Metadata -&gt; Exchanges)"
"chain_id=:[QUERY] Chain identifier"
"network_id=:[QUERY] Network identifier"
"asset_id=:[QUERY] Asset identifier (from the Metadata -&gt; Assets)"
"asset_id_external=:[QUERY] The asset external identifier"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MetricsExchangeCurrentGet)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] The metric identifier (from the Metrics -&gt; Listing)"
"exchange_id=:[QUERY] The exchange identifier (from the Metadata -&gt; Exchanges)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MetricsExchangeHistoryGet)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] Metric identifier (from the Metrics -&gt; Listing)"
"exchange_id=:[QUERY] Exchange identifier (from the Metadata -&gt; Exchanges)"
"time_start=:[QUERY] Starting time in ISO 8601"
"time_end=:[QUERY] Ending time in ISO 8601"
"time_format=:[QUERY] If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)"
"period_id=:[QUERY] Identifier of requested timeseries period (e.g. &#39;5SEC&#39; or &#39;2MTH&#39;), default value is &#39;1SEC&#39;"
"limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MetricsExchangeListingGet)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] The metric identifier (from the Metrics -&gt; Listing)"
"exchange_id=:[QUERY] The exchange identifier (from the Metadata -&gt; Exchanges)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MetricsListingGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MetricsSymbolCurrentGet)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] Metric identifier (from the Metrics -&gt; Listing)"
"symbol_id=:[QUERY] Symbol identifier (from the Metadata -&gt; Symbols)"
"exchange_id=:[QUERY] Exchange id (from the Metadata -&gt; Exchanges)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MetricsSymbolHistoryGet)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] Metric identifier (from the Metrics -&gt; Listing)"
"symbol_id=:[QUERY] Symbol identifier (from the Metadata -&gt; Symbols)"
"time_start=:[QUERY] Starting time in ISO 8601"
"time_end=:[QUERY] Ending time in ISO 8601"
"time_format=:[QUERY] If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)"
"period_id=:[QUERY] Identifier of requested timeseries period (e.g. &#39;5SEC&#39; or &#39;2MTH&#39;), default value is &#39;1SEC&#39;"
"limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1MetricsSymbolListingGet)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] Metric identifier (from the Metrics -&gt; Listing)"
"exchange_id=:[QUERY] Exchange identifier (from the Metadata -&gt; Exchanges)"
"symbol_id=:[QUERY] Symbol identifier (from the Metadata -&gt; Symbols)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      marketdataListMetricsV2AssetHistory)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] Metric identifier (e.g., &#39;TVL&#39;, &#39;STABLES_BRIDGED_USD&#39;)"
"asset_id=:[QUERY] Asset identifier (e.g., &#39;USDC&#39;, &#39;USDT&#39;)"
"time_start=:[QUERY] Starting time in ISO 8601"
"time_end=:[QUERY] Ending time in ISO 8601"
"time_format=:[QUERY] If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)"
"period_id=:[QUERY] Identifier of requested timeseries period (e.g. &#39;1MIN&#39; or &#39;2MTH&#39;), default value is &#39;1MIN&#39;"
"limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      marketdataListMetricsV2AssetListing)
        local -a _op_arguments
        _op_arguments=(
                    "asset_id=:[QUERY] Asset identifier (e.g., USDC, USDT)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      marketdataListMetricsV2ChainHistory)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] Metric identifier (e.g., &#39;TVL&#39;, &#39;STABLES_BRIDGED_USD&#39;)"
"chain_id=:[QUERY] Chain identifier (e.g., &#39;Ethereum&#39;, &#39;Arbitrum&#39;)"
"time_start=:[QUERY] Starting time in ISO 8601"
"time_end=:[QUERY] Ending time in ISO 8601"
"time_format=:[QUERY] If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)"
"period_id=:[QUERY] Identifier of requested timeseries period (e.g. &#39;1MIN&#39; or &#39;2MTH&#39;), default value is &#39;1MIN&#39;"
"limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      marketdataListMetricsV2ChainListing)
        local -a _op_arguments
        _op_arguments=(
                    "chain_id=:[QUERY] Chain identifier (e.g., ETHEREUM, ARBITRUM)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      marketdataListMetricsV2ExchangeHistory)
        local -a _op_arguments
        _op_arguments=(
                    "metric_id=:[QUERY] Metric identifier (e.g., &#39;TVL&#39;, &#39;STABLES_BRIDGED_USD&#39;)"
"exchange_id=:[QUERY] Exchange identifier (e.g., &#39;BINANCE&#39;, &#39;UNISWAP-V3-ETHEREUM&#39;)"
"time_start=:[QUERY] Starting time in ISO 8601"
"time_end=:[QUERY] Ending time in ISO 8601"
"time_format=:[QUERY] If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)"
"period_id=:[QUERY] Identifier of requested timeseries period (e.g. &#39;1MIN&#39; or &#39;2MTH&#39;), default value is &#39;1MIN&#39;"
"limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      marketdataListMetricsV2ExchangeListing)
        local -a _op_arguments
        _op_arguments=(
                    "exchange_id=:[QUERY] Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      marketdataListMetricsV2Listing)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1OhlcvExchangesExchangeIdHistoryGet)
        local -a _op_arguments
        _op_arguments=(
          "exchange_id=:[PATH] Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges)"
          "period_id=:[QUERY] Identifier of requested timeseries period (e.g. &#39;5SEC&#39; or &#39;1DAY&#39;)"
"time_start=:[QUERY] Timeseries starting time in ISO 8601"
"time_end=:[QUERY] Timeseries ending time in ISO 8601"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1OhlcvPeriodsGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1OhlcvSymbolIdHistoryGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols)"
          "period_id=:[QUERY] Identifier of requested timeseries period (e.g. &#39;5SEC&#39; or &#39;2MTH&#39;)"
"time_start=:[QUERY] Timeseries starting time in ISO 8601"
"time_end=:[QUERY] Timeseries ending time in ISO 8601"
"limit=:[QUERY] Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1OhlcvSymbolIdLatestGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols)"
          "period_id=:[QUERY] Identifier of requested timeseries period (e.g. &#39;5SEC&#39; or &#39;2MTH&#39;)"
"limit=:[QUERY] Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1OptionsExchangeIdCurrentGet)
        local -a _op_arguments
        _op_arguments=(
          "exchange_id=:[PATH] Exchange identifier (from the Metadata -&gt; Exchanges)"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1OrderbooksSymbolIdCurrentGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] The symbol ID (from the Metadata -&gt; Symbols)"
          "limit_levels=:[QUERY] The maximum number of levels to include in the response."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1OrderbooksSymbolIdDepthCurrentGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] The symbol ID (from the Metadata -&gt; Symbols)"
          "limit_levels=:[QUERY] The maximum number of levels to include in the response."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1OrderbooksSymbolIdHistoryGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols)"
          "date=:[QUERY] Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided)"
"time_start=:[QUERY] Starting time in ISO 8601 (supports hourly precision, e.g., 2026-01-16T11:00:00Z)"
"time_end=:[QUERY] Timeseries ending time in ISO 8601 (optional, supports cross-day queries)"
"limit=:[QUERY] Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
"limit_levels=:[QUERY] Maximum amount of levels from each side of the book to include in response (optional, maximum is 50)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1Orderbooks3CurrentGet)
        local -a _op_arguments
        _op_arguments=(
                    "filter_symbol_id=:[QUERY] Comma or semicolon delimited parts of symbol identifier used to filter the response."
"limit_levels=:[QUERY] The maximum number of levels to include in the response."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1Orderbooks3SymbolIdCurrentGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] The symbol ID (from the Metadata -&gt; Symbols)"
          "limit_levels=:[QUERY] The maximum number of levels to include in the response."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1QuotesCurrentGet)
        local -a _op_arguments
        _op_arguments=(
                    "filter_symbol_id=:[QUERY] Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)"
"filter_exchange_id=:[QUERY] Comma or semicolon delimited exchange identifiers used to filter response. (optional)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1QuotesLatestGet)
        local -a _op_arguments
        _op_arguments=(
                    "filter_symbol_id=:[QUERY] Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)"
"filter_exchange_id=:[QUERY] Comma or semicolon delimited exchange identifiers used to filter response. (optional)"
"limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1QuotesSymbolIdCurrentGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] The symbol identifier (from the Metadata -&gt; Symbols)"
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1QuotesSymbolIdHistoryGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols)"
          "date=:[QUERY] Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided)"
"time_start=:[QUERY] Starting time in ISO 8601 (supports hourly precision, e.g., 2026-01-16T11:00:00Z)"
"time_end=:[QUERY] Timeseries ending time in ISO 8601 (optional, supports cross-day queries)"
"limit=:[QUERY] Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1QuotesSymbolIdLatestGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols)"
          "limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1TradesLatestGet)
        local -a _op_arguments
        _op_arguments=(
                    "filter_symbol_id=:[QUERY] Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)"
"include_id=true:[QUERY] Information that additional exchange trade identifier should be included in the &#39;id_trade&#39; parameter of the trade if exchange providing identifiers."
          "include_id=false:[QUERY] Information that additional exchange trade identifier should be included in the &#39;id_trade&#39; parameter of the trade if exchange providing identifiers."
"limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1TradesSymbolIdHistoryGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols)"
          "date=:[QUERY] Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided)"
"time_start=:[QUERY] Starting time in ISO 8601 (supports hourly precision, e.g., 2026-01-16T11:00:00Z)"
"time_end=:[QUERY] Timeseries ending time in ISO 8601 (optional, supports cross-day queries)"
"limit=:[QUERY] Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
"include_id=true:[QUERY] Information that additional exchange trade identifier should be included in the &#39;id_trade&#39; parameter of the trade if exchange providing identifiers."
          "include_id=false:[QUERY] Information that additional exchange trade identifier should be included in the &#39;id_trade&#39; parameter of the trade if exchange providing identifiers."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      v1TradesSymbolIdLatestGet)
        local -a _op_arguments
        _op_arguments=(
          "symbol_id=:[PATH] Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols)"
          "limit=:[QUERY] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)"
"include_id=true:[QUERY] Information that additional exchange trade identifier should be included in the &#39;id_trade&#39; parameter of the trade if exchange providing identifiers."
          "include_id=false:[QUERY] Information that additional exchange trade identifier should be included in the &#39;id_trade&#39; parameter of the trade if exchange providing identifiers."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
    esac
    ;;

esac

return ret
