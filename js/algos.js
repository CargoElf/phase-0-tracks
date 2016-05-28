/*
Longest Phrase Function
input: array of words or phrases
For each array item
  check the length against the item that had the previous greatest length
  If the new item is larger, replace the previous phrase with it
return the longest phrase or word
output: string

Key-Value Match Function
input: 2 Objects (key + value)
For key-value of objects
  Check to see if key is the same
    If so, return true
  Check to see if value is the same
    If so, return true
  If neither condition is met
    Return false
output: true or false

Random Array Generator
input: integer
Create array with a length of given integer
For each item in array
  Randomly generate a number 1-10
    Create a string of the randomly generated length with random letters
output: array of strings

*/

function longestPhrase(phrases) {
  var biggest = "";
  for (var i = 0; i < phrases.length; i++) {
    if (phrases[i].length > biggest.length) {
      biggest = phrases[i];
    } 
  }
  return biggest;
}

function keyValueMatch(object1,object2) {
  var match = false;
  for (var i in object1, object2) {
    if (object1[i] == object2[i]) {
      match = true;
    }
  }
  return match;
}

function randomArrayGenerator(number) {
  var newArray = [];
  for (var i = 0; i < number; i++) {
    newArray += "";
    console.log(newArray);
  }
}

function randomNum(min,max) {
  return Math.floor(Math.random() * (max - min)) + min;
}

randomArrayGenerator(5);

/*
first = {name: "Steven", age: 54};
second = {name: "Tamir", age: 54};
console.log(keyValueMatch(first,second));
var testArray = ["big", "bigy", "biggest"];
console.log(longestPhrase(testArray));
*/