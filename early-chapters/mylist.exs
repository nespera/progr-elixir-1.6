defmodule MyList do

  def mapsum(list, fun) do
    mapsum(list, fun, 0)
  end

  def max([head | tail]) do
    maxp(tail, head)
  end

  def caesar([], _offset),  do: []

  def caesar([head | tail], offset) do
    [constrain(head + offset) | caesar(tail, offset)]
  end

  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from + 1, to)]

  defp constrain(char) when char > 122, do: constrain(char-26)
  defp constrain(char), do: char

  defp maxp([], best), do: best
  defp maxp([head | tail], best) do
    maxp(tail, max(head, best))
  end

  defp mapsum([], _, total), do: total

  defp mapsum([head | tail], fun, total) do
    mapsum(tail, fun, fun.(head) + total)
  end

end