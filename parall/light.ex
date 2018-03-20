defmodule Light do
    def init do
        spawn(fn -> off() end)
    end
    def off() do
        IO.puts("Light is off")
        receive do
            :switch ->
                on()
        end
    end
    
    def on() do
        IO.puts("Light is on")
        receive do
            :switch ->
                off()
            :flood ->
                flood()
        end
    end
    def flood() do
        IO.puts("Light is FLOODING")
        receive do
            y ->
                IO.puts(y)
                flood()
        end
    end
end
