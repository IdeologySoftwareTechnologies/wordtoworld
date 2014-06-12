class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :country
      t.text :message
      t.integer :category

      t.timestamps
    end
  end
end