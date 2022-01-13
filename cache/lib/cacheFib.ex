defmodule CachedFib do

  def fib(n) do
    Cache.start(fn cache ->
      cached_fib(n, cache)
    end)
  end

  defp cached_fib(n, cache) do
    Cache.find(cache, n, fn ->
      cached_fib(n-2, cache) + cached_fib(n-1, cache)
    end)
  end

end
