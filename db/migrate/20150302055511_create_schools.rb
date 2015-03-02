class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :abbreviation
      t.string :motto
      t.string :principal
      t.string :email
      t.string :phones
      t.integer :school_type_id
      t.integer :province_id
      t.integer :district_id
      t.integer :township_id
      t.string :neighbourhood
      t.string :street
      t.string :building
      t.boolean :active

      t.timestamps null: false
    end
  end
end
