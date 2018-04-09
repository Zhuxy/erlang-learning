{module, test}.  %% version = 0

{exports, [{add_map_values,1},
           {double,1},
           {list_length,1},
           {module_info,0},
           {module_info,1}]}.

{attributes, []}.

{labels, 12}.


{function, double, 1, 2}.
  {label,1}.
    {line,[{location,"test.erl",4}]}.
    {func_info,{atom,test},{atom,double},1}.
  {label,2}.
    {line,[{location,"test.erl",5}]}.
    {gc_bif,'*',{f,0},1,[{integer,2},{x,0}],{x,0}}.
    return.


{function, list_length, 1, 4}.
  {label,3}.
    {line,[{location,"test.erl",7}]}.
    {func_info,{atom,test},{atom,list_length},1}.
  {label,4}.
    {test,is_nonempty_list,{f,5},[{x,0}]}.
    {allocate,0,1}.
    {get_list,{x,0},{x,1},{x,0}}.
    {line,[{location,"test.erl",8}]}.
    {call,1,{f,4}}.
    {line,[{location,"test.erl",8}]}.
    {gc_bif,'+',{f,0},1,[{integer,1},{x,0}],{x,0}}.
    {deallocate,0}.
    return.
  {label,5}.
    {test,is_nil,{f,3},[{x,0}]}.
    {move,{integer,0},{x,0}}.
    return.


{function, add_map_values, 1, 7}.
  {label,6}.
    {line,[{location,"test.erl",13}]}.
    {func_info,{atom,test},{atom,add_map_values},1}.
  {label,7}.
    {test,is_map,{f,6},[{x,0}]}.
    {get_map_elements,{f,6},
                      {x,0},
                      {list,[{atom,key1},{x,2},{atom,key2},{x,1}]}}.
    {line,[{location,"test.erl",14}]}.
    {gc_bif,'+',{f,0},3,[{x,2},{x,1}],{x,0}}.
    return.


{function, module_info, 0, 9}.
  {label,8}.
    {line,[]}.
    {func_info,{atom,test},{atom,module_info},0}.
  {label,9}.
    {move,{atom,test},{x,0}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 11}.
  {label,10}.
    {line,[]}.
    {func_info,{atom,test},{atom,module_info},1}.
  {label,11}.
    {move,{x,0},{x,1}}.
    {move,{atom,test},{x,0}}.
    {line,[]}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
