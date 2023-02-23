-module(prop_openapi).

-export([prop_test/0]).

prop_test() ->
  {ok, _} = application:ensure_all_started(openapi),
  openapi_statem:prop_main().
