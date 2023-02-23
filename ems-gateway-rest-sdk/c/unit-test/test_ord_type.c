#ifndef ord_type_TEST
#define ord_type_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ord_type_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ord_type.h"
ord_type_t* instantiate_ord_type(int include_optional);



ord_type_t* instantiate_ord_type(int include_optional) {
  ord_type_t* ord_type = NULL;
  if (include_optional) {
    ord_type = ord_type_create(
    );
  } else {
    ord_type = ord_type_create(
    );
  }

  return ord_type;
}


#ifdef ord_type_MAIN

void test_ord_type(int include_optional) {
    ord_type_t* ord_type_1 = instantiate_ord_type(include_optional);

	cJSON* jsonord_type_1 = ord_type_convertToJSON(ord_type_1);
	printf("ord_type :\n%s\n", cJSON_Print(jsonord_type_1));
	ord_type_t* ord_type_2 = ord_type_parseFromJSON(jsonord_type_1);
	cJSON* jsonord_type_2 = ord_type_convertToJSON(ord_type_2);
	printf("repeating ord_type:\n%s\n", cJSON_Print(jsonord_type_2));
}

int main() {
  test_ord_type(1);
  test_ord_type(0);

  printf("Hello world \n");
  return 0;
}

#endif // ord_type_MAIN
#endif // ord_type_TEST
