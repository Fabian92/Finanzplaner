class CreateFinanzens < ActiveRecord::Migration
  def change
    create_table :finanzens do |t|
      t.date :datum

      t.timestamps
    end
  end
end
