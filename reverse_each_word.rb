
#Write a method called `reverse_each_word` that takes in a string argument of a sentence and returns that same sentence with each word reversed in place.
#First solve it using `.each` Then write the same method using `.collect` to see the difference.

#1. Take the string argument and split it up so each word is an element in an array. (use .split)
    #Example: "Hello World" > ["Hello", "World"]
#2. For each element in the array, reverse the letters.
    #Example: ["Hello", "World"] > ["dlroW", "olleH"]
#3. Combine or concanate the array into a string
    #Example: ["dlroW", "olleH"] > "dlroW olleH"

#FIRST ATTEMPT: USING .EACH
#Notes
      #line 20 will store the array as a new variable
      #line 21-23 defines a new array that includes the reversed elements of word_array
      #line 24 concanates all the elements of the reverse_text array into a single string
      #line 24 (" ") adds a string space inbetween each of words in the string

  #  def reverse_each_word(sentence)
    #  word_array = sentence.split(" ")
    #  reverse_text = word_array.each do |x|
    #    x.reverse!
    #  end
    #  reverse_text.join(" ")
  #  end

#SECOND ATTEMPT: USING .COLLECT
#Notes
    #No need to create new variables to store the changes throughout the method.
    #.collect will continually update the new variable with all the actions but store the changes

#  def reverse_each_word(sentence)
#      word_array = sentence.split(" ")
  #    word_array.collect do |x|
  #    x.reverse!
  #    end
  #    word_array.join(" ")
  # end

#THIRD ATTEMPT: CLEANING UP AND CONDENSING MY code
#Notes
  #Can I combine methods and use the short form of .collect method
  #since I'm using .collect and I don't have to store new variables for each step,
  #I can start with the string arguement, "sentence", and insert each method on one line with "." between them
    def reverse_each_word(sentence)
      sentence.split(" ").collect {|x| x.reverse!}.join(" ")
    end
