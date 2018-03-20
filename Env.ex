defmodule Env do
	def new() do
		%{}
	end
	def add(id,str,env) do
		Map.put(env,id,str)	
	end

	def lookup(id,env) do
		{id,Map.get(env,id)}
	end

	def remove(ids, env) do
		Map.delete(env,ids)
	end
end

