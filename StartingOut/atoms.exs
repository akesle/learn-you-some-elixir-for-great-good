

IO.puts(":atom #{:atom}")

IO.puts(":atoms_rule #{:atoms_rule}")

IO.puts(":atoms_rule@elixir #{:atoms_rule@elixir}")

# Using a single-quoted literal char list
IO.puts(":'Atoms can be cheated' #{:'Atoms can be cheated'}")

atom = :'atom'
IO.puts("atom: #{atom}, is atom #{is_atom(atom)}")

System.halt(0)
