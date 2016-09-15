-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% FUNCTION GUARDS

% Cannot have user-defined functions in guards,
% because it would allow for side-effects
% ----------------------------------------------------------------


init() ->

	Age1 = 25,
	io:format("[BeerMe ~p] ~s~n", [Age1, beerMe(Age1)]),
	% OUTPUT: [BeerMe 25] Have a beer!
	Age2 = 17,
	io:format("[BeerMe ~p] ~s~n", [Age2, beerMe(Age2)]),
	% OUTPUT: [BeerMe 17] Not Today!

	io:format("~p~n", [equip1(human)]),
	% OUTPUT: {human,heavyWeapon}
	io:format("~p~n", [equip1(elf)]),
	% OUTPUT: {elf,lightWeapon}
	io:format("~p~n", [equip1(dwarf)]),
	% OUTPUT: {dwarf,heavyWeapon}
	io:format("~p~n", [equip1(mage)]),
	% OUTPUT: {mage,lightWeapon}

	io:format("~s ~n", [isFruit(lime)] ),
	% OUTPUT: Nice Fruit!
	io:format("~s ~n", [isFruit(cake)] ),
	% OUTPUT: That's not fruit

	init:stop().

beerMe(Age) when Age > 20 -> Age, "Have a beer!";
beerMe(Age) -> Age, "Not Today!".

% must pass all
equip1(Class) when Class =/= elf, Class =/= mage -> {Class, heavyWeapon};
equip1(Class) -> {Class, lightWeapon}.

% must pass one
isFruit(E) when E =:= apple; E =:= lemon; E =:= lime; E =:= orange; E =:= kiwi -> E, ("Nice Fruit!");
isFruit(E) -> E, "That's not fruit".
