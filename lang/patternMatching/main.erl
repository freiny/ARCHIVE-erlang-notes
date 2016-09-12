-module(main).
-export([init/0]).

init() ->
	% Variables acquire values as the result of
	% successful pattern matching operation.

	% LeftSide = RightSide
	% Evaluate the right side,
	% then match the result against the pattern on the left side.

	% The right side is evaluated as 2 and
	% N has no value on the left side so the pattern match succeeds
	% and N gets bound to the expression result on the right
	N = 2,

	% The right side is evaluated as 2 and
	% N is bound to 2
	% So the Pattern Match succeeds.
	N = 2,

	% Produces an error:
	% N = 4,
	% ERROR:
	% file:line: Warning: no clause will ever match
	% file:line: Warning: the guard for this clause evaluates to 'false'

	init:stop().
