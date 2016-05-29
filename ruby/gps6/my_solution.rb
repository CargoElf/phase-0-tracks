# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#Require Relative uses a file in the same directory as the current folder
#it is different from a plain require statement that needs a file path

class VirusPredictor

  #initializes the virus predictor with each of the 3 variables
  def initialize(state_of_origin, population_density, population)
  @state = state_of_origin
  @population = population
  @population_density = population_density
  end

  #the main method, calling the other two methods (predicted deaths and speed of spread)
  def virus_effects
  predicted_deaths
  speed_of_spread
  end

  private

  #calculates the estimated deaths for each state
  def predicted_deaths
  # predicted deaths is solely based on population density
  case @population_density
  when 200.. 10000000000000000000000000000 then number_of_deaths = (@population * 0.4).floor
  when 150.. 199 then number_of_deaths = (@population * 0.3).floor
  when 100.. 149 then number_of_deaths = (@population * 0.2).floor
  when 50.. 99 then number_of_deaths = (@population * 0.1).floor
  else
  number_of_deaths = (@population * 0.05).floor
  end

  print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #calculates how long the disease will take to spread across a given state
  def speed_of_spread #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
    speed = 2.5

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 50 && @population_density < 200
      speed = speed - ((@population_density / 50).floor / 2.0)
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=========================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end