defmodule Conc do
	def start() do
		link=spawn_link(fn()-> talking() end)
	end
	def talking() do
		#send(self(), {:hello,"hello",self()})
		startnew()
	end
	def startnew() do
		receive do
			{:hello1,string, pid} ->
				IO.inspect pid
				IO.puts "#{string} ->"
				:timer.sleep(1000)
				send(pid, {:hello2,string,self()})
				startnew()
		end
	end
	
end