#ifndef ord_status_TEST
#define ord_status_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ord_status_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ord_status.h"
ord_status_t* instantiate_ord_status(int include_optional);



ord_status_t* instantiate_ord_status(int include_optional) {
  ord_status_t* ord_status = NULL;
  if (include_optional) {
    ord_status = ord_status_create(
    );
  } else {
    ord_status = ord_status_create(
    );
  }

  return ord_status;
}


#ifdef ord_status_MAIN

void test_ord_status(int include_optional) {
    ord_status_t* ord_status_1 = instantiate_ord_status(include_optional);

	cJSON* jsonord_status_1 = ord_status_convertToJSON(ord_status_1);
	printf("ord_status :\n%s\n", cJSON_Print(jsonord_status_1));
	ord_status_t* ord_status_2 = ord_status_parseFromJSON(jsonord_status_1);
	cJSON* jsonord_status_2 = ord_status_convertToJSON(ord_status_2);
	printf("repeating ord_status:\n%s\n", cJSON_Print(jsonord_status_2));
}

int main() {
  test_ord_status(1);
  test_ord_status(0);

  printf("Hello world \n");
  return 0;
}

#endif // ord_status_MAIN
#endif // ord_status_TEST
