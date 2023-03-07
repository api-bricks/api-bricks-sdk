#ifndef cryptopunks_data_sources_dto_TEST
#define cryptopunks_data_sources_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cryptopunks_data_sources_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cryptopunks_data_sources_dto.h"
cryptopunks_data_sources_dto_t* instantiate_cryptopunks_data_sources_dto(int include_optional);



cryptopunks_data_sources_dto_t* instantiate_cryptopunks_data_sources_dto(int include_optional) {
  cryptopunks_data_sources_dto_t* cryptopunks_data_sources_dto = NULL;
  if (include_optional) {
    cryptopunks_data_sources_dto = cryptopunks_data_sources_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      56,
      56,
      56,
      "0",
      "0",
      "0",
      56
    );
  } else {
    cryptopunks_data_sources_dto = cryptopunks_data_sources_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      56,
      56,
      56,
      "0",
      "0",
      "0",
      56
    );
  }

  return cryptopunks_data_sources_dto;
}


#ifdef cryptopunks_data_sources_dto_MAIN

void test_cryptopunks_data_sources_dto(int include_optional) {
    cryptopunks_data_sources_dto_t* cryptopunks_data_sources_dto_1 = instantiate_cryptopunks_data_sources_dto(include_optional);

	cJSON* jsoncryptopunks_data_sources_dto_1 = cryptopunks_data_sources_dto_convertToJSON(cryptopunks_data_sources_dto_1);
	printf("cryptopunks_data_sources_dto :\n%s\n", cJSON_Print(jsoncryptopunks_data_sources_dto_1));
	cryptopunks_data_sources_dto_t* cryptopunks_data_sources_dto_2 = cryptopunks_data_sources_dto_parseFromJSON(jsoncryptopunks_data_sources_dto_1);
	cJSON* jsoncryptopunks_data_sources_dto_2 = cryptopunks_data_sources_dto_convertToJSON(cryptopunks_data_sources_dto_2);
	printf("repeating cryptopunks_data_sources_dto:\n%s\n", cJSON_Print(jsoncryptopunks_data_sources_dto_2));
}

int main() {
  test_cryptopunks_data_sources_dto(1);
  test_cryptopunks_data_sources_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // cryptopunks_data_sources_dto_MAIN
#endif // cryptopunks_data_sources_dto_TEST
