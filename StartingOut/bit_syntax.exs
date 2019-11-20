
color = 0xF09A29
pixel = <<color::size(24)>>
IO.puts("pixel:")
IO.inspect(pixel)

pixels = <<213,45,132,64,76,32,76,0,0,234,32,15>>
# <<pix1,pix2,pix3,pix4>> = pixels
# ** (MatchError) no match of right hand side value: <<213, 45, 132, 64, 76, 32, 76, 0, 0, 234, 32, 15>>
#    bit_syntax.exs:8: (file)
#    (elixir) lib/code.ex:813: Code.require_file/2
IO.puts("<<pix1::size(24), pix2::size(24), pix3::size(24), pix4::size(24)>> = pixels")
IO.inspect(<<pix1::size(24), pix2::size(24), pix3::size(24), pix4::size(24)>> = pixels)

IO.puts("<<r::size(8), g::size(8), b::size(8)>> = <<pix1::size(24)>>")
IO.inspect(<<r::size(8), g::size(8), b::size(8)>> = <<pix1::size(24)>>)

IO.puts("r")
IO.inspect(r)

IO.puts("<<r::size(8), rest::binary>> = pixels")
IO.inspect(<<r::size(8), rest::binary>> = pixels)

IO.puts("r::size(8)")
IO.inspect(r)

# See https://hexdocs.pm/elixir/Kernel.SpecialForms.html#%3C%3C%3E%3E/1-types
IO.inspect(<<r::8, rest::binary>> = pixels)

IO.puts("r::8")
IO.inspect(r)

IO.inspect(<<x1::unsigned>> =  <<-44>>)
IO.inspect(x1)

IO.inspect(<<x2::signed>> =  <<-44>>)
IO.inspect(x2)

IO.inspect(<<x2::integer-signed-little>> =  <<-44>>)
IO.inspect(x2)

IO.inspect(<<n::size(8)-unit(1)>> = <<72>>)
IO.inspect(n)

IO.inspect(<<n::integer>> = <<72>>)
IO.inspect(n)

IO.inspect(<<y::size(4)-little-unit(8)>> = <<72,0,0,0>>)
IO.inspect(y)

#The standard binary operations (shifting bits to left and right, binary 'and', 'or', 'xor', or 'not')

System.halt(0)