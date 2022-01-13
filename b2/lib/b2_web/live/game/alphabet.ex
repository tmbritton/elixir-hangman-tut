defmodule B2Web.Live.Game.Alphabet do
  use B2Web, :live_component

  def mount(socket) do
    letters = (?a .. ?z) |> Enum.map(fn ch -> << ch :: utf8 >> end)
    {:ok, assign(socket, :letters, letters)}
  end

  def render(assigns) do
    ~H"""
      <div class="alphabet">
        <%= for letter <- assigns.letters do %>
          <%= letter %>
        <% end %>
      </div>
    """
  end

end
