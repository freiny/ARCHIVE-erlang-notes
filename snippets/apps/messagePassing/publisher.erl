-module(publisher).
-export([init/1]).

init(From) ->
	Self = [node(),?MODULE,?FUNCTION_NAME,self()],
	io:format("~p ~p ~p ~n", [Self, sp, From]).
