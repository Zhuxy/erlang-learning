-module(test).
-export([double/1, list_length/1, add_map_values/1]).

double(X) ->
    2 * X.

list_length(List) ->
	list_length(List, 0).

list_length([_ | Rest], L) ->
	list_length(Rest, L + 1); % tail recursive

list_length([], L) ->
	L.

add_map_values(#{ key1 := V1, key2 := V2}) ->
	V1 + V2.