/*
String reverse method
input: string
For each letter starting with the last
  Add to new variable to rebuild word backwards.
output: string reversed
*/

function reverse(word) {
  var wordReverse = '';
  for (var i = word.length - 1; i >= 0; i--)
    wordReverse += word[i];
  return wordReverse;
}

var reverseResult =  reverse("InputWord");

if (reverseResult.length  <= 8) {
  console.log(reverseResult);
} else {
  console.log("Why did you pick a long word like " + reverse(reverseResult) + "?");
}
