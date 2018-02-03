defmodule Prime do

  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from + 1, to)]

  def primes(n) do
    composites = for i <- span(2, n), j <- span(2, i/2), rem(i, j) == 0, into: MapSet.new,  do: i
    for i <- span(2,n), !(MapSet.member?(composites, i)), do: i
  end

end