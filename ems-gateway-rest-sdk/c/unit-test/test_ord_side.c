#ifndef ord_side_TEST
#define ord_side_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ord_side_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ord_side.h"
ord_side_t* instantiate_ord_side(int include_optional);



ord_side_t* instantiate_ord_side(int include_optional) {
  ord_side_t* ord_side = NULL;
  if (include_optional) {
    ord_side = ord_side_create(
    );
  } else {
    ord_side = ord_side_create(
    );
  }

  return ord_side;
}


#ifdef ord_side_MAIN

void test_ord_side(int include_optional) {
    ord_side_t* ord_side_1 = instantiate_ord_side(include_optional);

	cJSON* jsonord_side_1 = ord_side_convertToJSON(ord_side_1);
	printf("ord_side :\n%s\n", cJSON_Print(jsonord_side_1));
	ord_side_t* ord_side_2 = ord_side_parseFromJSON(jsonord_side_1);
	cJSON* jsonord_side_2 = ord_side_convertToJSON(ord_side_2);
	printf("repeating ord_side:\n%s\n", cJSON_Print(jsonord_side_2));
}

int main() {
  test_ord_side(1);
  test_ord_side(0);

  printf("Hello world \n");
  return 0;
}

#endif // ord_side_MAIN
#endif // ord_side_TEST
