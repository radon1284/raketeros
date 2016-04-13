json.array!(@projects) do |project|
  json.extract! project, :id, :profile_id, :project_name, :project_image, :project_description
  json.url project_url(project, format: :json)
end
