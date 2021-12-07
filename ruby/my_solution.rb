require 'set'

def find_first_dupulicate(array)
    # my_set contains a collection of unordered values with no duplicates
    my_set = Set.new

    array.each do |item|
        if my_set.include?(item)
            return item
        else
           my_set.add(item)
        end
      -1
    end
end

if __FILE__ == $PROGRAM_NAME

puts "Expecting: -1"
puts  find_first_dupulicate([1, 2, 3, 4])

puts 

puts "Expecting: 2"
puts find_first_dupulicate([1, 2, 2, 3, 3, 4]) 

end

# My Takeaways from This Lesson
##################################################################################
# Set
# In Ruby, `set` implements a collection of unordered values with no duplicates. 
# DO NOT forget to add `require 'set'`  at the top of the file
# Set is easy to use with Enumerable objects (implementing `each`). 
