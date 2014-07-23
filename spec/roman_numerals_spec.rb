require("rspec")
require("roman_numerals")

describe("roman_numerals") do

  it("takes a number less than 6 and returns its roman numeral equivalent") do
    expect(roman_numerals(3)).to(eq("III"))
  end

  it("takes a number less than 6 and returns its roman numeral equivalent") do
    expect(roman_numerals(5)).to(eq("V"))
  end

  it("takes a number less than 6 and returns its roman numeral equivalent") do
    expect(roman_numerals(15)).to(eq("XV"))
  end

  it("takes a number greater than 50 and returns its roman numeral equivalent") do
    expect(roman_numerals(55)).to(eq("LV"))
  end
  it("takes a number greater than 50 and returns its roman numeral equivalent") do
    expect(roman_numerals(155)).to(eq("CLV"))
  end
  it("takes a number greater than 50 and returns its roman numeral equivalent") do
    expect(roman_numerals(755)).to(eq("DCCLV"))
  end
  it("takes a number greater than 50 and returns its roman numeral equivalent") do
    expect(roman_numerals(1755)).to(eq("MDCCLV"))
  end
end




# The most basic rule is that you add the value of all the symbols: so II is 2, LXVI is 66, etc.

# The exception is that you can't have more than three of the same character is a row: instead, you switch to subtraction. So instead of writing IIII for 4, you write IV (for 5 minus 1); and instead of writing LXXXX for 90, you write XC.

# You also have to separate ones, tens, hundreds, and thousands. In other words, 99 is XCIX, not IC.

# You can't count higher than 3,999 in Roman numerals.

# Write a method to convert numbers into roman numerals. Let BDD be your guiding light.
