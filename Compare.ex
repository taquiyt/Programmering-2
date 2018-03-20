


defmodule Compare do
  def main do
    do_comparisions()
    can_he_drive()
  end

  def do_comparisions do
    IO.puts "4 == 4.0 : #{4==4.0}"
    IO.puts "4 === 4.0 : #{4===4.0}"
    IO.puts "4 != 4.0 : #{4!=4.0}"
    IO.puts "4 !== 4.0 : #{4!==4.0}"

    IO.puts "5 > 4 : #{5>4}"
    IO.puts "5 >= 4 : #{5>=4}"
    IO.puts "5 < 4 : #{5<4}"
    IO.puts "5 <= 4 : #{5<=4}"
  end

  def can_he_drive do
    age=16
    IO.puts "Vote & Drive : #{(age>=16) and (age>=18)}"
    IO.puts "Vote & Drive : #{(age>=16) or (age>=18)}"
  end
  
end
