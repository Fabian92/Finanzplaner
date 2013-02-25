class Finanzkopf < ActiveRecord::Base
  attr_accessible :datum
  has_many :finanzs
end
