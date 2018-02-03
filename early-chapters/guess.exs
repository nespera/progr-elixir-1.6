defmodule Chop do

  def guess(target, low..high, goes \\ 1) do
    try = div(low + high, 2)
    IO.puts("Guessing #{try}")
    guess(target, low..high, try, goes)
  end

  defp guess(target, _, target, goes), do: IO.puts "Yes. Answer is #{target}! Took #{goes} goes."

  defp guess(target, low..high, _, goes) when target < div(low + high, 2) do
    guess(target, low..div(low + high, 2), goes+1)
  end

  defp guess(target, low..high, _, goes) do
    guess(target, div(low + high, 2)..high, goes+1)
  end

end