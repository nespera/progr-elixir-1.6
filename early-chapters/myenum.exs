defmodule MyEnum do

  def all?([], _fun), do: true
  def all?([head | tail], fun), do: fun.(head) && all?(tail, fun)

  def each([], _fun), do: :ok
  def each([head | tail], fun) do
    fun.(head)
    each(tail, fun)
  end

  def filter([], _fun), do: []
  def filter([head | tail], fun) do
    if (fun.(head)) do
      [head | filter(tail, fun)]
    else
      filter(tail, fun)
    end
  end

  def flatten([]), do: []
  def flatten([h | t]) when is_list(h), do: join(flatten(h), flatten(t))
  def flatten([h | t]), do: [h | flatten(t)]

  defp join([], b), do: b
  defp join([h | t], b), do: [h | join(t, b)]

end