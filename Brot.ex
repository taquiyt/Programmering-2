defmodule Brot do
	def mandelbrot(c={:complex, r, im},m) do
	z0={:complex,x,y}=Cmplx.new(0,0)
	i=0.0
	test(i,z0,c,m)
	end

	def test(x,y,z,m) when m==0 do 0 end
	def test(i,_,_,_) when i>=2 do i end
	def test(i, z={:complex, r1, i1},c={:complex,r2,i2},m) do 
		
		 p={:complex,r3,i3}=Cmplx.add(Cmplx.sqr(z),c)
		 ia=Cmplx.abs(p)
		 test(ia,p,c,m-1)
		
	end
end