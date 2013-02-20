class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  belongs_to :user
  has_many :user_finanzs
  has_many :finanz , through: :user_finanzs
 
  has_many :assets

  attr_accessible :assets_attributes

  accepts_nested_attributes_for :assets, :allow_destroy => true

end
