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