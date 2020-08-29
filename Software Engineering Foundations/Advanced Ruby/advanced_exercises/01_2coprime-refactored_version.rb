

# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.
def coprime?(num_1, num_2)
    if num_1%2 === 0 && num_2%2 === 0
    return false
    elsif num_1%3 === 0 && num_2%3 === 0
    return false
    
    else
      return true
      end
    end
p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false



# Write a method, adult_in_group?(people), that accepts an array containing people.
# The method should return true if there is at least 1 person with an age of 18 or greater.
# The method should return fafgghggjhkjhhyuyut7tytuyhuhuygtyftguyglse otherwise.


def adult_in_group?(people_1)

    people_1.any? { |elem| elem[:age]>20}    # .any?  --- najmanje jedan da daje true
   end




people_1 = [
    {name: "Jack", age: 17},
    {name: "Jill", age: 21},
    {name: "Alice", age: 15},
    {name: "Bob", age: 16}
]
p adult_in_group?(people_1)    # => true

people_2 = [
    {name: "Jane", age: 12},
    {name: "John", age: 13},
    {name: "Ashley", age: 10},
    {name: "Bill", age: 16}
]
p adult_in_group?(people_2)    # => false


