-module(main).
-export([init/0]).

init() ->
	io:format("[BeerMe ~p] ~s~n", [25, beerMe(25)]),
	io:format("[BeerMe ~p] ~s~n", [17, beerMe(17)]),
	init:stop().

beerMe(Age) when Age > 20 -> "Have a beer!";
beerMe(Age) -> "Not Today!".
