##Calculator in words

####This is a ruby method for making calculations with strings rather than numbers. For example you can enter the text "What is 5 plus 3" and the method will return the correct sum, which is 8.

To use it just copy the code from the lib/calculator.rb file and paste it into a ruby client ([Here's a link](http://www.learnhowtoprogram.com/lessons/installing-ruby) that helped me install ruby on my machine). Then type ‘calculator(your-string-here)' in the client.

We built this project while we were students at [Epicodus](http://www.epicodus.com/). [This exercise](http://www.learnhowtoprogram.com/lessons/calculator-in-words-pig-latin) was meant to introduce us to writing our own ruby methods.

The app supports addition, subtraction, multiplication, division and exponents. It picks up on certain words to make its calculations so use one of these to get the method to return the correct number.

Supported strings
* addition = add, addition, plus, sum
* subtraction = minus, subtract, subtracted, difference)
* multiplication = times, multiplied
* division = divided
* exponents = power, exponent
