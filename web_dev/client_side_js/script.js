console.log("Script is go!");

function randomBackGround() {
  var ranColors = ["green","blue","gray","yellow","red","purple"];
  var newBGColor = ranColors[Math.floor(Math.random() * 6)];
  var body = document.getElementsByTagName("body")[0];
  body.style.background = newBGColor;
}

var welcome = document.getElementById("greeting");
welcome.style.border = "4px dashed black";

var surround = document.getElementsByClassName("surround");

for (i = 0; i < surround.length; i++) {
  surround[i].style.padding = "" + (20 * i + 10) + "px";
}

var para = document.createElement("p");
var node = document.createTextNode("Here's JS created Text!");
para.appendChild(node);

var element = document.getElementById("one");
element.appendChild(node);


var button = document.getElementsByTagName("button")[0];
button.addEventListener("click", randomBackGround);