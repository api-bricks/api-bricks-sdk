/*
 * time_in_force.h
 *
 * Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-tif\&quot;&gt;EMS / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
 */

#ifndef _time_in_force_H_
#define _time_in_force_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct time_in_force_t time_in_force_t;


// Enum  for time_in_force

typedef enum { ems___rest_api_time_in_force__NULL = 0, ems___rest_api_time_in_force__GOOD_TILL_CANCEL, ems___rest_api_time_in_force__GOOD_TILL_TIME_EXCHANGE, ems___rest_api_time_in_force__GOOD_TILL_TIME_OMS, ems___rest_api_time_in_force__FILL_OR_KILL, ems___rest_api_time_in_force__IMMEDIATE_OR_CANCEL } ems___rest_api_time_in_force__e;

char* time_in_force_time_in_force_ToString(ems___rest_api_time_in_force__e time_in_force);

ems___rest_api_time_in_force__e time_in_force_time_in_force_FromString(char* time_in_force);

//cJSON *time_in_force_time_in_force_convertToJSON(ems___rest_api_time_in_force__e time_in_force);

//ems___rest_api_time_in_force__e time_in_force_time_in_force_parseFromJSON(cJSON *time_in_forceJSON);

#endif /* _time_in_force_H_ */

