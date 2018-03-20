defmodule Cmplx do
	def new(r,i) do {:complex,r,i} end
	def add({:complex,a,b},{:complex,c,d}) do {:complex,a+c,b+d} end
	def sqr({:complex,a,b}) do {:complex,:math.pow(a,2)-:math.pow(b,2),2*a*b} end
	def abs({:complex,a,b})	do :math.sqrt(:math.pow(a,2)+:math.pow(b,2)) end

end