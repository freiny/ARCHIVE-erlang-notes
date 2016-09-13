-module(main).
-export([init/0]).

init() ->
	Dbl = fun(N) -> io:format("~p ~p ~n", [N, N * 2]) end,
	Sqr = fun(N) -> io:format("~p ~p ~n", [N, N * N]) end,

	lib:map(Dbl, [1,2,3,4]),
	% OUTPUT:
	% 1 2
	% 2 4
	% 3 6
	% 4 8

	lib:map(Sqr, [1,2,3,4]),
	% OUTPUT:
	% 1 1
	% 2 4
	% 3 9
	% 4 16

	% IsEven = fun(N) ->
	% 	even(0) -> true;
	% 	even(1) -> false,
	% 	Rem = N rem 2,
	% 	even(Rem).
	% io:format("~p~n", [isEven(5)]),


	init:stop().
