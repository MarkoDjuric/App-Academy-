
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


50.Yell Sentence
#Write a method yell_sentence that takes in a sentence string and returns a new sentence where every word is yelled. 
#See the examples. Use map to solve this.


def yell_sentence(sent)
  
  
  array_word = sent.split(" ")
   
    sentence =  array_word.map { |word| word.upcase + "!"  }
  
    print  sentence.join(" ")
  
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"


52.o Words
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




