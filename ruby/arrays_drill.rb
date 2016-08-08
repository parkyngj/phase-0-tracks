##Release 2

#At the top of your file, add a method that takes three items as parameters and returns an array of those items. So build_array(1, "two", nil) would return [1, "two", nil]. This won't take much code, but the syntax might feel a bit odd. At the bottom of the file, call the method to show that it works

def build_array( el1, el2, el3)
    
  return [el1, el2, el3]

end #closed build_array method

# At the top of your file, add a method that takes an array and an item as parameters, and returns the array with the item added. So add_to_array([], "a") would return ["a"], and add_to_array(["a", "b", "c", 1, 2], 3) would return ["a", "b", "c", 1, 2, 3]. Print a few test calls of the method.

def add_to_array(arr,item)

  return   arr << item  
    
end # closed add_to_array







##Release 1
#Initialize an empty array and store it in a variable (you can #choose the name). Print the variable using p.

space = []
p space

#Add five items to your array. Print the array.

space << "earth"
space << [0, true]
space << "venus"
space << "flan"
space << [42.42, 44.44 ,69]

p space

#Delete the item at index 2. Print the array.

space.delete_at(2)
p space

#Insert a new item at index 2. Print the array.

space.insert(2, "lamp" )
p space

# Remove the first item of the array without having to refer to its index. Print the array
space.shift
p space

#Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)
p space.include?("flan")

#Initialize another array that already has a few items in it.
smoothies = ["strawberry banana", "raspberry delight", "avocado"]
space_smoothies = space + smoothies
p space_smoothies