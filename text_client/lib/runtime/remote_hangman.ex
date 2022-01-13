defmodule TextClient.Runtime.RemoteHangman do

  @remote_server :"hangman@tx-260669-ap"

  def connect() do
    :rpc.call(@remote_server, Hangman, :new_game, [])
  end
end
