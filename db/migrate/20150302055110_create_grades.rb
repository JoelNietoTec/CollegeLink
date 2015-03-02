class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.references :grade_level, index: true
      t.string :name
      t.string :alternative_name

      t.timestamps null: false
    end
    add_foreign_key :grades, :grade_levels
  end
end
