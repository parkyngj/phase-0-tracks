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

// R2. #2
// Write a constructor function for a car. Give it a few different properties of various data types, including at least one function.
// Demonstrate that your function works by creating a few cars with it.

function Car(brand, color, year){
  this.brand = brand;
  this.color = color;
  this.year = year;

  this.battery_running = false;

  this.start_engine = function(){
    console.log("VRRRROOOOOOMMM!!!!")
  };

  this.transport = function(person,place){
    if (this.battery_running) {
    console.log(person + " was driven to " + place + ".")}
    else {
    console.log("Your car is busted, bro. Bummer. Try replacing the battery.")
    }
  }
}; // ends Car constructor function

var our_car = new Car("Honda", "silver", 1991);
console.log(our_car);
our_car.start_engine()
our_car.transport("Justin","Ohio")
our_car.battery_running = true
our_car.transport("Justin","Ohio")