defmodule Eager do
	def new() do
		[]
	end

	def add(id,struct,env) do
		[{id,struct}|env]
	end
	def lookup(id,env) do
		List.keyfind(env,id,0)
	end

	#def remove([head|tail],env) do
	#	new_env=delete(head,env)
	#	remove(tail,new_env)
	#end
	#def delete(id,[{id,struct}|tail]) do
	#	tail
	#end
	#def removes([],[]) do	end

	#def delete(id, [head|tail]) do
	#	[head|delete(id,tail)]
	#end
	def eval_expr({:atm, id}, _) do {:ok, id} end
	def eval_expr({:var, id}, env) do
		case FuskLab2.lookup(id,env) do
			nil ->
			:error
			{_, str} ->
			{:ok,str}
		end
	end
	def eval_expr({:cons, {:var, id}, {:atm, id2}},env) do
		case eval_expr({:var,id},env) do
			:error ->
			:error
			{:ok, str} ->
			case eval_expr({:atm,id2},env)  do
			:error ->
			:error
			{:ok, ts} ->
			{:ok,{str,ts}}
			end
		end
	end
	def eval_match(:ignore, atom, atom2) do
	{:ok, :ignore}
	end
	def eval_match({:atm, id},id,env) do
	{:ok, env}
	end
	def eval_match({:var, id}, str, env) do
	case lookup(id,env) do
	nil ->
	{:ok, add(id,str,env)}
	{_, ^str} ->
	{:ok,env}
	{_, _} ->
	:fail
		end
	end
	def eval_match({:cosn, hp, tp}, ..., env) do
	case eval_match(..., ..., ...) do
	:fail ->
	...
	... ->
	eval_match(..., ..., ...)
		end
	end

	def eval_match(_, _, _) do
	:fail
	end
end