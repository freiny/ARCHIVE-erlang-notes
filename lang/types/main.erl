-module(main).
-export([init/0]).

init() ->

	% Variables are immutable, once set, they can't be changed
	% N = 4,
	% N = 5,
	% ERRORS:
	% file:line: Warning: no clause will ever match
	% file:line: Warning: the guard for this clause evaluates to 'false'

	% ----------------------------------------------------------------
	% INTEGERS
	% Integer names must start with uppercase
	A = 3,
	B = 4,
	Sum = A + B + 5,

	io:format("~p ~n", [Sum]),
	% OUTPUT: 12

	% ----------------------------------------------------------------
	% ATOMS
	% Atom names must start with lowercase
	% Atoms are global and are similar to constants
	% and enumerated types

	io:format("~p ~p ~n", [option_1, option_x]),
	% OUTPUT: option_1 option_x

	OptA = option_1,
	OptB = option@2,
	OptC = 'Option_3',
	io:format("~p ~p ~p ~n", [OptA, OptB, OptC]),
	% OUTPUT: option_1 option@2
	% ----------------------------------------------------------------
	% TUPLES

	Cat = {"fifi", 4},
	io:format("~p ~n", [Cat]),
	% OUTPUT: {"fifi",4}

	Dog = {dog, "fido", 2},
	io:format("~p ~n",[Dog]),

	Person = {person, {name, "Pat"}, {age, 25}, {haircolor, brown}},
	io:format("~p ~n", [Person]),
	% OUTPUT: {person,{name,"Pat"},{age,25}}

	First = {firstName, ann},
	Last = {lastName, pan},
	P = {person, First, Last},
	io:format("~p ~n",[P]),
	% OUTPUT: {person,{firstName,ann},{lastName,pan}}

	% Extract fields from person tuple
	{person, NameTuple, AgeTuple, HairColorTuple} = Person,
	io:format("~p ~p ~p ~n",[NameTuple, AgeTuple, HairColorTuple]),
	% OUTPUT: {name,"Pat"} {age,25} {haircolor,brown}

	% Extract fields from person tuple
	{person, {_, Name}, {_, Age}, {_, HairColor}} = Person,
	io:format("~p ~p ~p ~n",[Name, Age, HairColor]),
	% OUTPUT: "Pat" 25 brown

	% ----------------------------------------------------------------
	% LIST
	List = [1,2,3],
	io:format("~p~n",[List]),
	% OUTPUT: [1,2,3]

	Stuff = [1,'b',"c", {name,"Joe"}, [1,2,3]],
	io:format("~p~n",[Stuff]),
	% OUTPUT: [1,b,"c",{name,"Joe"},[1,2,3]]

	% ----------------------------------------------------------------
	init:stop().
