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
            "cRYPTOPUNKSBidsCurrent[Bids (current)]" \
            "cRYPTOPUNKSCollectionDailySnapshotsCurrent[CollectionDailySnapshots (current)]" \
            "cRYPTOPUNKSCollectionsCurrent[Collections (current)]" \
            "cRYPTOPUNKSDataSourcesCurrent[DataSources (current)]" \
            "cRYPTOPUNKSGetBidsHistorical[Bids (historical)]" \
            "cRYPTOPUNKSGetCollectionDailySnapshotsHistorical[CollectionDailySnapshots (historical)]" \
            "cRYPTOPUNKSGetCollectionsHistorical[Collections (historical)]" \
            "cRYPTOPUNKSGetDataSourcesHistorical[DataSources (historical)]" \
            "cRYPTOPUNKSGetItemsHistorical[Items (historical)]" \
            "cRYPTOPUNKSGetMarketPlacesHistorical[MarketPlaces (historical)]" \
            "cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical[MarketplaceDailySnapshots (historical)]" \
            "cRYPTOPUNKSGetTradesHistorical[Trades (historical)]" \
            "cRYPTOPUNKSGetUsersHistorical[Users (historical)]" \
            "cRYPTOPUNKSItemsCurrent[Items (current)]" \
            "cRYPTOPUNKSMarketPlacesCurrent[MarketPlaces (current)]" \
            "cRYPTOPUNKSMarketplaceDailySnapshotsCurrent[MarketplaceDailySnapshots (current)]" \
            "cRYPTOPUNKSTradesCurrent[Trades (current)]" \
            "cRYPTOPUNKSUsersCurrent[Users (current)]"             "cowGetOrdersHistorical[Orders (historical)]" \
            "cowGetSettlementsHistorical[Settlements (historical)]" \
            "cowGetTokensHistorical[Tokens (historical)]" \
            "cowGetTradesHistorical[Trades (historical)]" \
            "cowGetUsersHistorical[Users (historical)]" \
            "cowOrdersCurrent[Orders (current)]" \
            "cowSettlementsCurrent[Settlements (current)]" \
            "cowTokensCurrent[Tokens (current)]" \
            "cowTradesCurrent[Trades (current)]" \
            "cowUsersCurrent[Users (current)]"             "curveAccountsCurrent[Accounts (current)]" \
            "curveAddLiquidityEventsCurrent[AddLiquidityEvents (current)]" \
            "curveAdminFeeChangeLogsCurrent[AdminFeeChangeLogs (current)]" \
            "curveAmplificationCoeffChangeLogsCurrent[AmplificationCoeffChangeLogs (current)]" \
            "curveCoinsCurrent[Coins (current)]" \
            "curveContractVersionsCurrent[ContractVersions (current)]" \
            "curveContractsCurrent[Contracts (current)]" \
            "curveDailyVolumesCurrent[DailyVolumes (current)]" \
            "curveExchangesCurrent[Exchanges (current)]" \
            "curveFeeChangeLogsCurrent[FeeChangeLogs (current)]" \
            "curveGaugeDepositsCurrent[GaugeDeposits (current)]" \
            "curveGaugeLiquiditiesCurrent[GaugeLiquidities (current)]" \
            "curveGaugeTotalWeightsCurrent[GaugeTotalWeights (current)]" \
            "curveGaugeTypeWeightsCurrent[GaugeTypeWeights (current)]" \
            "curveGaugeTypesCurrent[GaugeTypes (current)]" \
            "curveGaugeWeightVotesCurrent[GaugeWeightVotes (current)]" \
            "curveGaugeWeightsCurrent[GaugeWeights (current)]" \
            "curveGaugeWithdrawsCurrent[GaugeWithdraws (current)]" \
            "curveGaugesCurrent[Gauges (current)]" \
            "curveGetAccountsHistorical[Accounts (historical)]" \
            "curveGetAddLiquidityEventsHistorical[AddLiquidityEvents (historical)]" \
            "curveGetAdminFeeChangeLogsHistorical[AdminFeeChangeLogs (historical)]" \
            "curveGetAmplificationCoeffChangeLogsHistorical[AmplificationCoeffChangeLogs (historical)]" \
            "curveGetCoinsHistorical[Coins (historical)]" \
            "curveGetContractVersionsHistorical[ContractVersions (historical)]" \
            "curveGetContractsHistorical[Contracts (historical)]" \
            "curveGetDailyVolumesHistorical[DailyVolumes (historical)]" \
            "curveGetExchangesHistorical[Exchanges (historical)]" \
            "curveGetFeeChangeLogsHistorical[FeeChangeLogs (historical)]" \
            "curveGetGaugeDepositsHistorical[GaugeDeposits (historical)]" \
            "curveGetGaugeLiquiditiesHistorical[GaugeLiquidities (historical)]" \
            "curveGetGaugeTotalWeightsHistorical[GaugeTotalWeights (historical)]" \
            "curveGetGaugeTypeWeightsHistorical[GaugeTypeWeights (historical)]" \
            "curveGetGaugeTypesHistorical[GaugeTypes (historical)]" \
            "curveGetGaugeWeightVotesHistorical[GaugeWeightVotes (historical)]" \
            "curveGetGaugeWeightsHistorical[GaugeWeights (historical)]" \
            "curveGetGaugeWithdrawsHistorical[GaugeWithdraws (historical)]" \
            "curveGetGaugesHistorical[Gauges (historical)]" \
            "curveGetHourlyVolumesHistorical[HourlyVolumes (historical)]" \
            "curveGetLpTokensHistorical[LpTokens (historical)]" \
            "curveGetPoolsHistorical[Pools (historical)]" \
            "curveGetProposalVotesHistorical[ProposalVotes (historical)]" \
            "curveGetProposalsHistorical[Proposals (historical)]" \
            "curveGetRemoveLiquidityEventsHistorical[RemoveLiquidityEvents (historical)]" \
            "curveGetRemoveLiquidityOneEventsHistorical[RemoveLiquidityOneEvents (historical)]" \
            "curveGetSystemStatesHistorical[SystemStates (historical)]" \
            "curveGetTokensHistorical[Tokens (historical)]" \
            "curveGetTransferOwnershipEventsHistorical[TransferOwnershipEvents (historical)]" \
            "curveGetUnderlyingCoinsHistorical[UnderlyingCoins (historical)]" \
            "curveGetVotingAppsHistorical[VotingApps (historical)]" \
            "curveGetWeeklyVolumesHistorical[WeeklyVolumes (historical)]" \
            "curveHourlyVolumesCurrent[HourlyVolumes (current)]" \
            "curveLpTokensCurrent[LpTokens (current)]" \
            "curvePoolsCurrent[Pools (current)]" \
            "curveProposalVotesCurrent[ProposalVotes (current)]" \
            "curveProposalsCurrent[Proposals (current)]" \
            "curveRemoveLiquidityEventsCurrent[RemoveLiquidityEvents (current)]" \
            "curveRemoveLiquidityOneEventsCurrent[RemoveLiquidityOneEvents (current)]" \
            "curveSystemStatesCurrent[SystemStates (current)]" \
            "curveTokensCurrent[Tokens (current)]" \
            "curveTransferOwnershipEventsCurrent[TransferOwnershipEvents (current)]" \
            "curveUnderlyingCoinsCurrent[UnderlyingCoins (current)]" \
            "curveVotingAppsCurrent[VotingApps (current)]" \
            "curveWeeklyVolumesCurrent[WeeklyVolumes (current)]"             "dexBatchesCurrent[Batches (current)]" \
            "dexDepositsCurrent[Deposits (current)]" \
            "dexGetBatchesHistorical[Batches (historical)]" \
            "dexGetDepositsHistorical[Deposits (historical)]" \
            "dexGetOrdersHistorical[Orders (historical)]" \
            "dexGetPricesHistorical[Prices (historical)]" \
            "dexGetSolutionsHistorical[Solutions (historical)]" \
            "dexGetStatsHistorical[Stats (historical)]" \
            "dexGetTokensHistorical[Tokens (historical)]" \
            "dexGetTradesHistorical[Trades (historical)]" \
            "dexGetUsersHistorical[Users (historical)]" \
            "dexGetWithdrawRequestsHistorical[WithdrawRequests (historical)]" \
            "dexGetWithdrawsHistorical[Withdraws (historical)]" \
            "dexOrdersCurrent[Orders (current)]" \
            "dexPricesCurrent[Prices (current)]" \
            "dexSolutionsCurrent[Solutions (current)]" \
            "dexStatsCurrent[Stats (current)]" \
            "dexTokensCurrent[Tokens (current)]" \
            "dexTradesCurrent[Trades (current)]" \
            "dexUsersCurrent[Users (current)]" \
            "dexWithdrawRequestsCurrent[WithdrawRequests (current)]" \
            "dexWithdrawsCurrent[Withdraws (current)]"             "metadataChainsGet[List all chains.]" \
            "metadataDappsDappNameGet[Gets dapp by name.]" \
            "metadataDappsGet[List all decentralized applications.]"             "sushiswapBundlesCurrent[Bundles (current)]" \
            "sushiswapBurnsCurrent[Burns (current)]" \
            "sushiswapDayDataCurrent[DayData (current)]" \
            "sushiswapFactoriesCurrent[Factories (current)]" \
            "sushiswapGetBundlesHistorical[Bundles (historical)]" \
            "sushiswapGetBurnsHistorical[Burns (historical)]" \
            "sushiswapGetDayDataHistorical[DayData (historical)]" \
            "sushiswapGetFactoriesHistorical[Factories (historical)]" \
            "sushiswapGetHourDataHistorical[HourData (historical)]" \
            "sushiswapGetLiquidityPositionSnapshotsHistorical[LiquidityPositionSnapshots (historical)]" \
            "sushiswapGetLiquidityPositionsHistorical[LiquidityPositions (historical)]" \
            "sushiswapGetMintsHistorical[Mints (historical)]" \
            "sushiswapGetPairDayDataHistorical[PairDayData (historical)]" \
            "sushiswapGetPairHourDataHistorical[PairHourData (historical)]" \
            "sushiswapGetPairsHistorical[Pairs (historical)]" \
            "sushiswapGetSwapsHistorical[Swaps (historical)]" \
            "sushiswapGetTokenDayDataHistorical[TokenDayData (historical)]" \
            "sushiswapGetTokensHistorical[Tokens (historical)]" \
            "sushiswapGetTransactionsHistorical[Transactions (historical)]" \
            "sushiswapGetUsersHistorical[Users (historical)]" \
            "sushiswapHourDataCurrent[HourData (current)]" \
            "sushiswapLiquidityPositionSnapshotsCurrent[LiquidityPositionSnapshots (current)]" \
            "sushiswapLiquidityPositionsCurrent[LiquidityPositions (current)]" \
            "sushiswapMintsCurrent[Mints (current)]" \
            "sushiswapPairDayDataCurrent[PairDayData (current)]" \
            "sushiswapPairHourDataCurrent[PairHourData (current)]" \
            "sushiswapPairsCurrent[Pairs (current)]" \
            "sushiswapSwapsCurrent[Swaps (current)]" \
            "sushiswapTokenDayDataCurrent[TokenDayData (current)]" \
            "sushiswapTokensCurrent[Tokens (current)]" \
            "sushiswapTransactionsCurrent[Transactions (current)]" \
            "sushiswapUsersCurrent[Users (current)]"             "uniswapV2BundlesCurrent[Bundles (current)]" \
            "uniswapV2BurnsCurrent[Burns (current)]" \
            "uniswapV2GetBundlesHistorical[Bundles (historical)]" \
            "uniswapV2GetBurnsHistorical[Burns (historical)]" \
            "uniswapV2GetLiquidityPositionSnapshotsHistorical[LiquidityPositionSnapshots (historical)]" \
            "uniswapV2GetLiquidityPositionsHistorical[LiquidityPositions (historical)]" \
            "uniswapV2GetMintsHistorical[Mints (historical)]" \
            "uniswapV2GetPairDayDataHistorical[PairDayData (historical)]" \
            "uniswapV2GetPairHourDataHistorical[PairHourData (historical)]" \
            "uniswapV2GetPairsHistorical[Pairs (historical)]" \
            "uniswapV2GetSwapsHistorical[Swaps (historical)]" \
            "uniswapV2GetTokenDayDataHistorical[TokenDayData (historical)]" \
            "uniswapV2GetTokensHistorical[Tokens (historical)]" \
            "uniswapV2GetTransactionsHistorical[Transactions (historical)]" \
            "uniswapV2GetUniswapDayDataHistorical[UniswapDayData (historical)]" \
            "uniswapV2GetUniswapFactoriesHistorical[UniswapFactories (historical)]" \
            "uniswapV2GetUsersHistorical[Users (historical)]" \
            "uniswapV2LiquidityPositionSnapshotsCurrent[LiquidityPositionSnapshots (current)]" \
            "uniswapV2LiquidityPositionsCurrent[LiquidityPositions (current)]" \
            "uniswapV2MintsCurrent[Mints (current)]" \
            "uniswapV2PairDayDataCurrent[PairDayData (current)]" \
            "uniswapV2PairHourDataCurrent[PairHourData (current)]" \
            "uniswapV2PairsCurrent[Pairs (current)]" \
            "uniswapV2SwapsCurrent[Swaps (current)]" \
            "uniswapV2TokenDayDataCurrent[TokenDayData (current)]" \
            "uniswapV2TokensCurrent[Tokens (current)]" \
            "uniswapV2TransactionsCurrent[Transactions (current)]" \
            "uniswapV2UniswapDayDataCurrent[UniswapDayData (current)]" \
            "uniswapV2UniswapFactoriesCurrent[UniswapFactories (current)]" \
            "uniswapV2UsersCurrent[Users (current)]"             "uniswapV3BundlesCurrent[Bundles (current)]" \
            "uniswapV3BurnsCurrent[Burns (current)]" \
            "uniswapV3FactoriesCurrent[Factories (current)]" \
            "uniswapV3GetBundlesHistorical[Bundles (historical)]" \
            "uniswapV3GetBurnsHistorical[Burns (historical)]" \
            "uniswapV3GetFactoriesHistorical[Factories (historical)]" \
            "uniswapV3GetMintsHistorical[Mints (historical)]" \
            "uniswapV3GetPoolDayDataHistorical[PoolDayData (historical)]" \
            "uniswapV3GetPoolHourDataHistorical[PoolHourData (historical)]" \
            "uniswapV3GetPoolsHistorical[Pools (historical)]" \
            "uniswapV3GetPositionSnapshotsHistorical[PositionSnapshots (historical)]" \
            "uniswapV3GetPositionsHistorical[Positions (historical)]" \
            "uniswapV3GetSwapsHistorical[Swaps (historical)]" \
            "uniswapV3GetTickDayDataHistorical[TickDayData (historical)]" \
            "uniswapV3GetTicksHistorical[Ticks (historical)]" \
            "uniswapV3GetTokenHourDataHistorical[TokenHourData (historical)]" \
            "uniswapV3GetTokenV3DayDataHistorical[TokenV3DayData (historical)]" \
            "uniswapV3GetTokensHistorical[Tokens (historical)]" \
            "uniswapV3GetTransactionsHistorical[Transactions (historical)]" \
            "uniswapV3GetUniswapDayDataHistorical[UniswapDayData (historical)]" \
            "uniswapV3MintsCurrent[Mints (current)]" \
            "uniswapV3PoolDayDataCurrent[PoolDayData (current)]" \
            "uniswapV3PoolHourDataCurrent[PoolHourData (current)]" \
            "uniswapV3PoolsCurrent[Pools (current)]" \
            "uniswapV3PositionSnapshotsCurrent[PositionSnapshots (current)]" \
            "uniswapV3PositionsCurrent[Positions (current)]" \
            "uniswapV3SwapsCurrent[Swaps (current)]" \
            "uniswapV3TickDayDataCurrent[TickDayData (current)]" \
            "uniswapV3TicksCurrent[Ticks (current)]" \
            "uniswapV3TokenHourDataCurrent[TokenHourData (current)]" \
            "uniswapV3TokenV3DayDataCurrent[TokenV3DayData (current)]" \
            "uniswapV3TokensCurrent[Tokens (current)]" \
            "uniswapV3TransactionsCurrent[Transactions (current)]" \
            "uniswapV3UniswapDayDataCurrent[UniswapDayData (current)]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      cRYPTOPUNKSBidsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSCollectionDailySnapshotsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSCollectionsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSDataSourcesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSGetBidsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSGetCollectionDailySnapshotsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSGetCollectionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSGetDataSourcesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSGetItemsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSGetMarketPlacesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSGetTradesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSGetUsersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSItemsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSMarketPlacesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSMarketplaceDailySnapshotsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSTradesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cRYPTOPUNKSUsersCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowGetOrdersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] User&#39;s address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowGetSettlementsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Transaction hash."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowGetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Token&#39;s address."
