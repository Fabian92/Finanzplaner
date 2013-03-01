class Finanzen < ActiveRecord::Base
  attr_accessible :datum
  has_many :finanzposition
  has_many :user_finanzs 
    has_many :users, through: :user_finanzs
end
