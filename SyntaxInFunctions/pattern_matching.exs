
defmodule Greeter do
  def greet(:male, name), do: IO.puts("Hello, Mr. #{name}!")
  def greet(:female, name), do: IO.puts("Hello, Mrs. #{name}!")
  def greet(_, name), do: IO.puts("Hello, #{name}!")
end

Greeter.greet(:male, "John Smith")
Greeter.greet(:female, "Helen Smith")
Greeter.greet(:dog, "Wilbur")

defmodule Functions do
  def head([h|_]), do: h
  def second([_|[x|_]]), do: x
  def same(x, x), do: true
  def same(_,_), do: false
  def valid_time({date = {y, m, d}, time = {h, min, s}}) do
    IO.puts("The date tuple #{date} says today is: #{y}/#{m}/#{d}")
    IO.puts("The time tuple #{time} indicates: #{h}:#{min}:#{s}")
  end
  def valid_time(_), do: IO.puts("Stop feeding me wrong data!")
end

IO.inspect(Functions.head([1,2,3,4]))
IO.inspect(Functions.second([1,2,3,4]))

IO.inspect(Functions.same(3,3))
IO.inspect(Functions.same(3,4))
IO.inspect(Functions.same(:a, :a))

defimpl String.Chars, for: Tuple do
  def to_string(tuple) do
    interior =
      tuple
      |> Tuple.to_list()
      |> Enum.map(&Kernel.to_string/1)
      |> Enum.join(", ")

    "{#{interior}}"
  end
end

Functions.valid_time({{2011, 09, 06}, {09,04,43}})
Functions.valid_time({{2011, 09, 06}, {09,04}})

System.halt()
