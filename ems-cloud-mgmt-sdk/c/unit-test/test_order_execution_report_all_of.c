#ifndef order_execution_report_all_of_TEST
#define order_execution_report_all_of_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define order_execution_report_all_of_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/order_execution_report_all_of.h"
order_execution_report_all_of_t* instantiate_order_execution_report_all_of(int include_optional);



order_execution_report_all_of_t* instantiate_order_execution_report_all_of(int include_optional) {
  order_execution_report_all_of_t* order_execution_report_all_of = NULL;
  if (include_optional) {
    order_execution_report_all_of = order_execution_report_all_of_create(
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "3456456754",
      0.22,
      0.0,
      0.0783,
      ems___rest_api_order_execution_report_all_of__RECEIVED,
      list_createList(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      list_createList()
    );
  } else {
    order_execution_report_all_of = order_execution_report_all_of_create(
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "3456456754",
      0.22,
      0.0,
      0.0783,
      ems___rest_api_order_execution_report_all_of__RECEIVED,
      list_createList(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      list_createList()
    );
  }

  return order_execution_report_all_of;
}


#ifdef order_execution_report_all_of_MAIN

void test_order_execution_report_all_of(int include_optional) {
    order_execution_report_all_of_t* order_execution_report_all_of_1 = instantiate_order_execution_report_all_of(include_optional);

	cJSON* jsonorder_execution_report_all_of_1 = order_execution_report_all_of_convertToJSON(order_execution_report_all_of_1);
	printf("order_execution_report_all_of :\n%s\n", cJSON_Print(jsonorder_execution_report_all_of_1));
	order_execution_report_all_of_t* order_execution_report_all_of_2 = order_execution_report_all_of_parseFromJSON(jsonorder_execution_report_all_of_1);
	cJSON* jsonorder_execution_report_all_of_2 = order_execution_report_all_of_convertToJSON(order_execution_report_all_of_2);
	printf("repeating order_execution_report_all_of:\n%s\n", cJSON_Print(jsonorder_execution_report_all_of_2));
}

int main() {
  test_order_execution_report_all_of(1);
  test_order_execution_report_all_of(0);

  printf("Hello world \n");
  return 0;
}

#endif // order_execution_report_all_of_MAIN
#endif // order_execution_report_all_of_TEST
