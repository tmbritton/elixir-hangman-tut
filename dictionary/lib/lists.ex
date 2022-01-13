defmodule Lists do
  def len([]), do: 0
  def len([ _head | tail ]), do: 1 + len(tail)

  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)

  def double([]), do: []
  def double([ head | tail ]), do: [ head * 2 | double(tail) ]

  def square([]), do: []
  def square([ head | tail ]), do: [head * head | square(tail)]

  def sum_pairs([]), do: []
  def sum_pairs([h1, h2 | t]), do: [h1 + h2 | sum_pairs(t)]

  def even_length(0), do: true
  def even_length(1), do: false
  def even_length(n), do: even_length(n - 2)
end
