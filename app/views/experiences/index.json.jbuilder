json.array!(@experiences) do |experience|
  json.extract! experience, :id, :work_position, :company_name, :date_started, :date_ended, :time_in_service, :profile_id, :company_description, :company_image
  json.url experience_url(experience, format: :json)
end
