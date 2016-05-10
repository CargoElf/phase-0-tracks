highway = {
  red_car: {
    car_type: "Toyota",
    car_size: "Mid Size",
    num_doors: 4,
    driver: "Britt",
    passengers: [ "Tom", "Jerry", "Julie", "Jane"
    ],
    cargo: [ "Apples", "Beer", "Boccie Ball"
    ]
  }
  semi_truck: {
    driver: "Big Jim",
    cargo: [ "Slim Jims", "Sparkling Wine", "Cheez-its"
    ]
  }
  motorcycle: {
    motorcycle_type: "Honda",
    engin_size: "500cc" 
    driver: "Tony"
  }
  blue_car: {
    car_type: ,
    car_size: ,
    num_doors: ,
    passengers: [
    ],
    cargo: [
    ]
  }
  __car: {
    car_type: ,
    car_size: ,
    num_doors: ,
    passengers: [
    ],
    cargo: [
    ]
  }
}

puts highway[:red_car][:car_type]