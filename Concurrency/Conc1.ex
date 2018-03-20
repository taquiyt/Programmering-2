defmodule Conc1 do
	def start() do
		link=spawn_link(fn()-> talking() end)
	end
	def talking() do
		#send(self(), {:hello,"hello",self()})
		newguy()
	end
	def newguy() do
		receive do
			{:hello2, string, pid} ->
				IO.inspect pid 
				IO.puts "<- #{string}" 
				:timer.sleep(1000)
		    	send(pid, {:hello1,string,self()})
		    	newguy()
		end
	end
end