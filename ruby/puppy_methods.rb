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

  def chews(item)
    puts "#{item} is chewed!"
  end

  def initialize
    puts "Initializing new puppy instance ..." 
  end
end

class Cat

  def initialize
    puts "Here's a new cat!"
  end

  def meow
    puts "Meow!"
  end

  def scratches(item)
    puts "#{item} is scratched!"
  end

end

finn = Cat.new
finn.meow
finn.scratches("Couch")




=begin
spot = Puppy.new
spot.fetch("ball") 
spot.speak(3)
spot.roll_over
puts spot.dog_years(8)
spot.chews("Ethernet cord")
=end


