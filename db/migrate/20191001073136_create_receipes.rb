class CreateReceipes < ActiveRecord::Migration[5.2]
  def change
    create_table :receipes do |t|
      t.string :receipe_name
      t.text :image_url
      t.integer :prep_time_minutes
      t.integer :cooking_time_minutes
      t.string :difficulty_level
      t.integer :servings
      t.text :ingredients
      t.text :how_to_cook
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
