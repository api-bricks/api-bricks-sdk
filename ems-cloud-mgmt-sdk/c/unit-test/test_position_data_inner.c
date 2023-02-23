#ifndef position_data_inner_TEST
#define position_data_inner_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define position_data_inner_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/position_data_inner.h"
position_data_inner_t* instantiate_position_data_inner(int include_optional);



position_data_inner_t* instantiate_position_data_inner(int include_optional) {
  position_data_inner_t* position_data_inner = NULL;
  if (include_optional) {
    position_data_inner = position_data_inner_create(
      "XBTUSD",
      "BITMEX_PERP_BTC_USD",
      0.00134444,
      7,
      ems___rest_api_position_data_inner__"BUY",
      0.0,
      0.0,
      true,
      0.072323,
      Other information provided by the exchange on this position.
    );
  } else {
    position_data_inner = position_data_inner_create(
      "XBTUSD",
      "BITMEX_PERP_BTC_USD",
      0.00134444,
      7,
      ems___rest_api_position_data_inner__"BUY",
      0.0,
      0.0,
      true,
      0.072323,
      Other information provided by the exchange on this position.
    );
  }

  return position_data_inner;
}


#ifdef position_data_inner_MAIN

void test_position_data_inner(int include_optional) {
    position_data_inner_t* position_data_inner_1 = instantiate_position_data_inner(include_optional);

	cJSON* jsonposition_data_inner_1 = position_data_inner_convertToJSON(position_data_inner_1);
	printf("position_data_inner :\n%s\n", cJSON_Print(jsonposition_data_inner_1));
	position_data_inner_t* position_data_inner_2 = position_data_inner_parseFromJSON(jsonposition_data_inner_1);
	cJSON* jsonposition_data_inner_2 = position_data_inner_convertToJSON(position_data_inner_2);
	printf("repeating position_data_inner:\n%s\n", cJSON_Print(jsonposition_data_inner_2));
}

int main() {
  test_position_data_inner(1);
  test_position_data_inner(0);

  printf("Hello world \n");
  return 0;
}

#endif // position_data_inner_MAIN
#endif // position_data_inner_TEST
