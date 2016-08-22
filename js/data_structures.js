var color = ['blue', 'pink', 'rainbow', 'white'];
var horses = ['Twilight Sparkle', 'Pinkie Pie', 'Rainbow Dash', 'Applejack'];

color.push('maroon');
horses.push('Rarity');

console.log(color);
console.log(horses);

// R1. #2
// Add code that will use your two arrays to create an object. The keys of your object should be horse names, and the values should be colors.
// Your solution should be something that would work for any number of colors/horses, as long as the two arrays are the same length.

// Pseudocode: 
// iterate n number of times, where n is the length of either color/horses array
// each iteration, add horse/color from respective arrays (depending on index of iteration) as key/value pair to object
// print object to console

// initialize empty object to return at end of iteration
var ponies = {};

// assign length of color array to variable
var ary_length = color.length;

for(var i = 0; i < ary_length; i++){
  var new_name = horses[i];
  var new_color = color[i];
  ponies[new_name] = new_color;
};

console.log(ponies);