import IO, only: [puts: 1]

defmodule Useless do
  @compile [:debug_info, :export_all]

  @spec add(number, number) :: number
  def add(a, b), do: a + b

  @doc """
  Shows greetings.
  IO.puts/1 is the standard function used to output text.
  """
  @spec hello() :: atom
  def hello(), do: puts("Hello, World!\n")

  @spec greet_and_add_two(number) :: number
  def greet_and_add_two(x) do
    hello()
    add(x, 2)
  end
end
