class Buildings::Level < ActiveRecord::Base
  belongs_to :building
  has_many :defensive_stats, :class_name=>"LevelDefensiveStats"
  has_many :offensive_stats, :class_name=>"LevelOffensiveStats"
end
