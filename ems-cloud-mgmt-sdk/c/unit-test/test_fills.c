#ifndef fills_TEST
#define fills_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define fills_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/fills.h"
fills_t* instantiate_fills(int include_optional);



fills_t* instantiate_fills(int include_optional) {
  fills_t* fills = NULL;
  if (include_optional) {
    fills = fills_create(
      2020-01-01T10:45:20.1677709Z,
      10799.2,
      0.002
    );
  } else {
    fills = fills_create(
      2020-01-01T10:45:20.1677709Z,
      10799.2,
      0.002
    );
  }

  return fills;
}


#ifdef fills_MAIN

void test_fills(int include_optional) {
    fills_t* fills_1 = instantiate_fills(include_optional);

	cJSON* jsonfills_1 = fills_convertToJSON(fills_1);
	printf("fills :\n%s\n", cJSON_Print(jsonfills_1));
	fills_t* fills_2 = fills_parseFromJSON(jsonfills_1);
	cJSON* jsonfills_2 = fills_convertToJSON(fills_2);
	printf("repeating fills:\n%s\n", cJSON_Print(jsonfills_2));
}

int main() {
  test_fills(1);
  test_fills(0);

  printf("Hello world \n");
  return 0;
}

#endif // fills_MAIN
#endif // fills_TEST
