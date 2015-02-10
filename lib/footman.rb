
class Footman < Unit
   attr_reader :health_points, :attack_power
  
  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  health_points = 60
  attack_power = 10
 

  super(health_points,attack_power)
end



def damage(amount)

  @health_points -= amount

end


def attack!(target)

  target.damage(attack_power)

end



end
