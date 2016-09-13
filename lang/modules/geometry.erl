-module(geometry).
-export([area/1]).

% function overloading

area({square, L}) -> L * L;
area({rectangle, W, H}) -> W * H.
