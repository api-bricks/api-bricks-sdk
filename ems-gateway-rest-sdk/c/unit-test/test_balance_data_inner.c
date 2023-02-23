#ifndef balance_data_inner_TEST
#define balance_data_inner_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define balance_data_inner_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/balance_data_inner.h"
balance_data_inner_t* instantiate_balance_data_inner(int include_optional);



balance_data_inner_t* instantiate_balance_data_inner(int include_optional) {
  balance_data_inner_t* balance_data_inner = NULL;
  if (include_optional) {
    balance_data_inner = balance_data_inner_create(
      "XBT",
      "BTC",
      0.00134444,
      0.00134444,
      0.0,
      ems___rest_api_balance_data_inner_LASTUPDATEDBY_"EXCHANGE",
      1355.12,
      0.007
    );
  } else {
    balance_data_inner = balance_data_inner_create(
      "XBT",
      "BTC",
      0.00134444,
      0.00134444,
      0.0,
      ems___rest_api_balance_data_inner_LASTUPDATEDBY_"EXCHANGE",
      1355.12,
      0.007
    );
  }

  return balance_data_inner;
}


#ifdef balance_data_inner_MAIN

void test_balance_data_inner(int include_optional) {
    balance_data_inner_t* balance_data_inner_1 = instantiate_balance_data_inner(include_optional);

	cJSON* jsonbalance_data_inner_1 = balance_data_inner_convertToJSON(balance_data_inner_1);
	printf("balance_data_inner :\n%s\n", cJSON_Print(jsonbalance_data_inner_1));
	balance_data_inner_t* balance_data_inner_2 = balance_data_inner_parseFromJSON(jsonbalance_data_inner_1);
	cJSON* jsonbalance_data_inner_2 = balance_data_inner_convertToJSON(balance_data_inner_2);
	printf("repeating balance_data_inner:\n%s\n", cJSON_Print(jsonbalance_data_inner_2));
}

int main() {
  test_balance_data_inner(1);
  test_balance_data_inner(0);

  printf("Hello world \n");
  return 0;
}

#endif // balance_data_inner_MAIN
#endif // balance_data_inner_TEST
