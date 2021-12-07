require 'set'

def find_first_duplicate(arr)
  # type your code in here
  my_set = Set.new
  
  arr.each do |value|
    if my_set.include?(value)
      return value
    else
      my_set.add(value)
    end
  end
  -1  
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  puts

  puts "Expecting: 7"
  puts find_first_duplicate([7, 1, 12, 7])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
##################################################################################
# initialize an new set with the name my_set
#    itterate through the input array with each method

#    use conditional statement to check if the given value is included in my_set
       # if the value is already included, return `value`
       # else add the value to my_set

#  return -1 if there is no duplicates in the input array   
##################################################################################

# And a written explanation of your solution
##################################################################################
#  Since a Set is a data structure that contains a collection of unordered values with NO duplicates, 
#  I can initialize a new set and check if a value is in the set before adding it. 
#  If the set has the value, meaning there's a duplicate, the value will be returned immediately; 
#  else the value will be added to the set. 
#  If I exit iteration without returning anything, that means there's no duplicate, 
#  so the value of -1 will be returned as required.
# #################################################################################
