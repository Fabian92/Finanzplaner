class CreateFianzens < ActiveRecord::Migration
  def change
    create_table :fianzens do |t|
      t.date :Datum

      t.timestamps
    end
  end
end
