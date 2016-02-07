defmodule RomanNumeralTest do
  use ExUnit.Case
  doctest RomanNumeral

  test "converts arabic into roman numerals" do
    numerals = [{0, ""}, 
                {1, "I"},
                {2, "II"},
                {3, "III"},
                {4, "IV"},
                {5, "V"},
                {6, "VI"},
                {9, "IX"},
                {10, "X"},
                {23, "XXIII"}]
    Enum.each numerals, fn({arabic, roman}) 
      -> assert RomanNumeral.converts(arabic) == roman end
  end

end
