def roman_numerals(number)

  num = number

  numberHash = { "M" => 1000, "D" => 500, "C" => 100,
                 "L" => 50,   "X" => 10,  "V" => 5 }

  resultArray = []

  numberHash.each  do |key, value|
    if num / value >= 1
      resultArray << (key * (num/ value))
      num = num%value
    end
  end

  if num != 0
    resultArray << "I"*num
  end

  result = resultArray.join("")
  result.gsub!("DCCCC", "CM")
  result.gsub!("CCCC", "CD")
  result.gsub!("LXXXX", "XC")
  result.gsub!("XXXX", "XL")
  result.gsub!("VIIII", "IX")
  result.gsub!("IIII", "IV")

  return result
end





