class Fianzen < ActiveRecord::Base
  attr_accessible :Datum
  has_many : finanzpositions
end
