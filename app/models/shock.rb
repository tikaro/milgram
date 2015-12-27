class Shock < ActiveRecord::Base
  validates_inclusion_of :strength, :in => 1..255
end
