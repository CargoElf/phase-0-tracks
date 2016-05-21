=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :D"
  end
end

puts Shout.yelling_happily("I'm almost too happy")
puts Shout.yell_angrily("I soooo angry")
=end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :D"
  end
end

class Kid
  include Shout
end

class Driver
  include Shout
end

boy = Kid.new
puts boy.yelling_happily("I'm a kid, I get away with everything")
puts boy.yell_angrily("I'm a kid, I can't do anything")

andy = Driver.new
puts andy.yelling_happily("I love this light traffic")
puts andy.yell_angrily("I hate this heavy traffic")
