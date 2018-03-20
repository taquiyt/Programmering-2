defmodule Cheat do
	def freqencies(text) do
		freqencies(text,[])
	end

	def freqencies([], freq) do
		freq
	end
	def freqencies([char|rest],freq) do
		freqencies(rest,update(freq,char))
		
	end
	def update([], char) do
		[{char,1}]
	end
	def update([{char,f}|rest],char) do
		[{char, f+1} | rest]
	end

	def update([tuple|rest], char) do
		[tuple | update(rest, char)]
	end
	def tree(sample) do
		freq = freqencies(sample)
		#insert_sort(freq)
		

		IO.inspect freq
		#huffman(freq)
	end

    def insert1(n, []) do
        [n]
    end 
    def insert({f, c}, [{hf, hc} | tail]) when f <= hf do
        [{f, c}, {hf, hc} | tail]
    end
    def insert({f, c}, [{hf, hc} | tail]) when f > hf do 
        [{hf, hc} | insert({f, c}, tail)]
    end 
    # Insertion sort.
    def isort(l) do
        isort(l, [])
    end 
    def isort([], sl) do
        sl
    end 
    def isort([head | tail], l) do
        isort(tail, insert(head, l))
    end 


	#def huffman([{c,f}, {c2,f2} | rest]) do
	#huffman(insert({{c1,c2},f1+f2},rest))

	#end

	#def insert({{c1,c2},f1+f2},[{c3,f3} | tail]) do
		
	#end 

	def huffman([{c,_}]) do
		c
	end
	def insert_sort([],sorted) do sorted end
	def insert_sort([h|t],[]) do insert_sort(t,[h]) end
	def insert_sort([h|t],[h1|t1]) do #h=3 h1=1 t=4 t1=2 h>h1
	if (h<h1) do
	  	insert_sort(t,[h,h1|t1])
	else
		insert_sort(t,[h1|insert_sort([h],t1)])
	end
	end
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
	#[3,4] [1, 2] [2 ,1] [1] [2]	
	#[6, 5, 4, 3, 2, 1]
	#def insert_sort([h|t], [h1|t1]) do insert_sort(t,insert_sort(t1,[h1,h])) end
end

IO.inspect Cheat.tree('TROLOLOLOp')