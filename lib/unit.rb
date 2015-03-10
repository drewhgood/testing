class Unit
  attr_reader :attack_points, :health_points, :attack_power

  def initialize(health_points, attack_points)
    @health_points = health_points
    @attack_points = attack_points
    @attack_power = @attack_points
  end

  def damage(amount)
    @health_points -= amount
  end

  def attack!(enemy)
    enemy.damage(attack_points)
  end
end