-module(main).
-export([init/0]).

init() ->
	Dbl = fun(N) -> N * 2 end,
	Sqr = fun(N) -> N * N end,

	io:format("~p~n", [Dbl(4)]),
	% OUTPUT: 8
	io:format("~p~n", [Dbl(5)]),
	% OUTPUT: 10
	io:format("~p~n", [Sqr(4)]),
	% OUTPUT: 16
	io:format("~p~n", [Sqr(5)]),
	% OUTPUT: 25

	% IsEven = fun(N) ->
	% 	even(0) -> true;
	% 	even(1) -> false,
	% 	Rem = N rem 2,
	% 	even(Rem).
	% io:format("~p~n", [isEven(5)]),


	init:stop().
