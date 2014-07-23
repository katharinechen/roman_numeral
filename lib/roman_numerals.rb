def roman_numerals(number)

  num = number

  numberHash = { "M" => 1000, "D" => 500, "C" => 100,
                 "L" => 50,   "X" => 10,  "V" => 5,
                 "I" => 1 }

  resultArray = []

  if num / 1000 >= 1
    resultArray << ("M"*(num / 1000))
    num = num%1000
  end

  if num / 500 >= 1
    resultArray << ("D"*(num / 500))
    num = num%500
  end

  if num / 100 >= 1
    resultArray << ("C"*(num / 100))
    num = num%100
  end

  if num / 50 >= 1
    resultArray << ("L"*(num / 50))
    num = num%50
  end

  if num / 10 >= 1
    resultArray << ("X"*(num / 10))
    num = num%10
  end

  if num / 5 >= 1
    resultArray << ("V"*(num / 5))
    num = num%5
  end

  if num != 0
    resultArray << "I"*num
  end

  return resultArray.join("")

end

# puts roman_numerals(000)



