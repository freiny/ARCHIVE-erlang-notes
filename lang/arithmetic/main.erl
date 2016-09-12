-module(main).
-export([init/0]).

init() ->
	io:format("~p~n",[14]),
	% OUTPUT: 14

	io:format("~p~n",[1 + 2]),
	% OUTPUT: 3

	io:format("~p~n",[3 - 4]),
	% OUTPUT: -1

	io:format("~p~n",[3 * 4]),
	% OUTPUT: 12

	io:format("~p~n",[4 / 2]),
	% OUTPUT: 2.0

	io:format("~p~n",[math:pow(3, 2)]),
	% OUTPUT: 9.0

	init:stop().
