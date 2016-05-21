=begin
Warrior

On initialize, take hit points, strength, weapon, and name
When damage is taken
  subtract damage amount from current hit points
  update hit points
When healing
  add healing amount to current hit points
  update hit points
When attacking
  store enemy name for retrieval later
=end

class Warrior

  attr_reader :strength, :weapon, :name
  attr_accessor :enemy, :hit_points

  def initialize (hit_points, strength, weapon, name)
    puts "A new warrior enters the world!"
    @hit_points = hit_points
    @strength = strength
    @weapon = weapon
    @name = name
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

stan = Warrior.new(23, 14, "sword", "Edwardo")
puts "#{stan.name}'s' strength is #{stan.strength}!"
stan.take_damage(3)
puts "Current hit points: #{stan.hit_points}"
stan.heal(2)
puts "Current hit points: #{stan.hit_points}"
stan.attack("goblin")
puts "#{stan.name} attacks #{stan.enemy} with #{stan.weapon}!"


