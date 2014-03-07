def calculate(input)
  # ['What', 'is', '5', 'minus', '3?']
  #=> ['What', 'is', '5', 'minus', '3']
  input = input.downcase
  input = input.gsub(/([\?|!|.])/, '')
  input = input.split(' ')

  numbers = []
  operators = []
  operators_counter = 0
  
  addition = /(add|addition|plus|\+|sum)/
  subtraction = /(minus|subtract|subtracted|\-|difference)/
  multiplication = /(times|multiplied|\*)/
  division = /(divided|\/)/
  exponents = /(power|exponent)/
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
  #=> ['-', '']
  input.each do |word|
    if (word.match(addition))
      operators << "+"
    elsif (word.match(subtraction))
      operators << "-"
    elsif (word.match(multiplication))
      operators << "*"
    elsif (word.match(division))
      operators << "/"
    elsif (word.match(exponents))
      operators << "**"
    end
  end

  # ['What', 'is', '5', '-', '3']
  #=> "5 - 3"
  numbers.each_index do |index|
    result += numbers[index]
    
    if (operators_counter < operators.length)
      result += operators[index]
    end
    
    operators_counter += 1
  end
  eval(result).to_i
end

# 2 to the power of 5?
#=> 32
calculate("5 plus 3")
