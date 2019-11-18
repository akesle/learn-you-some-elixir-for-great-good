
# IO.puts("#{one}")

#warning: variable "one" does not exist and is being expanded to "one()", please use parentheses to remove the ambiguity or change the variable name
#       invariable_variables.exs:2
#
#** (CompileError) invariable_variables.exs:2: undefined function one/0
#    (elixir) src/elixir_bitstring.erl:142: :elixir_bitstring.expand_expr/4
#    (elixir) src/elixir_bitstring.erl:27: :elixir_bitstring.expand/8
#    (elixir) src/elixir_bitstring.erl:20: :elixir_bitstring.expand/4


one = 1
IO.puts("#{one}")

un = uno = one = 1
IO.puts("#{uno}")
IO.puts("#{un}")

two = one + one
IO.puts("#{two}")

two = 2
IO.puts("#{two}")

# Re-binding in Elixir; lh un-pinned
two = two + 1
IO.puts("two = two + 1: #{two}")

# This expression requires pinning the lh variable ref
#^two = two + 1
# ** (MatchError) no match of right hand side value: 3
#IO.puts("#{two}")

# ^twoo = 2
# ** (CompileError) invariable_variables.exs:31: undefined variable ^twoo. No variable "twoo" has been defined before the current pattern
#IO.puts("#{two}")

IO.puts("#{47 = 45 + 2}")

#IO.puts("#{47 = 45 + 3}")
#** (MatchError) no match of right hand side value: 48
#invariable_variables.exs:37: (file)
#(elixir) lib/code.ex:813: Code.require_file/2

_ = 14+3
#IO.puts("#{_}")
#** (CompileError) invariable_variables.exs:47: invalid use of _. "_" represents a value to be ignored in a pattern and cannot be used in expressions
#(elixir) src/elixir_bitstring.erl:142: :elixir_bitstring.expand_expr/4
#(elixir) src/elixir_bitstring.erl:27: :elixir_bitstring.expand/8
#(elixir) src/elixir_bitstring.erl:20: :elixir_bitstring.expand/4

IEx.Helpers.respawn()

# Looks like IEx.Helpers.respawn/1 will retain existing variable state
# from the previous session, when called in a script
IO.puts("#{two}")

#iex
#Erlang/OTP 22 [erts-10.5.2] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]
#
#Interactive Elixir (1.9.1) - press Ctrl+C to exit (type h() ENTER for help)
#iex(1)> two = 2
#2
#iex(2)> two
#2
#iex(3)> respawn
#
#Interactive Elixir (1.9.1) - press Ctrl+C to exit (type h() ENTER for help)
#iex(1)> two
#** (CompileError) iex:1: undefined function two/0
#
#iex(1)>

System.halt(0)
