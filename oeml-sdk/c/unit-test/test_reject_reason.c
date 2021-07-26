#ifndef reject_reason_TEST
#define reject_reason_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define reject_reason_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/reject_reason.h"
reject_reason_t* instantiate_reject_reason(int include_optional);



reject_reason_t* instantiate_reject_reason(int include_optional) {
  reject_reason_t* reject_reason = NULL;
  if (include_optional) {
    reject_reason = reject_reason_create(
    );
  } else {
    reject_reason = reject_reason_create(
    );
  }

  return reject_reason;
}


#ifdef reject_reason_MAIN

void test_reject_reason(int include_optional) {
    reject_reason_t* reject_reason_1 = instantiate_reject_reason(include_optional);

	cJSON* jsonreject_reason_1 = reject_reason_convertToJSON(reject_reason_1);
	printf("reject_reason :\n%s\n", cJSON_Print(jsonreject_reason_1));
	reject_reason_t* reject_reason_2 = reject_reason_parseFromJSON(jsonreject_reason_1);
	cJSON* jsonreject_reason_2 = reject_reason_convertToJSON(reject_reason_2);
	printf("repeating reject_reason:\n%s\n", cJSON_Print(jsonreject_reason_2));
}

int main() {
  test_reject_reason(1);
  test_reject_reason(0);

  printf("Hello world \n");
  return 0;
}

#endif // reject_reason_MAIN
#endif // reject_reason_TEST
