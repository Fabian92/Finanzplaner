class FinanzpositionsNrHinzufuegen < ActiveRecord::Migration
def self.up
  	add_column :finanzs, :FinanzenNr, :integer
  end
 
end
