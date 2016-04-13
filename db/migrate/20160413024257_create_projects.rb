class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :profile, index: true
      t.string :project_name
      t.string :project_image
      t.text :project_description

      t.timestamps
    end
  end
end
