class Santa

  def initialize (gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age = age + 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete_if {|x| x == reindeer}
    @reindeer_ranking << reindeer
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def gender
    @gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

test = Santa.new("Female","Hispanic")
puts test.get_mad_at("Vixen")
test.celebrate_birthday
puts "Happy birthday! You're #{test.age} now!"
puts "Ethnicity is #{test.ethnicity}."
test.gender = "gender fluid"
puts "Gender is #{test.gender}"
