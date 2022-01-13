defmodule Cache.Runtime.Server do
  alias Cache.Impl.Cache

  defdelegate start, to: Cache
  defdelegate start(initial_value), to: Cache

  defdelegate stop(), to: Cache
  defdelegate stop(reason), to: Cache

  defdelegate restart(), to: Cache
  defdelegate restart(reason), to: Cache
  defdelegate restart(reason, initial_value), to: Cache

  defdelegate get(), to: Cache
  defdelegate get(key), to: Cache

  defdelegate set(key, value), to: Cache

  defdelegate clear(), to: Cache
  defdelegate clear(key), to: Cache
end
