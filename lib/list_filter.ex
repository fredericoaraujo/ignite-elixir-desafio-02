defmodule ListFilter do
  import Integer

  def call(list), do: filter(list, 0)

  defp filter([], acc), do: acc

  defp filter([head | tail], acc) do
    acc = parse(head) |> number() |> is_odd() |> plus_one(acc)
    filter(tail, acc)
  end

  defp number(:error), do: 0
  defp number({element, _}), do: element

  defp plus_one(true, acc), do: acc = acc + 1
  defp plus_one(false, acc), do: acc
end
