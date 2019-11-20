
result = for n <- [1, 2, 3, 4], do: 2*n

IO.puts("result:")
IO.inspect(result)

result = for n <- [1, 2, 3, 4], into: MapSet.new(), do: 2*n

IO.puts("result:")
IO.inspect(result)

result = for n <- [1, 2, 3, 4, 4, 4], do: 2*n

IO.puts("result:")
IO.inspect(result)

result = for n <- [1, 2, 3, 4, 4, 4], into: MapSet.new(), do: 2*n

IO.puts("result:")
IO.inspect(result)

result = for x <- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 0 == rem(x, 2), do: x

IO.puts("result:")
IO.inspect(result)

is_even? = fn (n) -> 0 == rem(n, 2) end
result = for x <- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], is_even?.(x), do: x

IO.puts("result:")
IO.inspect(result)

restaurant_menu = [{:steak, 5.99}, {:beer, 3.99}, {:poutine, 3.50}, {:kitten, 20.99}, {:water, 0.00}]
# [{Item, Price*1.07} || {Item, Price} <- RestaurantMenu, Price >= 3, Price =< 10]
result = for {item, price} <- restaurant_menu, price >= 3, price <= 10, do: {item, price*1.07}
IO.puts("result:")
IO.inspect(result)

result = for x <- [1,2], y <- [2,3], do: x+y
IO.puts("result:")
IO.inspect(result)

weather = [{:toronto, :rain}, {:montreal, :storms}, {:london, :fog}, {:paris, :sun},
  {:boston, :fog}, {:vancouver, :snow}]
# generator expressions coupled with pattern matching also act as a filter
foggy_places = for {place, :fog} <- weather, do: place
# if an element of the list 'weather' doesn't match the {place, :fog} pattern,
# it's simply ignored in the list comprehension whereas the = operator would have thrown an exception
IO.puts("foggy_places:")
IO.inspect(foggy_places)


System.halt(0)
