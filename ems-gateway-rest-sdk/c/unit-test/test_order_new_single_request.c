#ifndef order_new_single_request_TEST
#define order_new_single_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define order_new_single_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/order_new_single_request.h"
order_new_single_request_t* instantiate_order_new_single_request(int include_optional);



order_new_single_request_t* instantiate_order_new_single_request(int include_optional) {
  order_new_single_request_t* order_new_single_request = NULL;
  if (include_optional) {
    order_new_single_request = order_new_single_request_create(
      "KRAKEN",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      "XBT/USDT",
      "KRAKEN_SPOT_BTC_USDT",
      0.045,
      0.0783,
      ems___rest_api_order_new_single_request__"BUY",
      ems___rest_api_order_new_single_request__"LIMIT",
      ems___rest_api_order_new_single_request__"GOOD_TILL_CANCEL",
      2020-01-01T10:45:20.1677709Z,
      ["MAKER_OR_CANCEL"]
    );
  } else {
    order_new_single_request = order_new_single_request_create(
      "KRAKEN",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      "XBT/USDT",
      "KRAKEN_SPOT_BTC_USDT",
      0.045,
      0.0783,
      ems___rest_api_order_new_single_request__"BUY",
      ems___rest_api_order_new_single_request__"LIMIT",
      ems___rest_api_order_new_single_request__"GOOD_TILL_CANCEL",
      2020-01-01T10:45:20.1677709Z,
      ["MAKER_OR_CANCEL"]
    );
  }

  return order_new_single_request;
}


#ifdef order_new_single_request_MAIN

void test_order_new_single_request(int include_optional) {
    order_new_single_request_t* order_new_single_request_1 = instantiate_order_new_single_request(include_optional);

	cJSON* jsonorder_new_single_request_1 = order_new_single_request_convertToJSON(order_new_single_request_1);
	printf("order_new_single_request :\n%s\n", cJSON_Print(jsonorder_new_single_request_1));
	order_new_single_request_t* order_new_single_request_2 = order_new_single_request_parseFromJSON(jsonorder_new_single_request_1);
	cJSON* jsonorder_new_single_request_2 = order_new_single_request_convertToJSON(order_new_single_request_2);
	printf("repeating order_new_single_request:\n%s\n", cJSON_Print(jsonorder_new_single_request_2));
}

int main() {
  test_order_new_single_request(1);
  test_order_new_single_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // order_new_single_request_MAIN
#endif // order_new_single_request_TEST
