#ifndef balance_TEST
#define balance_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define balance_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/balance.h"
balance_t* instantiate_balance(int include_optional);



balance_t* instantiate_balance(int include_optional) {
  balance_t* balance = NULL;
  if (include_optional) {
    balance = balance_create(
      "KRAKEN",
      list_createList()
    );
  } else {
    balance = balance_create(
      "KRAKEN",
      list_createList()
    );
  }

  return balance;
}


#ifdef balance_MAIN

void test_balance(int include_optional) {
    balance_t* balance_1 = instantiate_balance(include_optional);

	cJSON* jsonbalance_1 = balance_convertToJSON(balance_1);
	printf("balance :\n%s\n", cJSON_Print(jsonbalance_1));
	balance_t* balance_2 = balance_parseFromJSON(jsonbalance_1);
	cJSON* jsonbalance_2 = balance_convertToJSON(balance_2);
	printf("repeating balance:\n%s\n", cJSON_Print(jsonbalance_2));
}

int main() {
  test_balance(1);
  test_balance(0);

  printf("Hello world \n");
  return 0;
}

#endif // balance_MAIN
#endif // balance_TEST
