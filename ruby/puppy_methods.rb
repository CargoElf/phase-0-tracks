class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    i = 0
    while i < num.to_i
      puts "woof!"
      i += 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    human_years * 4
  end

end

spot = Puppy.new
spot.fetch("ball") 

spot.speak(3)
spot.roll_over
puts spot.dog_years(8)