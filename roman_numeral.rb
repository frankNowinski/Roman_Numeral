#  This is a simple ruby program that converts Roman Numerals into integers.

def valid(array)
  roman_numeral = { }

  roman_numeral['I'] = 1
  roman_numeral['V'] = 5
  roman_numeral['X'] = 10
  roman_numeral['L'] = 50
  roman_numeral['C'] = 100
  roman_numeral['D'] = 500
  roman_numeral['M'] = 1000

  sum = 0
  count = 0
  len = array.length

  array.each { |input|
    roman_numeral.each { |key, value|
      if input.chr == key 
        sum += value
	count += 1
      end
    }
  }

  if count != len
    puts"Invalid Roman Numeral"
    exit
  end 
  sum	
end

puts "Please enter a Roman Numeral: "
numeral = gets.chomp.upcase

count = 0
len = numeral.length
array = []

while count < len
  array.push(numeral[count])
  count += 1
end

puts "Roman Numeral #{numeral} converted into an integer is #{valid(array)}"
