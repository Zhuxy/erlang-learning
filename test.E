-file("test.erl", 1).

-module(test).

-export([double/1,list_length/1,add_map_values/1]).

double(X) ->
    2 * X.

list_length([_|Rest]) ->
    1 + list_length(Rest);
list_length([]) ->
    0.

add_map_values(#{key1 := V1,key2 := V2}) ->
    V1 + V2.



