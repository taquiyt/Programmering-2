

defmodule   Exercise1 do
	def main(list) do
		ength(list)
	end
	def ength(list) do
		[head|tail]=list
		n=0
		ength(tail, n+1)
	end

	def ength([],n) do
		n
	end

	def ength(list, n) do
		[head|tail] = list
		ength(tail,n+1)
	end

end