json.array!(@certifications) do |certification|
  json.extract! certification, :id, :profile_id, :certification_name, :certification_authority, :certification_url, :certification_image
  json.url certification_url(certification, format: :json)
end
