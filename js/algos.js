// Young Ju (Sally) Park
// Week 7, Module 3: Solo Challenge: Algorithm Practice (Javascript)

// R0. #1. Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

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
    }
  } )
  // the function returns the king string
  return kingstring
}


// ------------------------------------------------------
// DRIVER CODE

// test for R0: longest string in array function
console.log(longest_string(["long phrase","longest phrase","longer phrase"]));