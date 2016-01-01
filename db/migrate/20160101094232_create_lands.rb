class CreateLands < ActiveRecord::Migration
  def change
    create_table :lands do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :subject
      t.text :message

      t.timestamps null: false
    end
  end
end
