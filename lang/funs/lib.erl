-module(lib).
-export([map/2]).

map(_, []) -> done;
map(Fn, [H|Rest]) ->
	Fn(H),
	map(Fn, Rest).
