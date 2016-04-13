class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.integer :skill_level
      t.references :profile, index: true

      t.timestamps
    end
  end
end
