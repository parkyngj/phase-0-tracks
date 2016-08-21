// Young Ju (Sally) Park
// Week 7, Module 1: Javascript Syntax


// R4. Write a Javascript Program
// Write a reverse function that takes a string as a parameter and returns the reversed string.

function reverse(str) {
  // initialize empty string to return
  var revstr = "";
  // iterate through the given string
  // set the counter equal to the string length; keep iterating until the counter is equal to or less than 0; each iteration decreases the counter by 1
  for (var i = str.length; i > 0; i--) {
    // update the initialized string by adding the character in counter index subtract by 1
    // Wy subtract by 1?: Indexing starts at 0.
    // An illustrative example to indicate why we need to subtract by 1: "hello".length is 5, but "hello"[5] is undefined. We need to start by adding "o" which is "hello"[4].
    revstr = revstr + str[i - 1]
  }
  // finish off by having the function return the newly updated initialized variable
  return revstr
}

// -------------------------------------------------------------

// DRIVER CODE

// returns "olleh"
console.log(reverse("hello"));
// returns "h"
console.log(("h"));
// returns ""
console.log(reverse(""));
// returns "ereht olleh yhw"
console.log(reverse("why hello there"));

// R4. #4 Add driver code that calls the function in order to reverse a string of your choice and store the result of the function in a variable.

var my_string = reverse("whatevr");

// R4. #5 Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.

if (my_string[1] == "e") {
  console.log(my_string)
}
else {console.log("whatevs dawg")};