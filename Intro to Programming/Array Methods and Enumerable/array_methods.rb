1.To Initials
#Write a method to_initials that takes in a person's name string and returns a string representing their initials.


def to_initials(name)
  str = ""
  
 name.split(" ").each { |ele|  str += ele[0] }
     
  return str
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"


25.First in Array
#Write a method first_in_array that takes in an array and two elements, 
#the method should return the element that appears earlier in the array.


def first_in_array(arr, el1, el2)

 pos1 = arr.index(el1)
 pos2 = arr.index(el2)
  
  if pos1 < pos2
    print el1
  else
    print el2
  end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"


26.Format Name
#Write a method format_name that takes in a name string and returns the name properly capitalized.
# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"


def format_name(str)
  name = []
  
  first_second_name = []
  
   name = str.split(" ")
  
   name[0][1..-1]
  
  end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"

