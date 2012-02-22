class Unit < ActiveRecord::Base
  has_many :levels, :class_name=>"Units::Level"
  belongs_to :faction
  
  def self.subclasses
    [Units::CityUnit, Units::DefensiveUnit, Units::OffensiveUnit] 
  end 
end