"address=:[QUERY] Token&#39;s address."
"name=:[QUERY] Token name fetched by ERC20 contract call."
"symbol=:[QUERY] Token symbol fetched by contract call."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowGetTradesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (order id)|(transaction hash)|(event index)."
"sell_token=:[QUERY] Address of token that is sold."
"buy_token=:[QUERY] Address of token that is bought."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowGetUsersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] User&#39;s address."
"address=:[QUERY] User&#39;s address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowOrdersCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowSettlementsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowTokensCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowTradesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowUsersCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveAccountsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveAddLiquidityEventsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveAdminFeeChangeLogsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveAmplificationCoeffChangeLogsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveCoinsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveContractVersionsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveContractsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveDailyVolumesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveExchangesCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveFeeChangeLogsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGaugeDepositsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGaugeLiquiditiesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGaugeTotalWeightsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGaugeTypeWeightsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGaugeTypesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGaugeWeightVotesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGaugeWeightsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGaugeWithdrawsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGaugesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetAccountsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"address=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetAddLiquidityEventsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetAdminFeeChangeLogsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetAmplificationCoeffChangeLogsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetCoinsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (pool_id)-(coin_index)."
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetContractVersionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"address=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetContractsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetDailyVolumesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetExchangesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetFeeChangeLogsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugeDepositsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugeLiquiditiesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"user=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugeTotalWeightsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugeTypeWeightsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugeTypesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"name=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugeWeightVotesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"user=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugeWeightsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugeWithdrawsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"address=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetHourlyVolumesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetLpTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"address=:[QUERY] "
"name=:[QUERY] "
"symbol=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetPoolsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Pool address."
"name=:[QUERY] Pool&#39;s human-readable name."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetProposalVotesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetProposalsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetRemoveLiquidityEventsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetRemoveLiquidityOneEventsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetSystemStatesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Singleton ID, equals to &#39;current&#39;."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"address=:[QUERY] "
"name=:[QUERY] "
"symbol=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetTransferOwnershipEventsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetUnderlyingCoinsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Equals to: (pool_id)-(coin_index)."
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetVotingAppsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] App address."
"address=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetWeeklyVolumesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pool=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveHourlyVolumesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveLpTokensCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curvePoolsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "id=:[QUERY] Pool address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveProposalVotesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveProposalsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveRemoveLiquidityEventsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveRemoveLiquidityOneEventsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveSystemStatesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveTokensCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveTransferOwnershipEventsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveUnderlyingCoinsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveVotingAppsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveWeeklyVolumesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexBatchesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexDepositsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetBatchesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetDepositsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (transaction hash)-(token id)."
"user=:[QUERY] User address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetOrdersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (owner address)-(order id)"
"buy_token=:[QUERY] Identifier of token that was bought."
"sell_token=:[QUERY] Identifier of token that was sold."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetPricesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (token id)-(batch id)."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetSolutionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetStatsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"address=:[QUERY] "
"symbol=:[QUERY] "
"name=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetTradesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"buy_token=:[QUERY] "
"sell_token=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetUsersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetWithdrawRequestsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (transaction hash)-(id)."
"user=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetWithdrawsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (transaction hash)-(id)."
"user=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexOrdersCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexPricesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexSolutionsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexStatsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexTokensCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexTradesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexUsersCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexWithdrawRequestsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexWithdrawsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      metadataChainsGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      metadataDappsDappNameGet)
        local -a _op_arguments
        _op_arguments=(
          "dappName=:[PATH] "
                    )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      metadataDappsGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapBundlesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapBurnsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapFactoriesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetBundlesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Hardcoded to &#39;1&#39;."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetBurnsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (transaction id):(transaction.burns.length)."
