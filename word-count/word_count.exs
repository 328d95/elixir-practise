defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) when is_bitstring(sentence) do
    String.split(sentence, " ", trim: true) 
    |> Enum.find_value(fn(s) -> 

  end
end
