#ifndef order_execution_report_TEST
#define order_execution_report_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define order_execution_report_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/order_execution_report.h"
order_execution_report_t* instantiate_order_execution_report(int include_optional);



order_execution_report_t* instantiate_order_execution_report(int include_optional) {
  order_execution_report_t* order_execution_report = NULL;
  if (include_optional) {
    order_execution_report = order_execution_report_create(
      "KRAKEN",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      "XBT/USDT",
      "KRAKEN_SPOT_BTC_USDT",
      0.045,
      0.0783,
      ems___rest_api_order_execution_report__"BUY",
      ems___rest_api_order_execution_report__"LIMIT",
      ems___rest_api_order_execution_report__"GOOD_TILL_CANCEL",
      2020-01-01T10:45:20.1677709Z,
      ["MAKER_OR_CANCEL"],
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "3456456754",
      0.22,
      0.0,
      0.0783,
      ems___rest_api_order_execution_report__RECEIVED,
      list_createList(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      list_createList()
    );
  } else {
    order_execution_report = order_execution_report_create(
      "KRAKEN",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      "XBT/USDT",
      "KRAKEN_SPOT_BTC_USDT",
      0.045,
      0.0783,
      ems___rest_api_order_execution_report__"BUY",
      ems___rest_api_order_execution_report__"LIMIT",
      ems___rest_api_order_execution_report__"GOOD_TILL_CANCEL",
      2020-01-01T10:45:20.1677709Z,
      ["MAKER_OR_CANCEL"],
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "3456456754",
      0.22,
      0.0,
      0.0783,
      ems___rest_api_order_execution_report__RECEIVED,
      list_createList(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      list_createList()
    );
  }

  return order_execution_report;
}


#ifdef order_execution_report_MAIN

void test_order_execution_report(int include_optional) {
    order_execution_report_t* order_execution_report_1 = instantiate_order_execution_report(include_optional);

	cJSON* jsonorder_execution_report_1 = order_execution_report_convertToJSON(order_execution_report_1);
	printf("order_execution_report :\n%s\n", cJSON_Print(jsonorder_execution_report_1));
	order_execution_report_t* order_execution_report_2 = order_execution_report_parseFromJSON(jsonorder_execution_report_1);
	cJSON* jsonorder_execution_report_2 = order_execution_report_convertToJSON(order_execution_report_2);
	printf("repeating order_execution_report:\n%s\n", cJSON_Print(jsonorder_execution_report_2));
}

int main() {
  test_order_execution_report(1);
  test_order_execution_report(0);

  printf("Hello world \n");
  return 0;
}

#endif // order_execution_report_MAIN
#endif // order_execution_report_TEST
