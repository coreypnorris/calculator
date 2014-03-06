def calculate(input)
  # ['What', 'is', '5', 'minus', '3?']
  input = input.downcase
  input = input.gsub(/([\?|!|.])/, '')
  input = input.split(' ')

  numbers = []
  operators = []
  
  addition = /(add|addition|plus|\+|sum)/
  subtraction = /(minus|subtract|subtracted|\-|difference)/
  integers = /([0-9]+)/  
  
  result = ''

  # ['What', 'is', '5', 'minus', '3']
  #=> ['5', '3']
  input.each do |word|
    if (word.match(integers))
      numbers << word
    end
  end

  # ['What', 'is', '5', 'minus', '3']
  #=> ['minus']
  input.each do |word|
    if (word.match(addition))
      operators << "+"
    elsif (word.match(subtraction))
      operators << "-"
    end
  end

  operators_counter = 0
  numbers.each_index do |index|
    result += numbers[index]
    
    if (operators_counter < operators.length)
      result += operators[index]
    end
    
    operators_counter = operators_counter + 1
  end

puts "operators #{operators}"
puts "numbers #{numbers}"
puts eval(result)
end

calculate("Sum of 5 and 3 minus 2?")


# What is 5 minus 3?
