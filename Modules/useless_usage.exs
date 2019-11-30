
IO.inspect(Useless.add(7,2))

IO.inspect(Useless.hello())

IO.inspect(Useless.greet_and_add_two(-3))

IO.inspect(Useless.module_info())
IO.inspect(Useless.module_info(:attributes))

defmodule UselessUsage do
  use Useless
  def author() do
    @author
  end
end
IO.puts("Useless' author: #{UselessUsage.author()}")

System.halt()
