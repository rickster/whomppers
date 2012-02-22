class Faction < ActiveRecord::Base
  has_many :buildings, :class_name=>"Building"
end
