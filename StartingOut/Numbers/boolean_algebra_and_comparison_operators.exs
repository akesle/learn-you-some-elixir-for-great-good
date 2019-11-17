
IO.puts("true and false: #{true and false}")

IO.puts("false or true: #{false or true}")

# Elixir doesn't implement logical XOR
IO.puts("true xor false: #{:erlang.xor(true, false)}")

IO.puts("not false: #{not false}")

IO.puts("not (true and true): #{not (true and true)}")

# Short-circuit operators
truthy = fn itm ->
  IO.puts("truthy invoked")
  itm
end

# and and or in Elixir actually map to the andalso and orelse operators in Erlang
IO.puts("false and truthy(true): ")
IO.puts("#{false and truthy.(true)}")
IO.puts("nil && truthy(true): ")
IO.puts("is nil: #{!IO.inspect(nil && truthy.(true))}")
IO.puts("1 && truthy(2): ")
IO.puts("is nil: #{!IO.inspect(1 && truthy.(2))}")

IO.puts("nil || truthy(:joe): ")
IO.puts("is nil: #{!IO.inspect(nil || truthy.(:joe))}")
IO.puts("1 || truthy(true): ")
IO.puts("is nil: #{!IO.inspect(1 || truthy.(true))}")

IO.puts("5 === 5: #{5 === 5}")
IO.puts("1 === 1.0: #{1 === 1.0}")
IO.puts("1 !== 1.0: #{1 !== 1.0}")
IO.puts("5 == 5.0: #{5 == 5.0}")
IO.puts("5 != 5.0: #{5 != 5.0}")

# IO.puts("5 + :llama: #{5 + :llama}")
#** (ArithmeticError) bad argument in arithmetic expression
#    boolean_algebra_and_comparison_operators.exs:38: (file)
#    (elixir) lib/code.ex:813: Code.require_file/2

IO.puts("5 === true: #{5 === true}")

IO.puts("0 == false: #{0 == false}")
IO.puts("1 < false: #{1 < false}")

IO.puts("truthy < ['apple']: #{truthy < ['apple']}")

x = 10
y = 4
point = {x, y}

IO.puts("point: ")
IO.inspect(point)

point = {4, 5}
{x, y} = point

IO.puts("x, y: #{x}, #{y}")

point = {4, 345}
{x, _} = point
IO.puts("x, y: #{x}, #{y}")

{_, _} = {4,5}
#{_, _} = {4, 5, 6}
# ** (MatchError) no match of right hand side value: {4, 5, 6}
#    boolean_algebra_and_comparison_operators.exs:67: (file)
#    (elixir) lib/code.ex:813: Code.require_file/2

# tagged tuple
preciseTemperature = {:celsius, 23.213}
# ** (Protocol.UndefinedError) protocol String.Chars not implemented for {:celsius, 23.213} of type Tuple
#    (elixir) lib/string/chars.ex:3: String.Chars.impl_for!/1
#    (elixir) lib/string/chars.ex:22: String.Chars.to_string/1
#    boolean_algebra_and_comparison_operators.exs:73: (file)
defimpl String.Chars, for: Tuple do
  def to_string(itm) do
    Kernel.inspect(itm)
  end
end
IO.puts("preciseTemperature: #{preciseTemperature}")
#{:kelvin, t} = preciseTemperature
#** (MatchError) no match of right hand side value: {:celsius, 23.213}
#    boolean_algebra_and_comparison_operators.exs:84: (file)
#    (elixir) lib/code.ex:813: Code.require_file/2

t = {point, {x, y}}
IO.puts("{point, {x, y}}: #{t}")

System.halt(0)
