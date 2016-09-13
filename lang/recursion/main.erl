-module(main).
-export([init/0]).

init() ->
	list:count([]),
	% OUTPUT: List is Empty

	list:count([a, b, c, d]),
	% OUTPUT:
	% a [b,c,d]
	% b [c,d]
	% c [d]
	% d []
	% List is Empty

	init:stop().
