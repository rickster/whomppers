class Units::LevelBaseUnitStat < ActiveRecord::Base
  belongs_to :level
  has_many :city_unit_stats, :class_name=>"Units::LevelCityUnitStat"
  has_many :defensive_unit_stats, :class_name=>"Units::LevelCityUnitStat"
  has_many :offensive_unit_stats, :class_name=>"Units::LevelCityUnitStat"
end
