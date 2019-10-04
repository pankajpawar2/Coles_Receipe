class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :category_name
      t.text :image_url

      t.timestamps
    end
  end
end
