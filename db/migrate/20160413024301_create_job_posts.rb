class CreateJobPosts < ActiveRecord::Migration
  def change
    create_table :job_posts do |t|
      t.string :company_name
      t.string :job_title
      t.string :salary
      t.string :location
      t.text :job_description
      t.text :job_benefits
      t.string :contact_email
      t.string :website
      t.string :phone
      t.references :user, index: true

      t.timestamps
    end
  end
end
