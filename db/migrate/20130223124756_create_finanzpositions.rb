class CreateFinanzpositions < ActiveRecord::Migration
  def change
    create_table :finanzpositions do |t|
      t.integer :FinanzenNr
      t.string :Art
      t.string :Beschreibung
      t.float :Wert

      t.timestamps
    end
  end
end
