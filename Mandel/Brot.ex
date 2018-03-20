defmodule Brot do
	def mandelbrot(c={:complex, r, im},m) do
	z0={:complex,x,y}=Cmplx.new(0,0)
	i=0.0
	test(i,z0,c,m)
	end

	def test(i,y,z,m) when m==i do 0 end
	def test(i, z={:complex, r1, i1},c={:complex,r2,i2},m) do 
		
		 p={:complex,r3,i3}=Cmplx.add(Cmplx.sqr(z),c)
		 ia=Cmplx.abs(p)
		 if ia>=2 do
		   	i
		   else
		   	test(i+1,p,c,m)
		 end
		 
		 
		
	end
end