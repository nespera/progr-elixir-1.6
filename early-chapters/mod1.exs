defmodule Triangular do
  def number(1), do: 1
  def number(n) when n > 1, do: n + number(n-1)
end