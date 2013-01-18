class UserFinanz < ActiveRecord::Base
  belongs_to :user
  belongs_to :finanz
  # attr_accessible :title, :body
end
