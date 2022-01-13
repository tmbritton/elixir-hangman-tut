defmodule Procs do

  def hello(count) do
    receive do
      {:quit} ->
        IO.puts("Bye!")
      {:add, n} ->
        hello(count + n)
      {:reset} ->
        hello(0)
      msg ->
        IO.puts("#{count}: #{inspect msg}")
        hello(count)
    end
  end
end
