json.extract! board_in_project, :id, :board_id, :project_id, :created_at, :updated_at
json.url board_in_project_url(board_in_project, format: :json)
