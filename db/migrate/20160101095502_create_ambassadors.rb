class CreateAmbassadors < ActiveRecord::Migration
  def change
    create_table :ambassadors do |t|
      t.string :name
      t.string :college
      t.string :course
      t.string :year
      t.string :email
      t.string :number

      t.timestamps null: false
    end
  end
end
