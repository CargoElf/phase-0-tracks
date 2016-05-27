/*
Longest Phrase Function
input: array of words or phrases
For each array item
  check the length against the item that had the previous greatest length
  If the new item is larger, replace the previous phrase with it
return the longest phrase or word
output: string

Key-Value Match Function
input: Object (key + value)

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

var testArray = ["big", "bigy", "biggest"];
console.log(longestPhrase(testArray));