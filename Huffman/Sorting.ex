defmodule Sorting do
	def mergesort([h]) do [h] end
	def mergesort(list) do
		{a,b}=split(list)
		ar1 = mergesort(a)
		ar2 = mergesort(b)
		merge(ar1,ar2)
	end

	def split([]) do {[],[]} end

	def split([h|t]) do
		 {a,b}=split(t)
		 {[h|b],a}
	end

	def merge([],ar) do ar end
	def merge(ar,[]) do ar end
	def merge([],[]) do [] end
	def merge([h|t]=ar1,[h2|t2]=ar2) do
		if h>h2 do
		  [h2|merge(ar1,t2)]
		else
		  [h|merge(ar2,t)]
		end

	end

end