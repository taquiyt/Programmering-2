defmodule MM do
  def get do
    name=IO.gets("What is your name?") |> String.trim
    IO.puts "Hello #{name}"
  end
  def function do
    data_stuff()
  end


  def data_stuff do
    my_int = 4
    IO.puts " Integer #{is_integer(my_int)}"
  end


  def atoms do
    IO.puts "Atom #{is_atom(:taquiyt)}"
  end
end
c("Mandel.ex")
c("cmplx1.ex")
c("brot1.ex")
c("color1.ex")
c("PPM.ex")

c("ppm (1).ex")
c("tracer.ex")
c("vector.ex")
c("ray.ex")
c("object.ex")
c("sphere.ex")
c("camera.ex")
c("test.ex")
