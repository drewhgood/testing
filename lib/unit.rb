class Unit

  attr_reader :health_points, :attack_power
  def initialize(health_points, attack_power)
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  @health_points = health_points
  @attack_power = attack_power


  end


  def attack!(target)
    unless dead? || target.dead?
      target.damage(attack_power)
    end

  end


  def damage(amount)
    @health_points -= amount
  end


  def dead?
    health_points <= 0 
  end


end
