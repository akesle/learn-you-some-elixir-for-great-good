defmodule WhatTheIf do
  def heh_fine() do
    # Elixir `if` functions differently than Erlang `if`
    case 1 == 1 do
      true -> :works
    end
    case 1 == 2 || 1 == 1 do
      true  -> :works
    end
    case 1 == 2 && 1 == 1 do
      true -> :fails
    end
  end

  def heh_fine2() do
    case true do
      true when 1 == 1 -> :works
      true when 1 == 2 or 1 == 1 -> :works
      true when 1 == 2 and 1 == 1 -> :fails
    end
  end

  def oh_god(n) do
    cond do
      n == 2 -> :might_succeed
      true -> :always_does
    end
  end

  def help_me(animal) do
    talk = cond do
      animal == :cat -> "meow"
      animal == :beef -> "mooo"
      animal == :dog -> "bark"
      animal == :tree -> "bark"
      true -> "fgdadfgna"
    end
    {animal, "says #{talk}!"}
  end
end
