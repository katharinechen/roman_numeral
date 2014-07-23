def roman_numerals(number)
  numberHash = { "M" => 1000, "CM" => 900, "D" => 500, "CD" => 400,
                 "C" => 100,  "XC" => 90,  "L" => 50,  "XL" => 40,
                 "X" => 10,   "IX" => 9,   "V" => 5,   "IV" => 4,
                 "I" => 1 }
  resultArray = []
  numberHash.each do |key, value|
    if number / value >= 1
      resultArray << (key * (number/ value))
      number = number%value
    end
  end
  result = resultArray.join("")
end

def roman_to_numbers(numeral)
  counter = []
  3999.times do |x|
    counter << roman_numerals(x)
  end
  return (counter.index(numeral))
end
