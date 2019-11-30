
defmodule Guards do
  def old_enough(x) when x >= 16, do: true
  def old_enough(_), do: false

  def right_age(x) when x >= 16 and x <= 104, do: true
  def right_age(_), do: false

  def is_atomic(x) when is_atom(x), do: true
  def is_atomic(_), do: false

  def wrong_age(x) when x < 16 or x > 104, do: true
  def wrong_age(_), do: false
end

IO.puts("Guards.old_enough(17): #{Guards.old_enough(17)}")
IO.puts("Guards.old_enough(2): #{Guards.old_enough(2)}")

IO.puts("Guards.right_age(17): #{Guards.right_age(17)}")
IO.puts("Guards.right_age(2): #{Guards.right_age(2)}")

IO.puts("Guards.wrong_age(17): #{Guards.wrong_age(17)}")
IO.puts("Guards.wrong_age(2): #{Guards.wrong_age(2)}")

IO.puts("Guards.is_atomic(:bob): #{Guards.is_atomic(:bob)}")
IO.puts("Guards.is_atomic(2): #{Guards.is_atomic(2)}")

System.halt()
