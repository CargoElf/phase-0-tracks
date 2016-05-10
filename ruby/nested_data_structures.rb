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
    car_type: "Honda",
    car_size: "Compact",
    num_doors: 2,
    driver: "Sue"
    passengers: [ "John", "Alex"
    ],
    cargo: [ "Beach Blanket", "Beach Umbrella", "Beach Ball", "Frisbee"
    ]
  }
  ambulance: { 
    driver: "Ann"
    emts: [ "Judy", "Luis", "April"
    ],
    patient: {
      name: "Bill Smith",
      emergency: "hang gliding accident",
      emergency_contacts: [ "Rachelle", "Sue"
      ]
    }
  }
}

puts highway[:red_car][:car_type]