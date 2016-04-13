class CreateJobTypes < ActiveRecord::Migration
  def change
    create_table :job_types do |t|
      t.string :type_of_jobs
      t.references :job_post, index: true

      t.timestamps
    end
  end
end
