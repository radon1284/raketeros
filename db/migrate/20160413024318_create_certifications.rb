class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.references :profile, index: true
      t.string :certification_name
      t.string :certification_authority
      t.string :certification_url
      t.string :certification_image

      t.timestamps
    end
  end
end
