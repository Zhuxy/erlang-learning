#!/usr/bin/env escript

main(_Args) ->
	% 需要传入Self的伪递归函数
	Fact = fun(Self) ->
		fun(X) ->
			if
				X == 1 -> 1;
				true      -> X * Self(X - 1)
			end
		end
	end,

	% 假设存在一个Y函数能找到Self
	Y = fun(F) ->
		((fun(Y) ->
			fun(Func) ->
				fun(X) ->
					(Func((Y(Y))(Func)))(X)
				end
			end
		end)
		(fun(Y) ->
			fun(Func) ->
				fun(X) ->
					(Func((Y(Y))(Func)))(X)
				end
			end
		end))(F)
	end,
	F2 = Y(Fact),
	io:format("fact 10: ~p~n", [F2(10)]).