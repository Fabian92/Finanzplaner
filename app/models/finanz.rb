class Finanz < ActiveRecord::Base
  attr_accessible :Datum, :Title, :Wert, :Zahlungstyp
  validates :Title, :Datum, :Zahlungstyp, :Wert, presence: true

	validates :Wert,
          :numericality => true

    has_many :user_finanzs
    has_many :users, through: :user_finanzs
end