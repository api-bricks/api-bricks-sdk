#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


// List all chains.
//
void
MetadataAPI_metadataChainsGet(apiClient_t *apiClient);


// Gets dapp by name.
//
void
MetadataAPI_metadataDappsDappNameGet(apiClient_t *apiClient, char * dappName );


// List all decentralized applications.
//
void
MetadataAPI_metadataDappsGet(apiClient_t *apiClient);


