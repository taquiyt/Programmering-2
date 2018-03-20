
defmodule Mandel do
	def demo() do
	small(-2.6, 1.2, 1.2)
	end
	def small(x0, y0, xn) do
	width = 1920
	height = 1080
	depth = 64
	k = (xn - x0) / width
	image = Mandel.mandelbrot(width, height, x0, y0, k, depth)
	PPM.write("small6.ppm", image)
	end
	def mandelbrot(width, height, x, y, k, depth) do
	trans= fn(w, h) ->
	Cmplx.new(x + k * (w - 1), y - k * (h - 1))
	end
	rows(width, height, trans, depth, [])
	end

	def rows(_,0,_,_,list) do #IO.inspect h
	list
	# [] 
	end
	def rows(0,_,_,_,_)do #IO.puts "hello"
	 [] end

	def rows(width,height,trans,depth,list) do
		#IO.puts "hello"
		c=row(width,height,trans,depth,[])
		list2=[c|list]
		rows(width,height-1,trans,depth,list2)
		#[c|rows(width,height-1,trans,depth,list)]
		#IO.inspect p
		#p
		#c=[color|rows(width-1,height,trans,depth,list)]
		

		
		#IO.inspect list2
		#rows(width,height-1,trans,depth,list2)
		#[color|rows(width-1,height,trans,depth,list)]
		#rows(width,height-1,trans,depth,list)
		#c("Mandel.ex")
		#c("Cmplx.ex")
		#c("Brot.ex")
		#c("Colors.ex")
		#c("PPM.ex")
		
		
	end

	def row(0,_,_,_,list) do list end
	def row(width,height,trans,depth, list) do 
		complex={:complex,r,i} =trans.(width,height)
		color=Colors.convert(Brot.mandelbrot(complex,depth),depth)
		row(width-1,height,trans,depth,[color|list])
	end
end