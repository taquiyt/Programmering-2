defmodule TentaTal do
	def freq(key,[])do [{key,1}] end
	def freq(key,[{key,f}|t]) do [{key,f+1}|t] end
	def freq(key,[{key1,f}|t]) do [{key1,f}|freq(key,t)] end

	def fraq(keys) do  end 
end