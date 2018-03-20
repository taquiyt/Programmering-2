defmodule Account do
	def start() do
		spawn_link(fn ->begin()  end)
	end
	def begin() do
		saldo=0
		Account1(saldo)
	end
	def account(saldo) do
		receive do
			{:deposit, amount} ->
				IO.puts saldo+amount
		    account(saldo+amount)
		    {:withdraw,amount,from} ->
		    	send(from,:ok)
		    	account(saldo-amount)
		    {:check,from} -> 
		    send(from,{:saldo,saldo})	
		    account(saldo)
		end
	end
end