defmodule MyParse do

  def printable(list), do: Enum.all?(list, &(&1 >= ?\s && &1 <= ?~))

  def anagram?(word1, word2), do: Enum.sort(word1) == Enum.sort(word2)

  def center(list) do
    longest = _longest(list)
    Enum.map(list, &(_puts_pad(&1, longest)))
  end

  def capitalize(sentence) do
    String.split(sentence, "\. ") |> Enum.map(&(String.capitalize(&1))) |> Enum.join(". ")
  end

  def _longest(list), do: Enum.map(list, &(String.length(&1))) |> Enum.max

  def _offset(str, longest), do: div((longest - String.length(str)), 2) + String.length(str)

  def _puts_pad(str, longest), do: String.pad_leading(str, _offset(str, longest), " ") |> IO.puts

end