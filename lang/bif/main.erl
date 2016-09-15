-module(main).
-export([init/0]).

% BIF (Built In Functions)
% Some functions would be too slow or not possible using Erlang

init() ->

	T1 = list_to_tuple([1,2,3]),
	io:format("~p~n",[T1]),
	% OUTPUT: {1,2,3}

	L2 = [[a,1],[b,2],[c,3]],
	T2 = list_to_tuple( [list_to_tuple(X) || X <- L2] ),
	io:format("~p~n",[T2]),
	% OUTPUT: {{a,1},{b,2},{c,3}}

	init:stop().
