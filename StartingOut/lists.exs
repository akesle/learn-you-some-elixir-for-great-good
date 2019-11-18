
IO.puts("[1, 2, 3, {:numbers,[4,5,6]}, 5.34, :atom]:")
IO.inspect([1, 2, 3, {:numbers,[4,5,6]}, 5.34, :atom])

IO.puts([97, 98, 99])

IO.puts([97,98,99,4,5,6])

IO.puts([233])

IO.puts("[1,2,3] ++ [4,5]:")
IO.inspect([1,2,3] ++ [4,5])

IO.puts("[1,2,3,4,5] -- [1,2,3]:")
IO.inspect([1,2,3,4,5] -- [1,2,3])

IO.puts("[2,4,2] -- [2,4]")
IO.inspect([2,4,2] -- [2,4])

IO.puts("[2,4,2] -- [2,4,2]")
IO.inspect([2,4,2] -- [2,4,2])

IO.puts("[1,2,3] -- [1,2] -- [3]")
IO.inspect([1,2,3] -- [1,2] -- [3])

IO.puts("[1,2,3] -- [1,2] -- [2]")
IO.inspect([1,2,3] -- [1,2] -- [2])

IO.puts("hd([1,2,3,4]):")
IO.inspect(hd([1,2,3,4]))

IO.puts("tl([1,2,3,4]):")
IO.inspect(tl([1,2,3,4]))

IO.puts("length([1,2,3,4]): #{:erlang.length([1,2,3,4])}")
IO.puts("length([1,2,3,4]): #{length([1,2,3,4])}")

list = [2,3,4]
new_list = [1|list]
IO.puts("list:")
IO.inspect(list)
IO.puts("new_list:")
IO.inspect(new_list)

[head|tail] = new_list
IO.puts("head: #{head}")
IO.puts("tail:")
IO.inspect(tail)

[new_head|new_tail] = tail
IO.puts("new_head: #{new_head}")
IO.puts("new_tail:")
IO.inspect(new_tail)

IO.puts("[1 | []]:")
IO.inspect([1 | []])

IO.puts("[2 | [1 | []]]:")
IO.inspect([2 | [1 | []]])

IO.puts("[3 | [2 | [1 | []] ] ]:")
IO.inspect([3 | [2 | [1 | []] ] ])

IO.puts("[a, b, c, d]:")
IO.inspect([:a, :b, :c, :d])

IO.puts("[a, b, c, d | []]:")
IO.inspect([:a, :b, :c, :d | []])

IO.puts("[a, b | [c, d]]:")
IO.inspect([:a, :b | [:c, :d]])

IO.puts("[a, b | [c | [d]]]:")
IO.inspect([:a, :b | [:c | [:d]]])

IO.puts("[a | [b | [c | [d]]]]:")
IO.inspect([:a | [:b | [:c | [:d]]]])

IO.puts("[a | [b | [c | [d | [] ]]]]:")
IO.inspect([:a | [:b | [:c | [:d | [] ]]]])

# proper list
IO.puts("length([:a | [:b | [:c | [:d | [] ]]]]: #{length([:a | [:b | [:c | [:d | [] ]]]])}")

# improper list; no trailing empty list [] as the last cell
#IO.puts("length([:a | [:b | [:c | :d ]]]]: #{length([:a | [:b | [:c | :d ]]])}")
#** (ArgumentError) argument error
#    lists.exs:86: (file)
#    (elixir) lib/code.ex:813: Code.require_file/2


System.halt(0)
