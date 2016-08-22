// Young Ju (Sally) Park
// Week 7, Module 3: Solo Challenge: Algorithm Practice (Javascript)

// R0. #2. Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// NOTE: if there are multiple strings with the "longest length" amongst the array, it will just return the string that appears first in the array (in terms of indices)
function kv_match(assocary1,assocary2){
  // initialize the boolean to be returned at the end of the function as "false". 
  var matching = false

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

// R1. #1. Write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// input: two associative arrays, output: true/false
// example: if function called with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true

function kv_match(assocary1,assocary2){
  // initialize the boolean to be returned at the end of the function as "false". 
  var matching = false

  // iterate through the first array, iterate through the first array's keys
  for(key1 in assocary1)
  {
    // within iterating through the first array, iterate through the second array's keys
    for(key2 in assocary2) {
      // if we detect a matching key between the two arrays
      if (key1 == key2){
        // check to see if the values of the two matching keys are equal
        if (ary[ky] == dog[key]){
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


// ------------------------------------------------------
// DRIVER CODE

// R0. #3 Add driver code that tests your function on a few arrays.
console.log(longest_string(["long phrase","longest phrase","longer phrase"]));
console.log(longest_string(["tomatos","penguin","frozen","body"]));

// R1. #2 Add some driver code that tests both outcomes of your function.
console.log(kv_match({name: "Spot", age: 2}, {name: "Henry", age: 2, toy: "ball"}));
console.log(kv_match({one: "fish", two: "fish", three: "green"}, {one: "red", two: "blue", fish: "green"}));

