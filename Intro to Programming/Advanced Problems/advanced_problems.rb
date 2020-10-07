
1.Map By Name
#Write a method map_by_name  that takes in an array of hashes and returns a new array containing the names of each hash.

def map_by_name(arr)
  
  new_arr = arr.map { |name| name['name']   }
  print new_arr
  puts

end


pets = [
  {"type"=>"dog", "name"=>"Rolo"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Finn"},
  {"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Hungary", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts



2.Map By Key
#Write a method map_by_key that takes in an array of hashes and a key string. 
#The method should returns a new array containing the values from each hash for the given key.


def map_by_key(arr, key)
  new_arr = arr.map { |k| k[key]  }
  print new_arr
end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts


3.Yell Sentence
#Write a method yell_sentence that takes in a sentence string and returns a new sentence where every word is yelled. 
#See the examples. Use map to solve this.


def yell_sentence(sent)
  
   array_word = sent.split(" ")
   
   sentence =  array_word.map { |word| word.upcase + "!"  }
  
   sentence.join(" ")
  
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"


4.o Words
#Write a method o_words that takes in a sentence string and returns an array of the words that contain an "o".
#Use select in your solution!


def o_words(sentence)
  
  sentence_arr = sentence.split(" ")
  print sentence_arr
  puts
  
o_words = sentence_arr.select { |word| word.include?('o')   }

  print o_words
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts



5.Last Index
#Write a method last_index that takes in a string and a character. 
#The method should return the last index where the character can be found in the string.


def last_index(str, char)
  rever_str =  str.reverse
  index = rever_str.index(char)
  rever_str.length-1 - index
end

puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7
puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9


6.Most Vowels
#Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.


def most_vowels(word)
  base_count = 0
  vowels = "aeiou"
  str = ''
  splited = word.split(" ")

  
  splited.each_with_index do |char, i|
    calculated = numbers_of_vowels(char)
       if calculated > base_count
          base_count = calculated
          str = char
        end
      end
  
     return p str
   end



