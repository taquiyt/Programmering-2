defmodule Huffman do
	def sample do
		'the quick brown fox jumps over the lazy dog
		this is a sample text that we will use when we build
		up a table we will only handle lower case letters and
		no punctuation symbols the frequency will of course not
		represent english but it is probably not that far off'
	end
	def text, do: 'this is something that we should encode'
	def test do
		sample = sample()
		tree = tree(sample)
		#encode = encode_table(tree)
		#decode = decode_table(tree)
		#text = text()	
		#seq = encode(text, encode)
		#decode(seq, decode)
	end

	def test1(sample) do
		#IO.puts "hello"
		freq(sample)	
	end

	def freq(sample) do
 		freq(sample,[])
	end
	def freq([], freq) do
		freq
	end

	def freq([char|rest]=table,freq) do
		freq(rest,update(char,freq))
	end
	def update(char,[{char,n}|rest]) do
		[{char,n+1}|rest]
	end

	def update(char,[{char2,n}|rest]) do
		[{char2,n}|update(char,rest)]
	end

	def update(char,[]) do
	[{char,1}]
	end

	def mergesort([h]) do [h] end
	def mergesort(list) do
		{list1,list2} = split(list)
		arr1=mergesort(list1)
		arr2=mergesort(list2)
		merge(arr1,arr2)
	end 

	def split([]) do [] end
	def split([h|t]) do 
		split({[h],[]},t)
	end
	def split({list,[]},[h1|t1]) do
		split1({list,[h1]},t1)
	end
	def split1({list,list1},[h|t]) do 
		split2({[h|list],list1},t)
	end 
	def split2({list,list1},[h|t]) do
		split1({list,[h|list1]},t)
	end
	def split1({list,list1}=t,[]) do t end
	def split2({list,list1}=t,[]) do t end

	def merge([],arr) do arr end
	def merge(arr,[]) do arr end
	def merge([{char,freq}=p1|t]=ar1,[{char2,freq2}=p2|t2]=ar2) do 
		if (freq>freq2) do
		  [p2|merge(ar1,t2)]
		else
		  [p1|merge(ar2,t)]
		end
		

	end

	def tree(sample) do
	freq = freq(sample)
    huffman(mergesort(freq))
	end

	def huffman([{tree,_}]) do
		tree
	end
	def reverse([],list) do list end
	def reverse([h|t], acc) do reverse(t,[h|acc]) end 
	def reverse(list) do reverse(list,[]) end
	def huffman([{char,f},{char1,f1}|t]) do
		leaf={{char,char1},f+f1}
		t1=insert(t,leaf)
		huffman(t1)
	end
	def insert([],{char,f}=l)do [l] end
	def insert([{tree,f}|t],{tree1,f}) do
		[{tree,f},{tree1,f}|t]
	end
	def insert([{tree,f1}|t],{tree1,f}=ins) when f1<f do
		[{tree,f1}|insert(t,ins)]
	end
	def insert([{tree,f1}=stan|t],{tree1,f}=ins) do
		[ins,stan|t]
	end
	#[3,1,2]
 #{{122, {100, 111}}, {{112, 97}, {103, 105}}}
	def encode_table({char,left},list,map) when is_tuple(left) and is_integer(char)
	do encode_table(left,[1|list],Map.put(map, char,reverse([0|list]))) end 
	def encode_table({right,char},list,map) when is_tuple(right) and is_integer(char) 
	do encode_table(right,[1|list],Map.put(map,char,reverse([0|list]))) end#hello
	#def encode_table({char1,left},char) when is_tuple(left) and is_integer(char1) do :nil end 
	#def encode_table({right,char1},char) when is_tuple(right) and is_integer(char1) do :nil end#hello
	#def encode_table({char,left},char) when is_integer(char) and is_integer(left) do char end
	#def encode_table({right,char},char) when is_integer(char) and is_integer(right) do char end
	def encode_table({left,right},list,map) when is_integer(left) and is_integer(right) do 
		map1=Map.put(map, left, reverse([0|list]))
		Map.put(map1, right, reverse([1|list]))
		end
	def encode_table({right,left},list,map) do
			map1=encode_table(left,[1|list],map)
			IO.inspect map1
			encode_table(right,[0|list],map1)
	end
	def encode_table({right,left}) do
		encode_table({right,left},[],%{})
		#encode_table(right,char)
		#encode_table(left,char)	
	end
	def decode_table(tree) do
		# To implement...
	end
	def encode(text, table) do
		# To implement...
	end
	def decode(seq, tree) do
		# To implement...
	end
end
