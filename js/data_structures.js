var colors = ["red", "blue", "green", "yellow"];

var horseNames = ["Ed", "Budweiser", "Bob", "Frank"];

colors.push("orange");
horseNames.push("Susan");

console.log(colors);
console.log(horseNames);

var horseColors = {};

for (var i = 0; i < colors.length; i++) {
  horseColors[horseNames[i]] = colors[i];
};

console.log(horseColors);

function Car(color,wheels,convertable) {
  this.color = color;
  this.wheels = wheels;
  this.convertable = convertable;
  
  this.honk = function() {console.log("*honks horn*");};
}

var camaro = new Car("yellow", 4, true);
console.log(camaro);
camaro.honk();

var uglyVan = new Car("rust", 3, true);
console.log(uglyVan);
uglyVan.honk();

var motorCycle = new Car("black", 2, false);
console.log(motorCycle);
motorCycle.honk();