class Finanzposition < ActiveRecord::Base
  attr_accessible :Art, :Beschreibung, :FinanzenNr, :Wert
  belongs_to :finanzen
  belongs_to :zahlungsart
end
