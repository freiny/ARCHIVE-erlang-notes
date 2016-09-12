-module(main).
-export([init/0]).

init() ->

	% All variable names must start with uppercase
	A = 3,
	B = 4,
	Sum = A + B + 5,

	io:format("~p ~n", [Sum]),
	% OUTPUT: 12

	% Variables are immutable, once set, they can't be changed
	% Sum = 23,
	% ERRORS:
	% file:line: Warning: no clause will ever match
	% file:line: Warning: the guard for this clause evaluates to 'false'



	init:stop().
