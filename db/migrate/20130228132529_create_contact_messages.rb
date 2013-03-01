class CreateContactMessages < ActiveRecord::Migration
  def self.up
   drop_table :contact_messages
    create_table :contact_messages do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
