-module(main).
-export([init/0]).

init() ->
	io:format("Hello World!~n"),
	init:stop().

% OUTPUT: Hello World!
