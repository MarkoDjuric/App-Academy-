

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


3.Even Nums
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


4.Range
#Write a method range(min, max) that takes in two numbers min and max. 
#The function should return an array containing all numbers from min to max inclusive.


def range(min, max)
  array = []
  i = 0
  
  while i <= max - min  

    array << min+i
    
    i+=1
    
  end
  return array 
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]


5.Odd Range
#Write a method odd_range(min, max) that takes in two numbers min and max. 
#The method should return an array containing all odd numbers from min to max (inclusive).


def odd_range(min, max)

   array = []
  i = 0
  while min <= max   
    
if min % 2 != 0
    array << min
    
end   
    min+=1
    i+=1
  end
  return array 
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]



6.Reverse Range
#Write a method reverse_range(min, max) that takes in two numbers min and max. 
#The function should return an array containing all numbers from min to max in reverse order. 
#The min and max should be excluded from the array.


def reverse_range(min, max)
   reversed_array = []
  
  i = max - 1
  while i > min
     reversed_array << i
    
    i -= 1
  end
  
return reversed_array
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]

