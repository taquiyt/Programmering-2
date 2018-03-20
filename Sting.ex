defmodule Main do
  def main do
    do_stuff()
  end

  def do_stuff do
    my_str = "My Sentence"
    IO.puts "Length : #{String.length(my_str)}"
    longer_str = my_str <>" " <> my_str <> " is longer"
    IO.puts "#{longer_str}"
    IO.puts "Equal : #{"Egg" ==="egg"}"
    IO.puts "My? in longer_str : #{String.contains?(my_str, "My")}"
    IO.puts "Index 4: #{String.at(my_str,4)}"
    IO.puts "SubString : #{String.slice(my_str,3,8)}"
    IO.inspect String.split(longer_str," ")

    IO.puts String.reverse(longer_str)

    IO.puts String.upcase(longer_str)

    4 * 10 |> IO.puts
  end




end
