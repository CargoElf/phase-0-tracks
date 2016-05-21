class Warrior

  def initialize (hit_point, strength, weapon)
    puts "A new warrior enters the world!"
    @hit_point = hit_point
    @strength = strength
    @weapon = weapon
  end

  def take_damage(dmg_amount)
    @hit_point = hit_point - dmg_amount
  end

  def attack(enemy)
    @attack = enemy
  end

  def heal(healing)
    hit_point = hit_point + healing
  end

end