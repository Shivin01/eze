class CreateInterns < ActiveRecord::Migration
  def change
    create_table :interns do |t|
      t.string :name
      t.string :college
      t.string :course
      t.string :year
      t.string :email
      t.string :number
      t.string :field

      t.timestamps null: false
    end
  end
end
