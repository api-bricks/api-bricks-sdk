/*
 * ord_status.h
 *
 * Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-lifecycle\&quot;&gt;EMS / Starter Guide / Order Lifecycle&lt;/a&gt; 
 */

#ifndef _ord_status_H_
#define _ord_status_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ord_status_t ord_status_t;


// Enum  for ord_status

typedef enum { ems___rest_api_ord_status__NULL = 0, ems___rest_api_ord_status__RECEIVED, ems___rest_api_ord_status__ROUTING, ems___rest_api_ord_status__ROUTED, ems___rest_api_ord_status___NEW, ems___rest_api_ord_status__PENDING_CANCEL, ems___rest_api_ord_status__PARTIALLY_FILLED, ems___rest_api_ord_status__FILLED, ems___rest_api_ord_status__CANCELED, ems___rest_api_ord_status__REJECTED } ems___rest_api_ord_status__e;

char* ord_status_ord_status_ToString(ems___rest_api_ord_status__e ord_status);

ems___rest_api_ord_status__e ord_status_ord_status_FromString(char* ord_status);

//cJSON *ord_status_ord_status_convertToJSON(ems___rest_api_ord_status__e ord_status);

//ems___rest_api_ord_status__e ord_status_ord_status_parseFromJSON(cJSON *ord_statusJSON);

#endif /* _ord_status_H_ */

