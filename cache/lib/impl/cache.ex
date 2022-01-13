defmodule Cache.Impl.Cache do
  use Agent

  def start() do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def start(initial_value) do
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  def stop() do
    Agent.stop(__MODULE__)
  end

  def stop(reason) do
    Agent.stop(__MODULE__, reason)
  end

  def restart() do
    stop()
    start()
  end

  def restart(reason) do
    stop(reason)
    start()
  end

  def restart(nil, initial_value) do
    stop()
    start(initial_value)
  end

  def restart(reason, initial_value) do
    stop(reason)
    start(initial_value)
  end

  def get() do
    Agent.get(__MODULE__, fn map -> map end)
  end

  def get(key) do
    Agent.get(__MODULE__, fn map -> Map.fetch(map, key) end)
  end

  def set(key, value) do
    Agent.update(__MODULE__, fn map -> Map.put(map, key, value) end)
  end

  def clear() do
    Agent.update(__MODULE__, fn _map -> Map.new() end)
  end

  def clear(key) do
    Agent.update(__MODULE__, fn map -> Map.delete(map, key) end)
  end
end
