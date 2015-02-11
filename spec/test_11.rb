 require_relative 'spec_helper'

# Units that can fight, such as the Footman, have both health points to indicate their health and attack power to indicate how much damage they deal to other units
# As such, they must start off with a certain amount of each

# describe Footman do

#   before :each do
#     @footman = Footman.new
#   end

#   it "has and knows its HP (health points)" do
#     expect(@footman.health_points).to eq(60)
#   end

#   it "has and knows its AP (attack power)" do
#     expect(@footman.attack_power).to eq(10)
#   end

# end

describe Barracks do

  before :each do 
    @barracks = Barracks.new
  end

  it "has 500 HP when it is created" do
    expect(@barracks.health_points).to eq(500)
  end

  it "is only dealt half AP from Footman" do
    @footman = Footman.new
    @footman.attack!(@barracks)
    expect(@barracks.health_points).to eq(495)
  end 
  
end

describe Unit do

  it "is dead if it has no HP" do
     @unit = Unit.new(0,0)
     expect(@unit.dead?).to be_truthy
  end

  it "is dead if attacked and HP goes to 0" do
    @unit = Unit.new(4,0)
    @enemy = Footman.new
    @enemy.attack!(@unit)
  end

end






