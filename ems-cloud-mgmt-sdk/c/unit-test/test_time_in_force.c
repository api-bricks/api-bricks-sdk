#ifndef time_in_force_TEST
#define time_in_force_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define time_in_force_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/time_in_force.h"
time_in_force_t* instantiate_time_in_force(int include_optional);



time_in_force_t* instantiate_time_in_force(int include_optional) {
  time_in_force_t* time_in_force = NULL;
  if (include_optional) {
    time_in_force = time_in_force_create(
    );
  } else {
    time_in_force = time_in_force_create(
    );
  }

  return time_in_force;
}


#ifdef time_in_force_MAIN

void test_time_in_force(int include_optional) {
    time_in_force_t* time_in_force_1 = instantiate_time_in_force(include_optional);

	cJSON* jsontime_in_force_1 = time_in_force_convertToJSON(time_in_force_1);
	printf("time_in_force :\n%s\n", cJSON_Print(jsontime_in_force_1));
	time_in_force_t* time_in_force_2 = time_in_force_parseFromJSON(jsontime_in_force_1);
	cJSON* jsontime_in_force_2 = time_in_force_convertToJSON(time_in_force_2);
	printf("repeating time_in_force:\n%s\n", cJSON_Print(jsontime_in_force_2));
}

int main() {
  test_time_in_force(1);
  test_time_in_force(0);

  printf("Hello world \n");
  return 0;
}

#endif // time_in_force_MAIN
#endif // time_in_force_TEST
