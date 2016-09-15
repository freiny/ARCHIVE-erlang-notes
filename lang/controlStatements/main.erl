-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% CONTROL STATEMENTS
% ----------------------------------------------------------------

init() ->

	isTrue(true),
	% OUTPUT: Is true
	isTrue(false),
	% OUTPUT: Is false

	init:stop().

isTrue(X) ->
	case X of
		true -> log("Is true");
		false -> log("Is false")
	end.


% ----------------------------------------------------------------
log(A) -> io:format("~p ~n",[A]).
