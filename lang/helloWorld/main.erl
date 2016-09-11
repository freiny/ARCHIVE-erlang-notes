-module(main).
-export([init/0, out/1]).

init() -> spawn(main, out, 123).

out(N) ->
	receive
		io:format("Hello asdf World!~n").
	end,
