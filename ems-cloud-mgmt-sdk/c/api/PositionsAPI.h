#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/message_reject.h"
#include "../model/position.h"


// Get open positions
//
// Get current open positions across all or single exchange.
//
list_t*
PositionsAPI_v1PositionsGet(apiClient_t *apiClient, char * exchange_id );


