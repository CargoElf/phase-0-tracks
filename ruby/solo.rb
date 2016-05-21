class Warrior

  attr_reader :strength, :weapon
  attr_accessor :enemy, :hit_points

  def initialize (hit_points, strength, weapon)
    puts "A new warrior enters the world!"
    @hit_points = hit_points
    @strength = strength
    @weapon = weapon
  end

  def take_damage(dmg_amount)
    @hit_points = hit_points - dmg_amount
  end

  def attack(enemy)
    @enemy = enemy
  end

  def heal(healing)
    @hit_points = hit_points + healing
  end

end

stan = Warrior.new(23, 14, "sword")
puts "Warrior's strength is #{stan.strength}!"
stan.take_damage(3)
puts "Current hit points: #{stan.hit_points}"
stan.heal(2)
puts "Current hit points: #{stan.hit_points}"
stan.attack("goblin")
puts "Warrior attacks #{stan.enemy} with #{stan.weapon}!"


