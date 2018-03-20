defmodule FuskLab2 do
	def new() do
		[]
	end

	def add(id,struct,env) do
		[{id,struct}|env]
	end
	def lookup(id,env) do
		List.keyfind(env,id,0)
	end

	def remove([head|tail],env) do
		new_env=delete(head,env)
		remove(tail,new_env)
	end
	def delete(id,[{id,struct}|tail]) do
		tail
	end
	def removes([],[]) do	end

	def delete(id, [head|tail]) do
		[head|delete(id,tail)]
	end
end