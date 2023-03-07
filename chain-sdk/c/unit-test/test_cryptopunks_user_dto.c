#ifndef cryptopunks_user_dto_TEST
#define cryptopunks_user_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cryptopunks_user_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cryptopunks_user_dto.h"
cryptopunks_user_dto_t* instantiate_cryptopunks_user_dto(int include_optional);



cryptopunks_user_dto_t* instantiate_cryptopunks_user_dto(int include_optional) {
  cryptopunks_user_dto_t* cryptopunks_user_dto = NULL;
  if (include_optional) {
    cryptopunks_user_dto = cryptopunks_user_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "0"
    );
  } else {
    cryptopunks_user_dto = cryptopunks_user_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "0"
    );
  }

  return cryptopunks_user_dto;
}


#ifdef cryptopunks_user_dto_MAIN

void test_cryptopunks_user_dto(int include_optional) {
    cryptopunks_user_dto_t* cryptopunks_user_dto_1 = instantiate_cryptopunks_user_dto(include_optional);

	cJSON* jsoncryptopunks_user_dto_1 = cryptopunks_user_dto_convertToJSON(cryptopunks_user_dto_1);
	printf("cryptopunks_user_dto :\n%s\n", cJSON_Print(jsoncryptopunks_user_dto_1));
	cryptopunks_user_dto_t* cryptopunks_user_dto_2 = cryptopunks_user_dto_parseFromJSON(jsoncryptopunks_user_dto_1);
	cJSON* jsoncryptopunks_user_dto_2 = cryptopunks_user_dto_convertToJSON(cryptopunks_user_dto_2);
	printf("repeating cryptopunks_user_dto:\n%s\n", cJSON_Print(jsoncryptopunks_user_dto_2));
}

int main() {
  test_cryptopunks_user_dto(1);
  test_cryptopunks_user_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // cryptopunks_user_dto_MAIN
#endif // cryptopunks_user_dto_TEST
