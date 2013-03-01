class UserFinanz < ActiveRecord::Base
  belongs_to :user
  belongs_to :finanzens
  # attr_accessible :title, :body
end
