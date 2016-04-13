class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :work_position
      t.string :company_name
      t.datetime :date_started
      t.datetime :date_ended
      t.float :time_in_service
      t.references :profile, index: true
      t.text :company_description
      t.string :company_image

      t.timestamps
    end
  end
end
