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



2.Format Name
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


3.Is Valid Name
#Write a method is_valid_name that takes in a string and returns a boolean indicating whether 
#or not it is a valid name.

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized

def is_valid_name(str)
  newStr = str.split(' ')
  valid = []
  
  newStr.each do |element|
 
  valid << element[0].upcase + element[1..-1].downcase

  end
  
   print valid.join(' ')
  
    if   newStr.length>1 && str ===  valid.join(' ')

  return true
      
    else
      
      return false
   end
end

puts is_valid_name("Kush Patel val")   # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false



4.Is Valid Email
#Write a method is_valid_email that takes in a string and returns a boolean 
#indicating whether or not it is a valid email address.


# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @


def is_valid_email(str) 
brojevi = ['1','2','3','4','5','6','7','8','9','0']

niz = str.split('')

asterix = 0
br = 0

niz.each do |elem|
if elem === '@' 
   asterix +=1

 elsif elem === '.' 
   br+=1
 end

end

if asterix === 1 && br === 1 
 
 seekedNumber = 0


niz.each do |elem|
  brojevi.each do |item|
    if elem === item
      seekedNumber+=1
    end
   end
end

  if seekedNumber>0
    return false
  else
    return true
  end

 else

 return false
end

end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false



5.Reverse Words
#Write a method reverse_words that takes in a sentence string and returns the sentence 
#with the order of the characters in each word reversed. 
#Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.


def reverse_words(str)
  reversedString = ''

   i=1
  
   while i <= str.length
       reversedString += str[str.length-i]
  
      i+=1
   end
  
  arrNew = reversedString.split(' ')
  
  reversedString2 = []
  
    z = 1
  
    while z <= arrNew.lengt
      reversedString2 << arrNew[arrNew.length-z
        
      z+=1
    end

  return reversedString2.join(' ')
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'


  
5(b).Reverse Words (SECOND SOLUTION)
#Write a method reverse_words that takes in a sentence string and returns the sentence 
#with the order of the characters in each word reversed. 
#Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.  


def reverse_words(sent)
     array =  sent.split(" ")
     string = []
  
  
     array.each_with_index  do |word, i|
        reversed =  reversed_arr(word)
        string << reversed
     end
  
  return p string.join(" ")
end

  def reversed_arr(word)
    str=""
    
     word.each_char do |el|
      str = el + str
     end
    
    return str
  end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
 
  
  
6.Rotate Array
#Write a method rotate_array that takes in an array and a number. The method should return the array after rotating the elements the specified number of times. 
#A single rotation takes the last element of the array and moves it to the front.

  
def rotate_array(arr, num)
  v = " "
  
sliced = arr[-num..-1].join(" ")
 
sl = arr[0...-num].join(" ")

v += sliced +" "+ sl
  
 arr =  v.split(" ")
  
 return p arr
end
  
print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts
print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts  
  
  
  
  
