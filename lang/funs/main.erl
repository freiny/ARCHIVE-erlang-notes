-module(main).
-export([init/0]).

init() ->
	Dbl = fun(N) -> N * 2 end,
	Sqr = fun(N) -> N * N end,

	io:format("~p~n", [ lists:map(Dbl,[1,2,3,4]) ]),
	% OUTPUT: [2,4,6,8]

	io:format("~p~n", [ lists:map(Sqr,[1,2,3,4]) ]),
	% OUTPUT: [1,4,9,16]

	IsEven = fun(N) -> (N rem 2) =:= 0 end,
	io:format("~p~n", [ lists:map(IsEven,[1,2,3,4]) ]),
	% OUTPUT: [false,true,false,true]

	init:stop().
