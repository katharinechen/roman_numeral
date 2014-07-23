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

  it("takes a 4 and returns its roman numeral equivalent") do
    expect(roman_numerals(4)).to(eq("IV"))
  end

  it("takes a 9 and returns its roman numeral equivalent") do
    expect(roman_numerals(9)).to(eq("IX"))
  end

  it("takes a 49 and returns its roman numeral equivalent") do
    expect(roman_numerals(49)).to(eq("XLIX"))
  end

  it("takes a 99 and returns its roman numeral equivalent") do
    expect(roman_numerals(99)).to(eq("XCIX"))
  end

  it("takes a 129 and returns its roman numeral equivalent") do
    expect(roman_numerals(149)).to(eq("CXLIX"))
  end

  it("takes a 499 and returns its roman numeral equivalent") do
    expect(roman_numerals(499)).to(eq("CDXCIX"))
  end

  it("takes a 999 and returns its roman numeral equivalent") do
    expect(roman_numerals(999)).to(eq("CMXCIX"))
  end

  it("takes a 2999 and returns its roman numeral equivalent") do
    expect(roman_numerals(2999)).to(eq("MMCMXCIX"))
  end

end
