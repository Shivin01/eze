class CreateInventors < ActiveRecord::Migration
  def change
    create_table :inventors do |t|
      t.string :name
      t.string :organisation
      t.string :number
      t.string :email
      t.text :intro

      t.timestamps null: false
    end
  end
end
