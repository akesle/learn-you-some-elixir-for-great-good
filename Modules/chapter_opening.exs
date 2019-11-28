
IO.inspect(:erlang.element(2, {:a, :b, :c}))
IO.inspect(elem({:a, :b, :c}, 1))

IO.inspect(:lists.seq(1, 4))
IO.inspect(1..4)

System.halt()
