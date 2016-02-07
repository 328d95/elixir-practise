defmodule Bob do
  def hey(input) when is_bitstring(input) do
    cond do
      String.strip(input) |> String.last === nil 
        -> "Fine. Be that way!"
      String.last(input) === "?" 
        -> "Sure."
      Regex.match?(~r/[\p{L}]+/, input) 
      && String.upcase(input) === input
        -> "Whoa, chill out!"
      true 
        -> "Whatever."
    end
  end
end
