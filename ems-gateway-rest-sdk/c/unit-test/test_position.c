#ifndef position_TEST
#define position_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define position_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/position.h"
position_t* instantiate_position(int include_optional);



position_t* instantiate_position(int include_optional) {
  position_t* position = NULL;
  if (include_optional) {
    position = position_create(
      "KRAKEN",
      list_createList()
    );
  } else {
    position = position_create(
      "KRAKEN",
      list_createList()
    );
  }

  return position;
}


#ifdef position_MAIN

void test_position(int include_optional) {
    position_t* position_1 = instantiate_position(include_optional);

	cJSON* jsonposition_1 = position_convertToJSON(position_1);
	printf("position :\n%s\n", cJSON_Print(jsonposition_1));
	position_t* position_2 = position_parseFromJSON(jsonposition_1);
	cJSON* jsonposition_2 = position_convertToJSON(position_2);
	printf("repeating position:\n%s\n", cJSON_Print(jsonposition_2));
}

int main() {
  test_position(1);
  test_position(0);

  printf("Hello world \n");
  return 0;
}

#endif // position_MAIN
#endif // position_TEST
