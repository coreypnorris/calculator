def calculate(input)
  input = input.gsub(/([\?|!|.])/, '')
  input = input.split(' ')

  math_words = []
  
  addition = /(add|addition|plus|\+|sum)/
  numbers = /([0-9]+)/  
  
  result = 0
  pos = 0

  input.each do |word|
    if (word.match(numbers) || word.match(addition))
      math_words << word
    end
  end

  math_words
end

print calculate("What is 5 plus 3?")
# What is 5 plus 3?
