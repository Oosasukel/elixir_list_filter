defmodule ElixirListFilter do
  require Integer

  def call(list), do: Enum.count(list, fn number -> isAnOddNumber(number) end)

  defp isAnOddNumber(number) do
    number
    |> toNumber()
    |> isOdd()
  end

  defp toNumber(string), do: checkNumberValidity(Integer.parse(string))

  defp checkNumberValidity({number, ""}), do: number

  defp checkNumberValidity(_), do: :error

  defp isOdd(:error), do: false

  defp isOdd(number), do: Integer.is_odd(number)
end
