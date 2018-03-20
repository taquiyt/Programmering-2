defmodule Taq do
	def start() do x= spawn_link(fn ->init() end)	end

	def init() do 
		receive do 
			:taqui -> IO.puts "pizza"
			 init()
			:chicken-> IO.puts "Halal" 
			init()
			{:pizza, :chicken}->IO.puts "Gay"
			 init()
			
			
		end 
	end
end