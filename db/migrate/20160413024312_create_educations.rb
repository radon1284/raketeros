class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school_name
      t.string :course
      t.string :field_of_study
      t.text :year_graduated
      t.references :profile, index: true

      t.timestamps
    end
  end
end
