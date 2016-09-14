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

	io:format("~p~n", [ lists:filter(IsEven,[1,2,3,4,5,6,7,8,9]) ]),
	% OUTPUT: [2,4,6,8]

	% Functions that return functions
	Greeter = fun(Greeting) ->
		(fun(Name) -> io:format("~s ~p ~n",[Greeting, Name]) end) end,

	DailyGreeting = Greeter("Hi!"),
	NightGreeting = Greeter("Good Evening,"),
	HolidayGreeting = Greeter("Merry Christmas,"),

	DailyGreeting(ann),
	% OUTPUT: Hi! ann
	NightGreeting(bob),
	% OUTPUT: Good Evening, bob
	HolidayGreeting(cat),
	% OUTPUT: Merry Christmas, cat

	init:stop().
