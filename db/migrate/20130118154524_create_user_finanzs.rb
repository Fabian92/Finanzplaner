class CreateUserFinanzs < ActiveRecord::Migration
  def change
    create_table :user_finanzs do |t|
      t.references :user
      t.references :finanz

      t.timestamps
    end
    add_index :user_finanzs, :user_id
    add_index :user_finanzs, :finanz_id
  end
end