"pair=:[QUERY] Reference to pair."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Unix timestamp for start of day / 86400 giving a unique day index."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetFactoriesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Factory address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetHourDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Start of hour timestamp."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetLiquidityPositionSnapshotsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (pair address)-(user address)-(timestamp)"
"user=:[QUERY] Reference to user."
"pair=:[QUERY] Reference to the pair liquidity is being provided on."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetLiquidityPositionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (pair address)-(user address)"
"user=:[QUERY] User address."
"pair=:[QUERY] Pair address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetMintsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (transaction hash)-(index in the transaction mint array)."
"pair=:[QUERY] Reference to pair."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetPairDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (pair id)-(day start timestamp)."
"pair=:[QUERY] Reference to pair."
"token_0=:[QUERY] Reference to token0."
"token_1=:[QUERY] Reference to token1."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetPairHourDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (pair id)-(hour start timestamp)."
"pair=:[QUERY] Reference to pair."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetPairsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Pair contract address."
"name=:[QUERY] Friendly name, format: (token0 name)-(token1 name)"
"token_0=:[QUERY] Reference to token0 as stored in pair contract."
"token_1=:[QUERY] Reference to token0 as stored in pair contract."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetSwapsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Transaction hash plus index in Transaction swap array."
"pair=:[QUERY] Reference to pair."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetTokenDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, day start timestamp in unix / 86400."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Token address."
"symbol=:[QUERY] Token symbol."
"name=:[QUERY] Token name."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetTransactionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Ethereum transaction hash."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetUsersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] User address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapHourDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapLiquidityPositionSnapshotsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapLiquidityPositionsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapMintsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapPairDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapPairHourDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapPairsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "id=:[QUERY] Pair contract address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapSwapsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "pair=:[QUERY] Reference to pair."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapTokenDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapTokensCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapTransactionsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapUsersCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2BundlesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2BurnsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetBundlesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Constant 1."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetBurnsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Transaction hash plus index in the transaction burn array"
"pair=:[QUERY] Reference to pair."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetLiquidityPositionSnapshotsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (pair address)-(user address)"
"user=:[QUERY] Reference to user."
"pair=:[QUERY] Reference to the pair liquidity is being provided on."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetLiquidityPositionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] User address and pair address concatenated with a dash."
"user=:[QUERY] Reference to user."
"pair=:[QUERY] Reference to the pair liquidity is being provided on."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetMintsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Transaction hash plus index in the transaction mint array."
"pair=:[QUERY] Reference to pair."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetPairDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"token_0=:[QUERY] Reference to token0."
"token_1=:[QUERY] Reference to token1."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetPairHourDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
"pair=:[QUERY] Address for pair contract."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetPairsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Pair contract address."
"token_0=:[QUERY] Reference to token0 as stored in pair contract."
"token_1=:[QUERY] Reference to token1 as stored in pair contract."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetSwapsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Transaction hash plus index in Transaction swap array."
"pair=:[QUERY] Reference to pair."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetTokenDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Token address and day id (day start timestamp in unix / 86400) concatenated with a dash."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Token address."
"symbol=:[QUERY] Token symbol."
"name=:[QUERY] Token name."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetTransactionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Ethereum transaction hash."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetUniswapDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Unix timestamp for start of day / 86400 giving a unique day index."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetUniswapFactoriesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Factory address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetUsersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] User address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2LiquidityPositionSnapshotsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2LiquidityPositionsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2MintsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2PairDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2PairHourDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2PairsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "id=:[QUERY] Pair contract address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2SwapsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "pair=:[QUERY] Reference to pair."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2TokenDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2TokensCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2TransactionsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2UniswapDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2UniswapFactoriesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2UsersCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3BundlesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3BurnsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3FactoriesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetBundlesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetBurnsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Transaction hash + &#39;#&#39; + index in mints Transaction array."
"pool=:[QUERY] Pool position is within."
"token_0=:[QUERY] Reference to token0 as stored in pool contract."
"token_1=:[QUERY] Reference to token1 as stored in pool contract."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetFactoriesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Factory address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetMintsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Transaction hash + &#39;#&#39; + index in mints Transaction array."
"pool=:[QUERY] Pool address."
"token_0=:[QUERY] Reference to token0 as stored in pool contract."
"token_1=:[QUERY] Reference to token1 as stored in pool contract."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPoolDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (pool address)-(day id)."
"pool=:[QUERY] Pointer to pool."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPoolHourDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (pool address)-(day id)"
"pool=:[QUERY] Pointer to pool."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPoolsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Pool address."
"token_0=:[QUERY] Reference to token0 as stored in pool contract."
"token_1=:[QUERY] Reference to token1 as stored in pool contract."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPositionSnapshotsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] NFT token identifier, format: (NFT token id)#(block number)."
"pool=:[QUERY] Pool the position is within."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPositionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] NFT token identifier."
"pool=:[QUERY] Pool position is within."
"token_0=:[QUERY] Reference to token0 as stored in pair contract."
"token_1=:[QUERY] Reference to token1 as stored in pair contract."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetSwapsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (transaction hash) + # + (index in swaps Transaction array)."
"pool=:[QUERY] Pool swap occured within."
"token_0=:[QUERY] Reference to token0 as stored in pair contract."
"token_1=:[QUERY] Reference to token1 as stored in pair contract."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTickDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (pool address)-(tick index)-(timestamp)."
"pool=:[QUERY] Pointer to pool."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTicksHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Identifier, format: (pool address)#(tick index)"
"pool=:[QUERY] Pool address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTokenHourDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Token address concatendated with date."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTokenV3DayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Token address concatendated with date."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Token address."
"symbol=:[QUERY] Token symbol."
"name=:[QUERY] Token name."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTransactionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Transaction hash."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetUniswapDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe."
"id=:[QUERY] Timestamp rounded to current day by dividing by 86400."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3MintsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3PoolDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3PoolHourDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3PoolsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "id=:[QUERY] Pool address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3PositionSnapshotsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3PositionsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3SwapsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "pool=:[QUERY] Pool swap occured within."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3TickDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3TicksCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3TokenHourDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3TokenV3DayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3TokensCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3TransactionsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3UniswapDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
    esac
    ;;

esac

return ret
