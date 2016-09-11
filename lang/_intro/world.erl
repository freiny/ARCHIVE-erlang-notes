-module(world).
-export([start/0]).

% spawn creates a concurrent process and returns a process identifier
start() ->
	ann	= spawn( person, init, ["ann"]),
	bob	= spawn( person, init, ["bob"]),
	kat	= spawn( person, init, ["kat"]),
