class CreateZahlungsarts < ActiveRecord::Migration
  def change
    create_table :zahlungsarts do |t|
      t.string :Art

      t.timestamps
    end
  end
end
