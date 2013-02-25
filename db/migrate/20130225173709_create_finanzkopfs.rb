class CreateFinanzkopfs < ActiveRecord::Migration
  def change
    create_table :finanzkopfs do |t|
      t.date :datum

      t.timestamps
    end
  end
end
