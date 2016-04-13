json.array!(@job_types) do |job_type|
  json.extract! job_type, :id, :type_of_jobs, :job_post_id
  json.url job_type_url(job_type, format: :json)
end
