#ifndef message_reject_TEST
#define message_reject_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define message_reject_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/message_reject.h"
message_reject_t* instantiate_message_reject(int include_optional);



message_reject_t* instantiate_message_reject(int include_optional) {
  message_reject_t* message_reject = NULL;
  if (include_optional) {
    message_reject = message_reject_create(
      "MESSAGE_REJECT",
      oeml___rest_api_message_reject__"ORDER_ID_NOT_FOUND",
      "BINANCE",
      "Order with ID: BINANCE-7d8a-4888 not found",
      "{"client_order_id":"BINANCE-7d8a-4888","exchange_id":"BINANCE","type":"ORDER_CANCEL_SINGLE_REQUEST"}"
    );
  } else {
    message_reject = message_reject_create(
      "MESSAGE_REJECT",
      oeml___rest_api_message_reject__"ORDER_ID_NOT_FOUND",
      "BINANCE",
      "Order with ID: BINANCE-7d8a-4888 not found",
      "{"client_order_id":"BINANCE-7d8a-4888","exchange_id":"BINANCE","type":"ORDER_CANCEL_SINGLE_REQUEST"}"
    );
  }

  return message_reject;
}


#ifdef message_reject_MAIN

void test_message_reject(int include_optional) {
    message_reject_t* message_reject_1 = instantiate_message_reject(include_optional);

	cJSON* jsonmessage_reject_1 = message_reject_convertToJSON(message_reject_1);
	printf("message_reject :\n%s\n", cJSON_Print(jsonmessage_reject_1));
	message_reject_t* message_reject_2 = message_reject_parseFromJSON(jsonmessage_reject_1);
	cJSON* jsonmessage_reject_2 = message_reject_convertToJSON(message_reject_2);
	printf("repeating message_reject:\n%s\n", cJSON_Print(jsonmessage_reject_2));
}

int main() {
  test_message_reject(1);
  test_message_reject(0);

  printf("Hello world \n");
  return 0;
}

#endif // message_reject_MAIN
#endif // message_reject_TEST
