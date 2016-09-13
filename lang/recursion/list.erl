-module(list).
-export([count/1]).

count([]) -> io:format("List is Empty~n");
count([H|Rest]) ->
	io:format("~p ~p ~n", [H, Rest]),
	count(Rest).
