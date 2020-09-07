

1.Yell

 def yell(words)

  concated_word = []
  
  i = 0
  while i < words.length
    concated_word << words[i] + '!'
    i+=1
  end
   return concated_word
  end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]


2.Element Times Index
#Write a method element_times_index(nums) that takes in an array of numbers 
#and returns a new array containing every number of the original array multiplied with its index.


def element_times_index(numbers)
    concated_numbers = []
  
  i = 0
  while i < numbers.length
     concated_numbers << numbers[i]* i
     i+=1
 end
  
  return concated_numbers
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]


3. Even Nums
#Write a method even_nums(max) that takes in a number max 
#and returns an array containing all even numbers from 0 to max.


def even_nums(max)
  even_array = []
  
  i = 0
  while i <= max
    
    if i % 2 == 0
      even_array << i
     end
    
    i+=1
   end
  
  return even_array
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]
