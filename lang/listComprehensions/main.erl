-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% LIST COMPREHENSIONS
% Creating lists without funs, maps, or filters
%
% [ F(X) || X <- L]
% Output List F(X), Input List L fed into X

% ----------------------------------------------------------------

init() ->

	L1 = [2*X || X <- [1,2,3,4]],
	io:format("~p~n",[L1]),
	%  OUTPUT: [2,4,6,8]

	L2 = [{Item, Price/2} || {Item, Price} <- [{apple,40},{orange,0.50},{lime,0.30}]],
	io:format("~p~n",[L2]),
	%  OUTPUT: [{apple,20.0},{orange,0.25},{lime,0.15}]


	init:stop().
