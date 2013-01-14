class CreateFinanzs < ActiveRecord::Migration
  def change
    create_table :finanzs do |t|
      t.string :Title
      t.date :Datum
      t.string :Zahlungstyp
      t.string :Wert

      t.timestamps
    end
  end
end
