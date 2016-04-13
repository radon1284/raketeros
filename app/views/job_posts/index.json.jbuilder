json.array!(@job_posts) do |job_post|
  json.extract! job_post, :id, :company_name, :job_title, :salary, :location, :job_description, :job_benefits, :contact_email, :website, :phone, :user_id
  json.url job_post_url(job_post, format: :json)
end
