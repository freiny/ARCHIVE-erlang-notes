-module(main).
-export([init/0]).

init() ->
	io:format("[BeerMe ~p] ~s~n", [25, beerMe(25)]),
	% OUTPUT: [BeerMe 25] Have a beer!
	io:format("[BeerMe ~p] ~s~n", [17, beerMe(17)]),
	% OUTPUT: [BeerMe 17] Not Today!

	io:format("~p~n", [equipWeapon(human)]),
	% OUTPUT: {human,heavyWeapon}
	io:format("~p~n", [equipWeapon(elf)]),
	% OUTPUT: {elf,lightWeapon}
	io:format("~p~n", [equipWeapon(dwarf)]),
	% OUTPUT: {dwarf,heavyWeapon}
	io:format("~p~n", [equipWeapon(mage)]),
	% OUTPUT: {mage,lightWeapon}

	init:stop().

beerMe(Age) when Age > 20 -> "Have a beer!";
beerMe(Age) -> "Not Today!".

equipWeapon(Class) when Class =/= elf, Class =/= mage -> {Class, heavyWeapon};
equipWeapon(Class) -> {Class, lightWeapon}.
