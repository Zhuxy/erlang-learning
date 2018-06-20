-module(dwelling).
-export([pandc/1, perms/1, solve/1, lier/1]).

% 生成list数组的排列组合
pandc([]) -> [[]];

pandc(List) ->
	lists:flatmap(fun (E) ->
		List2 = lists:delete(E, List), %删除自己
		PList = pandc(List2),
		[ [E | R] || R <- PList] %列表解析
	end, List).

perms([]) -> [[]];
perms(L) -> [ [H | T] || H <- L, T <- perms(L -- [H])].

solve(Lists) ->
	lists:filter(fun (List) ->
		[Baker, Cooper, Fletcher, Miller, Smith] = List,
		(Baker =/= 5)
			and (Cooper =/= 1)
			and (Fletcher =/= 5)
			and (Fletcher =/= 1)
			and (Miller > Cooper)
			and (abs(Smith - Fletcher) > 1)
			and (abs(Fletcher - Cooper) > 1)
	end, perms(Lists)).

lier(Lists) ->
	lists:filter(fun (List) ->
		[Betty, Ethel, John, Kitty, Mary] = List,
		((Kitty == 2) xor (Betty == 3))
			and ((John == 2) xor (Ethel == 1))
			and ((Ethel == 5) xor (John == 3))
			and ((Kitty == 2) xor (Mary == 4))
			and ((Mary == 4) xor (Betty == 1))
	end, perms(Lists)).
% 3 5 2 4 1


