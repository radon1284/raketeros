json.array!(@job_categories) do |job_category|
  json.extract! job_category, :id, :category
  json.url job_category_url(job_category, format: :json)
end
