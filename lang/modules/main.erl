-module(main).
-export([init/0]).

init() ->

	% Calling a function from another module
	Shape = {square, 4},
	Area = geometry:area(Shape),
	io:format("SHAPE:~p~nAREA:~p~n", [Shape, Area]),
	% OUTPUT:
	% Shape:{square,4}
	% AREA:16

	init:stop().
