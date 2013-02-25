class Finanz < ActiveRecord::Base
  attr_accessible :Datum, :Title, :Wert, :Zahlungstyp
  validates :Title, :Datum, :Zahlungstyp, :Wert, presence: true
  belongs_to :finanzkopf
end
