class Faction < ActiveRecord::Base
  has_many :buildings, :class_name=>"Building"
  has_many :units, :class_name=>"Unit"
end
