1.Get Full Name
#Write a method get_full_name that takes in a hash containing a first, last, and title. 
#The method should return a string representing the hash's full name.


def get_full_name(hash)
  
 return puts hash["first"]+" "+hash["last"]+ ", "+hash["title"]
   
end

hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"



2.Word Lengths
#Write a method word_lengths that takes in a sentence string and returns a hash where every key is a word of the sentence,
# and its' corresponding value is the length of that word.


def word_lengths(sentence)
  strArr = sentence.split(" ")

  noviObjekat = Hash.new(0)
  strArr.each do |elem|
    
    noviObjekat[elem]+=elem.length
    
  end
  
  return noviObjekat
  
end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}


3.Retrieve Values
#Write a method retrieve_values that takes in two hashes and a key. 
#The method should return an array containing the values from the two hashes that correspond with the given key.


def retrieve_values(hash1, hash2, key)
  arrObj = []
  if key==='name'
    arrObj<< hash1["name"]
    arrObj<< hash2["name"]
  else
     arrObj<< hash1["color"]
    arrObj<< hash2["color"]
  end
   return [arrObj]
  end


