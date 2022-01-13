defmodule Dictionary.Runtime.Server do

  @type t :: pid()
  @const __MODULE__

  use Agent

  alias Dictionary.Impl.WordList

  def start_link(_args) do
    Agent.start_link(&WordList.word_list/0, name: @const)
  end

  def random_word() do
    Agent.get(@const, &WordList.random_word/1)
  end

end
