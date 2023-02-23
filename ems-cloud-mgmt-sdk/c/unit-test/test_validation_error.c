#ifndef validation_error_TEST
#define validation_error_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define validation_error_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/validation_error.h"
validation_error_t* instantiate_validation_error(int include_optional);



validation_error_t* instantiate_validation_error(int include_optional) {
  validation_error_t* validation_error = NULL;
  if (include_optional) {
    validation_error = validation_error_create(
      "https://tools.ietf.org/html/rfc7231#section-6.5.1",
      "One or more validation errors occurred.",
      400,
      "d200e8b5-4271a5461ce5342f",
      "0"
    );
  } else {
    validation_error = validation_error_create(
      "https://tools.ietf.org/html/rfc7231#section-6.5.1",
      "One or more validation errors occurred.",
      400,
      "d200e8b5-4271a5461ce5342f",
      "0"
    );
  }

  return validation_error;
}


#ifdef validation_error_MAIN

void test_validation_error(int include_optional) {
    validation_error_t* validation_error_1 = instantiate_validation_error(include_optional);

	cJSON* jsonvalidation_error_1 = validation_error_convertToJSON(validation_error_1);
	printf("validation_error :\n%s\n", cJSON_Print(jsonvalidation_error_1));
	validation_error_t* validation_error_2 = validation_error_parseFromJSON(jsonvalidation_error_1);
	cJSON* jsonvalidation_error_2 = validation_error_convertToJSON(validation_error_2);
	printf("repeating validation_error:\n%s\n", cJSON_Print(jsonvalidation_error_2));
}

int main() {
  test_validation_error(1);
  test_validation_error(0);

  printf("Hello world \n");
  return 0;
}

#endif // validation_error_MAIN
#endif // validation_error_TEST
