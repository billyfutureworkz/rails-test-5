class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.integer :year_of_experience
      t.references :school, index: true, foreign_key: true
      t.string :type

      t.timestamps null: false
    end
  end
end
