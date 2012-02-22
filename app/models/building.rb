class Building < ActiveRecord::Base
  has_many :levels, :class_name=>"Buildings::Levels"
  belongs_to :faction

  def self.subclasses
    [Buildings::CityBuilding, Buildings::DefensiveBuilding] 
  end 
end
