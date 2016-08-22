// Young Ju (Sally) Park
// Week 7, Module 3: Solo Challenge: Algorithm Practice (Javascript)

// R0. #2. Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// NOTE: if there are multiple strings with the "longest length" amongst the array, it will just return the string that appears first in the array (in terms of indices)
function longest_string(ary) {
  // initialize variable as the first element of the array. by the end of the method call, it will be updated to the longest string in the array
  // call this the king string
  var kingstring = ary[0]
  // iterate through the array
  // note that string is the dummy variable which grabs the array element we are currently on
  ary.forEach( function(string){
    // if the string in the iteration we are on is longer than the current king string,
    if(string.length > kingstring.length) {
    // then update the king string to the string in that iteration
      kingstring = string
       } } )
 // the function returns the king string
 return kingstring
}

// R1. #1. Write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// input: two associative arrays, output: true/false
// example: if function called with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true

function kv_match(assocary1,assocary2){
  // initialize the boolean to be returned at the end of the function as "false". 
  var matching = false;

  // iterate through the first array, iterate through the first array's keys
  for(key1 in assocary1)
  {
    // within iterating through the first array, iterate through the second array's keys
    for(key2 in assocary2) {
      // if we detect a matching key between the two arrays
      if (key1 == key2){
        // check to see if the values of the two matching keys are equal
        if (assocary1[key1] == assocary2[key2]){
          // if they are, then set the boolean value to be returned as true
          matching = true
        }
      }
    }
  }

  // the function returns the boolean
  return matching
// closes function definition
}

// R2. #1. Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
// example: If we ran your function with an argument of 3, we would get an array of 3 random words back.
// The words should be of varying length, with a minimum of 1 letter and a maximum of 10 letters.
// (This involves a new trick, generating a random number that you'll have to look up, but the solution on how to do so is relatively straight forward.)

// Define a helper function that generates a string made of alphabetic characters, ranging from length 1 to length 10
function gen_random_1_10(){
  // initialize the string to be returned as the result of the function. Initially, it is empty
  var str = "";
  // create a bank of possible characters that can be chosen from while building the result string
  var charbank = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
  // generate a random integer between 1 and 10 inclusive to designate the length of the result string
  var str_length = Math.floor(Math.random() * (10 - 1 + 1)) + 1;

  // iterate the number of times as the randomly generated number just above.
  for(var i = 0; i < str_length; i++){
    // append to the result string a randomly chosen character from the bank
    str = str + charbank.charAt(Math.floor(Math.random() * (charbank.length)));
  }

  return str
}

function array_builder(int){
  // initialize the array to be returned as the result of the function. Initially, it is empty
  result_ary = []
  // iterate the number of times specified, since the given integer input is the length of the result array
  for(var i = 0; i < int; i++){
    // add a random string of alphabetic characters by using the helper function defined above
    result_ary.push(gen_random_1_10())
  }

  return result_ary
}

// ------------------------------------------------------
// DRIVER CODE

// R0. #3 Add driver code that tests your function on a few arrays.
console.log(longest_string(["long phrase","longest phrase","longer phrase"]));
console.log(longest_string(["tomatos","penguin","frozen","body"]));

// R1. #2 Add some driver code that tests both outcomes of your function.
console.log(kv_match({name: "Spot", age: 2}, {name: "Henry", age: 2, toy: "ball"}));
console.log(kv_match({one: "fish", two: "fish", three: "green"}, {one: "red", two: "blue", fish: "green"}));

// R2. #2 Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

for(var i = 0; i < 10; i++){
  ary = array_builder(3)
  console.log(ary)
  console.log(longest_string(ary))
}