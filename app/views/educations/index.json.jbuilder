json.array!(@educations) do |education|
  json.extract! education, :id, :school_name, :course, :field_of_study, :year_graduated, :profile_id
  json.url education_url(education, format: :json)
end
