class FinanzkopfNrHinzufuegen < ActiveRecord::Migration
  def self.up
  	add_column :finanzs, :finanzkopfnr, :integer
  end
  def self.down
  	remove_column :finanzs, :datum
  end
end
