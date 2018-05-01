#!/usr/bin/env escript

main(Args) ->
	io:format("hello world\n"),
	% compile:file(test),
	L = test:list_length(Args),
	io:format("arguments' length is ~w~n", [L]),
	Numbers = list_to_numbers(Args),
	Sum = sum_numbers(Numbers),
	io:format("sum is ~w~n", [Sum]).


list_to_numbers([H | Rest]) ->
	[list_to_integer(H) | list_to_numbers(Rest)];

list_to_numbers([]) ->
	[].

sum_numbers([H | Rest]) ->
	H + sum_numbers(Rest);

sum_numbers([]) ->
	0.