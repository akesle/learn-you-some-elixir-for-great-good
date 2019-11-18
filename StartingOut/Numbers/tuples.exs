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
