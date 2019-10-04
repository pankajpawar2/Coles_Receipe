json.extract! receipe, :id, :receipe_name, :image_url, :prep_time_minutes, :cooking_time_minutes, :difficulty_level, :servings, :ingredients, :how_to_cook, :collection_id, :created_at, :updated_at
json.url receipe_url(receipe, format: :json)
