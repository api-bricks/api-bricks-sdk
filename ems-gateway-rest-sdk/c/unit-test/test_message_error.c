#ifndef message_error_TEST
#define message_error_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define message_error_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/message_error.h"
message_error_t* instantiate_message_error(int include_optional);



message_error_t* instantiate_message_error(int include_optional) {
  message_error_t* message_error = NULL;
  if (include_optional) {
    message_error = message_error_create(
      "0"
    );
  } else {
    message_error = message_error_create(
      "0"
    );
  }

  return message_error;
}


#ifdef message_error_MAIN

void test_message_error(int include_optional) {
    message_error_t* message_error_1 = instantiate_message_error(include_optional);

	cJSON* jsonmessage_error_1 = message_error_convertToJSON(message_error_1);
	printf("message_error :\n%s\n", cJSON_Print(jsonmessage_error_1));
	message_error_t* message_error_2 = message_error_parseFromJSON(jsonmessage_error_1);
	cJSON* jsonmessage_error_2 = message_error_convertToJSON(message_error_2);
	printf("repeating message_error:\n%s\n", cJSON_Print(jsonmessage_error_2));
}

int main() {
  test_message_error(1);
  test_message_error(0);

  printf("Hello world \n");
  return 0;
}

#endif // message_error_MAIN
#endif // message_error_TEST
