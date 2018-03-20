defmodule Decision do
  def main do
    make_choice()
  end
  def make_choice do
    age = 16

    if age >=18 do
      IO.puts "Age over 18"
    else
      IO.puts "This guy is stupid"
    end
  end
end
