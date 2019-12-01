

defmodule InCaseOf do
  def insert(x, []), do: [x]
  def insert(x, set) do
    case Enum.member?(set, x) do
      true -> set
      false -> [x|set]
    end
  end

  def beach(temperature) do
    case temperature do
      {:celsius, n} when n >= 20 and n <= 45 -> "favorable"
      {:kelvin, n} when n >= 293 and n <= 318 -> "scientifically favorable"
      {:fahrenheit, n} when n >= 68 and n <= 113 -> "favorable in the US"
      _ -> "avoid beach"
    end
  end

  def beachf({:celsius, n}) when n >= 20 and n <= 45, do: "favorable"
  def beachf({:kelvin, n}) when n >= 293 and n <= 318, do: "scientifically favorable"
  def beachf({:fahrenheit, n}) when n >= 68 and n <= 113, do: "favorable in the US"
  def beachf(_), do: "avoid beach"
end

l = [1,2,3]
IO.inspect(InCaseOf.insert(2, l))
IO.inspect(InCaseOf.insert(4, l))

IO.inspect(InCaseOf.beach({:kelvin, 300}))
IO.inspect(InCaseOf.beachf({:kelvin, 300}))

System.halt()