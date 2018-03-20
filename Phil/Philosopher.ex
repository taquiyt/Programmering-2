defmodule Philosopher do
	def start(hunger,strength, right,left,name,ctrl,seed) do 
		philosopher = spawn_link(fn -> init(hunger,strength,right,left,name,ctrl,seed)end)
		{:Philosopher,philosopher}
	end 
	def sleep(t) do
	:timer.sleep(:rand.uniform(t))
	end
	def delay(t) do sleep(t) end
	def init(hunger,strength,right,left,name,ctrl,seed) do
	 dreaming(hunger,strength,right,left,name,ctrl,seed) 
	end
	def dreaming(hunger,strength,right,left,name,ctrl,seed) do
		1
	end
end