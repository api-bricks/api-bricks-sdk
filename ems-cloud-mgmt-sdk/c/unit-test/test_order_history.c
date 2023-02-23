#ifndef order_history_TEST
#define order_history_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define order_history_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/order_history.h"
order_history_t* instantiate_order_history(int include_optional);



order_history_t* instantiate_order_history(int include_optional) {
  order_history_t* order_history = NULL;
  if (include_optional) {
    order_history = order_history_create(
      "9a55567a-b5ff-4b78-b6aa-xxxx",
      "BINANCE",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      "BTCUSDT",
      "BINANCE_SPOT_BTC_USDT",
      0.00034,
      31939.47,
      2,
      "LIMIT",
      "GOOD_TILL_CANCEL",
      2022-05-01T00:00:00,
      list_createList(),
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      0.00034,
      0,
      0,
      "REJECTED",
      list_createList(),
      list_createList(),
      "0",
      "0",
      "-2015 Invalid API-key, IP, or permissions for action. https://api.binance.com/api/v3/order?newOrderRespType",
      list_createList(),
      list_createList(),
      list_createList(),
      2022-06-27T07:02:33.1977903Z
    );
  } else {
    order_history = order_history_create(
      "9a55567a-b5ff-4b78-b6aa-xxxx",
      "BINANCE",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      "BTCUSDT",
      "BINANCE_SPOT_BTC_USDT",
      0.00034,
      31939.47,
      2,
      "LIMIT",
      "GOOD_TILL_CANCEL",
      2022-05-01T00:00:00,
      list_createList(),
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      0.00034,
      0,
      0,
      "REJECTED",
      list_createList(),
      list_createList(),
      "0",
      "0",
      "-2015 Invalid API-key, IP, or permissions for action. https://api.binance.com/api/v3/order?newOrderRespType",
      list_createList(),
      list_createList(),
      list_createList(),
      2022-06-27T07:02:33.1977903Z
    );
  }

  return order_history;
}


#ifdef order_history_MAIN

void test_order_history(int include_optional) {
    order_history_t* order_history_1 = instantiate_order_history(include_optional);

	cJSON* jsonorder_history_1 = order_history_convertToJSON(order_history_1);
	printf("order_history :\n%s\n", cJSON_Print(jsonorder_history_1));
	order_history_t* order_history_2 = order_history_parseFromJSON(jsonorder_history_1);
	cJSON* jsonorder_history_2 = order_history_convertToJSON(order_history_2);
	printf("repeating order_history:\n%s\n", cJSON_Print(jsonorder_history_2));
}

int main() {
  test_order_history(1);
  test_order_history(0);

  printf("Hello world \n");
  return 0;
}

#endif // order_history_MAIN
#endif // order_history_TEST
