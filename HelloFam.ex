defmodule Test do
  def main(list) do
    [head | tail] = list
    IO.inspect head
    IO.inspect tail
    "End of Functions"
  end

  def epicPrint([]) do
    "End of epic Print"
  end

  def nth(list, index) do
    [head | tail] = list
    n=0
    if(index==n) do
    head
    else
    nth(tail, index,n+1)
    end
  end

  def nth(list, index, n) do
    [head | tail] = list
    if(n==index) do
      head
    else
     nth(tail, index,n+1)
    end
  end



  def epicPrint(list) do
    [head |tail] = list
    IO.inspect head
    epicPrint(tail)
  end
end
