
result = for <<x::8 <- <<1,2,3,4,5>> >>, rem(x, 2) == 0, do: x
IO.puts("result")
IO.inspect(result)

pixels = <<213,45,132,64,76,32,76,0,0,234,32,15>>
rgb = for << r::8, g::8, b::8 <- pixels>>, do: {r,g,b}
IO.puts("rgb")
# expecting [{213,45,132},{64,76,32},{76,0,0},{234,32,15}]
IO.inspect(rgb)

result = for {r,g,b} <- rgb, into: <<>>, do: <<r::8, g::8, b::8>>
IO.puts("result")
# expecting <<213,45,132,64,76,32,76,0,0,234,32,15>>
IO.inspect(result)

result = for bin <- [<<3,7,5,4,7>>], into: <<>>, do: bin
IO.puts("result")
# expecting <<3,7,5,4,7>>
IO.inspect(result)

result = for <<x <- <<3,7,5,4,7>> >>, into: <<>>, do: <<(x+1)::integer>>
IO.puts("result")
# expecting <<4,8,6,5,8>>
IO.inspect(result)

System.halt(0)