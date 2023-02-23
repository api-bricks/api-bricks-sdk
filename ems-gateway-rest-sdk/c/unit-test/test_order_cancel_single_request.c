#ifndef order_cancel_single_request_TEST
#define order_cancel_single_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define order_cancel_single_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/order_cancel_single_request.h"
order_cancel_single_request_t* instantiate_order_cancel_single_request(int include_optional);



order_cancel_single_request_t* instantiate_order_cancel_single_request(int include_optional) {
  order_cancel_single_request_t* order_cancel_single_request = NULL;
  if (include_optional) {
    order_cancel_single_request = order_cancel_single_request_create(
      "KRAKEN",
      "3456456754",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b"
    );
  } else {
    order_cancel_single_request = order_cancel_single_request_create(
      "KRAKEN",
      "3456456754",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b"
    );
  }

  return order_cancel_single_request;
}


#ifdef order_cancel_single_request_MAIN

void test_order_cancel_single_request(int include_optional) {
    order_cancel_single_request_t* order_cancel_single_request_1 = instantiate_order_cancel_single_request(include_optional);

	cJSON* jsonorder_cancel_single_request_1 = order_cancel_single_request_convertToJSON(order_cancel_single_request_1);
	printf("order_cancel_single_request :\n%s\n", cJSON_Print(jsonorder_cancel_single_request_1));
	order_cancel_single_request_t* order_cancel_single_request_2 = order_cancel_single_request_parseFromJSON(jsonorder_cancel_single_request_1);
	cJSON* jsonorder_cancel_single_request_2 = order_cancel_single_request_convertToJSON(order_cancel_single_request_2);
	printf("repeating order_cancel_single_request:\n%s\n", cJSON_Print(jsonorder_cancel_single_request_2));
}

int main() {
  test_order_cancel_single_request(1);
  test_order_cancel_single_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // order_cancel_single_request_MAIN
#endif // order_cancel_single_request_TEST
